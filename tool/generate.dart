library unicode.tool.generator;

import "dart:async";
import "dart:io";
import "package:http/http.dart" as http;
import "package:lists/lists.dart";
import "package:strings/strings.dart";
import "package:template_block/template_block.dart";

void main() {
  var resources = <String, Resource>{};
  resources[Generator.UNICODE_DATA] = new Resource(filename: "UnicodeData2.txt", url: "http://www.unicode.org/Public/UNIDATA/UnicodeData.txt");
  Future.wait(resources.values.map((r) => r.load())).then((_) {
    var generator = new Generator();
    var data = <String, List<String>>{};
    resources.forEach((k, v) => data[k] = v.data);
    var result = generator.generate(data);
    var script = "../lib/unicode.dart";
    var file = new File(script);
    file.writeAsStringSync(result.join("\n"));
  });
}

class Categories {
  static const Categories CC = const Categories("Cc", "CONTROL", 1);

  static const Categories CF = const Categories("Cf", "FORMAT", 2);

  static const Categories CO = const Categories("Co", "PRIVATE_USE", 3);

  static const Categories CS = const Categories("Cs", "SURROGATE", 4);

  static const Categories LL = const Categories("Ll", "LOWER_CASE_LETTER", 5);

  static const Categories LM = const Categories("Lm", "LETTER_MODIFIER", 6);

  static const Categories LO = const Categories("Lo", "OTHER_LETTER", 7);

  static const Categories LT = const Categories("Lt", "TITLECASE_LETTER", 8);

  static const Categories LU = const Categories("Lu", "UPPER_CASE_LETTER", 9);

  static const Categories MC = const Categories("Mc", "COMBINING_MARK", 10);

  static const Categories ME = const Categories("Me", "ENCODING_MARK", 11);

  static const Categories MN = const Categories("Mn", "NONSPACING_MARK", 12);

  static const Categories ND = const Categories("Nd", "DECIMAL_NUMBER", 13);

  static const Categories NL = const Categories("Nl", "LETTER_NUMBER", 14);

  static const Categories NO = const Categories("No", "OTHER_NUMBER", 15);

  static const Categories PC = const Categories("Pc", "PUNCTUATION_CONNECTOR", 16);

  static const Categories PD = const Categories("Pd", "DASH_PUNCTUATION", 17);

  static const Categories PE = const Categories("Pe", "CLOSE_PUNCTUATION", 18);

  static const Categories PF = const Categories("Pf", "FINAL_PUNCTUATION", 19);

  static const Categories PI = const Categories("Pi", "INITIAL_PUNCTUATION", 20);

  static const Categories PO = const Categories("Po", "OTHER_PUNCTUATION", 21);

  static const Categories PS = const Categories("Ps", "OPEN_PUNCTUATION", 22);

  static const Categories SC = const Categories("Sc", "CURRENCY_SYMBOL", 23);

  static const Categories SK = const Categories("Sk", "SYMBOL_MODIFIER", 24);

  static const Categories SM = const Categories("Sm", "MATH_SYMBOL", 25);

  static const Categories SO = const Categories("So", "OTHER_SYMBOL", 26);

  static const Categories ZL = const Categories("Zl", "LINE_SEPARATOR", 27);

  static const Categories ZP = const Categories("Zp", "PARAGRAPH_SEPARATOR", 28);

  static const Categories ZS = const Categories("Zs", "SPACE_SEPARATOR", 29);
  final int id;

  final String abbr;

  final String name;

  const Categories(this.abbr, this.name, this.id);

  static final Map<String, Categories> values = <String, Categories>{
    CC.abbr: CC,

    CF.abbr: CF,

    CO.abbr: CO,

    CS.abbr: CS,

    LL.abbr: LL,

    LM.abbr: LM,

    LO.abbr: LO,

    LT.abbr: LT,

    LU.abbr: LU,

    MC.abbr: MC,

    ME.abbr: ME,

    MN.abbr: MN,

    ND.abbr: ND,

    NL.abbr: NL,

    NO.abbr: NO,

    PC.abbr: PC,

    PD.abbr: PD,

    PE.abbr: PE,

    PF.abbr: PF,

    PI.abbr: PI,

    PO.abbr: PO,

    PS.abbr: PS,

    SC.abbr: SC,

    SK.abbr: SK,

    SM.abbr: SM,

    SO.abbr: SO,

    ZL.abbr: ZL,

    ZP.abbr: ZP,

    ZS.abbr: ZS,
  };

  String toString() => name;
}

class Generator {
  static const int MAX_VALUE = 0x10ffff;

  static const String UNICODE_DATA = "UNICODE_DATA";

  static const String _CATEGORIES = "_categories";

  static const String _GENERATE_BOOL = "_generateBool";

  static const String _GENERATE_CATEGORY = "_generateCategory";

  static const String _GENERATE_INT = "_generateInt";

  static const String _TO_RUNE = "toRune";

  static final String _templateLibrary = '''
// This library was created by the tool.

library {{NAME}};

{{#DIRECTIVES}}
{{#CONSTANTS}}
{{#VARIABLES}}
{{#METHODS}}
''';

  static final String _templateMethodGenerateBool = '''
SparseBoolList $_GENERATE_BOOL(List<int> data) {
  var list = new SparseBoolList();
  list.length = $MAX_VALUE;
  var length = data.length;
  for (var i = 0; i < length; i += 2) {
    var start = data[i + 0];
    var end = data[i + 1];
    list.addGroup(new GroupedRangeList<bool>(start, end, true));    
  }

  list.freeze();
  return list;
}
''';

  static final String _templateMethodGenerateCategory = '''
SparseBoolList $_GENERATE_CATEGORY(int category) {
  var list = new SparseBoolList();
  list.length = $MAX_VALUE;
  for (var group in $_CATEGORIES.groups) {
    if (group.key == category) {
      list.addGroup(new GroupedRangeList<bool>(group.start, group.end, true));
    }
  }

  list.freeze();
  return list;
}
''';

  static final String _templateMethodGenerateInt = '''
SparseList<int> $_GENERATE_INT(List<int> data, bool isCompressed) {
  if (isCompressed) {
    data = GZIP.decoder.convert(data); 
  }
  var list = new SparseList<int>(defaultValue: 0);
  list.length = $MAX_VALUE;
  var length = data.length;
  var start = 0;
  var end = 0;
  for (var i = 0; i < length; i+= 3) {
    start += data[i + 0];
    end += data[i + 1];
    var key = data[i + 2];
    list.addGroup(new GroupedRangeList<int>(start, end, key));    
  }

  list.freeze();
  return list;
}
''';

  static final String _templateMethodIsCategory = '''
bool is{{NAME}}(int character) => {{CHARACTER_SET}}[character];  
''';

  static final String _templateMethodToRune = '''
int $_TO_RUNE(String string) {
  if (string == null) {
    throw new ArgumentError("string: \$string");
  }

  var length = string.length;
  if (length == 0) {
    throw new StateError("An empty string contains no elements.");
  }

  var start = string.codeUnitAt(0);
  if (length == 1) {
    return start;
  }

  if ((start & 0xFC00) == 0xD800) {
    var end = string.codeUnitAt(1);
    if ((end & 0xFC00) == 0xDC00) {
      return (0x10000 + ((start & 0x3FF) << 10) + (end & 0x3FF));
    }
  }

  return start;
}
''';

  static final String _templateCharacterSet = '''
final SparseBoolList {{NAME}} = $_GENERATE_CATEGORY({{ID}});
''';

  static final String _templateSparseListBool = '''
final SparseBoolList {{NAME}} = $_GENERATE_BOOL({{DATA}});
''';

  static final String _templateSparseListInt = '''
final SparseList<int> {{NAME}} = $_GENERATE_INT({{DATA}}, {{IS_COMRESSED}});
''';

  SparseList<int> _characters;

  Map<Categories, SparseBoolList> _categories;

  List<List<String>> _methods;

  List<List<String>> _variables;

  List<String> generate(Map<String, List<String>> data) {
    _characters = new SparseList<int>(defaultValue: 0);
    _categories = <Categories, SparseBoolList>{};
    _methods = <List<String>>[];
    _variables = <List<String>>[];
    var characters = _parseUnicodeData(data[Generator.UNICODE_DATA]);
    _build(characters);
    _generateVariables();
    _generateMethods();
    return _generateLibrary("unicode");
  }

  void _build(List<Character> characters) {
    var length = characters.length;
    for (var category in Categories.values.values) {
      var list = new SparseBoolList();
      list.length = MAX_VALUE + 1;
      _categories[category] = list;
    }

    for (var i = 0; i < length; i++) {
      var character = characters[i];
      if (character == null) {
        continue;
      }

      var category = Categories.values[character.category];
      if (category == null) {
        throw new StateError("Unknown character category: ${character.category}");
      }

      _categories[category][character.code] = true;
    }

    for (var category in _categories.keys) {
      var characters = _categories[category];
      for (var group in characters.groups) {
        var group2 = new GroupedRangeList<int>(group.start, group.end, category.id);
        _characters.addGroup(group2);
      }
    }
  }

  List<String> _generateLibrary(String name) {
    var block = new TemplateBlock(_templateLibrary);
    block.assign("NAME", name);
    block.assign("#DIRECTIVES", "import \"dart:io\";");
    block.assign("#DIRECTIVES", "import \"package:lists/lists.dart\";\n");
    block.assign("#METHODS", _methods);
    block.assign("#VARIABLES", _variables);
    return block.process();
  }

  void _generateMethodGenerateBool() {
    var block = new TemplateBlock(_templateMethodGenerateBool);
    _methods.add(block.process());
  }

  void _generateMethodGenerateCategory() {
    var block = new TemplateBlock(_templateMethodGenerateCategory);
    _methods.add(block.process());
  }

  void _generateMethodGenerateInt() {
    var block = new TemplateBlock(_templateMethodGenerateInt);
    _methods.add(block.process());
  }

  void _generateMethods() {
    _generateMethodIsCategory();
    _generateMethodToRune();
    _generateMethodGenerateBool();
    _generateMethodGenerateCategory();
    _generateMethodGenerateInt();
  }

  void _generateMethodIsCategory() {
    var blockIsCategory = new TemplateBlock(_templateMethodIsCategory);
    var categories = Categories.values;
    for (var category in categories.values) {
      var block = blockIsCategory.clone();
      var name = camelize(category.name);
      block.assign("NAME", name);
      block.assign("CHARACTER_SET", _getCharacterSetName(category));
      _methods.add(block.process());
    }
  }

  void _generateMethodToRune() {
    var block = new TemplateBlock(_templateMethodToRune);
    _methods.add(block.process());
  }

  void _generateVariableCategories() {
    var block = new TemplateBlock(_templateSparseListInt);
    var start = 0;
    var end = 0;
    var deltaStart = 0;
    var deltaEnd = 0;
    var data = <int>[];
    // Compression phase #1
    for (var group in _characters.groups) {
      deltaStart = group.start - start;
      deltaEnd = group.end - end;
      start = start + deltaStart;
      end = end + deltaEnd;
      data.add(deltaStart);
      data.add(deltaEnd);
      data.add(group.key);
    }

    // Compression phase #2
    var compressed = GZIP.encoder.convert(data);
    var uncompressed = GZIP.decoder.convert(compressed);
    var length = data.length;
    var bugInDartGzip = false;
    for (var i = 0; i < length; i++) {
      if (data[i] != uncompressed[i]) {
        bugInDartGzip = true;
        break;
      }
    }

    if (bugInDartGzip) {
      compressed = data;
    }

    block.assign("IS_COMRESSED", !bugInDartGzip);
    block.assign("DATA", "[${compressed.join(", ")}]");
    block.assign("NAME", _CATEGORIES);
    _variables.add(block.process());
  }

  void _generateVariables() {
    _generateVariableCategories();
    _generateVariableCharacterSet();
  }

  void _generateVariableCharacterSet() {
    var block = new TemplateBlock(_templateCharacterSet);
    for (var category in _categories.keys) {
      var block1 = block.clone();
      block1.assign("NAME", _getCharacterSetName(category));
      block1.assign("ID", category.id);
      _variables.add(block1.process());
    }
  }

  String _getCharacterSetName(Categories category) {
    var name = category.name;
    name = "${category.name}_Characters";
    name = camelize(name, true);
    return name;
  }

  List<Character> _parseUnicodeData(List<String> lines) {
    var characters = new List(MAX_VALUE + 1);
    for (var line in lines) {
      var parts = line.split(";");
      var index = int.parse(parts[0], radix: 16);
      var character = new Character(parts);
      characters[index] = new Character(parts);
    }

    return characters;
  }
}

class Character {
  int code;

  List<String> data;

  String category;

  int lowerCase0;

  int lowerCase1;

  int upperCase0;

  Character(this.data) {
    code = int.parse(data[0], radix: 16);
    category = data[2];
    if (!data[12].isEmpty) {
      lowerCase0 = int.parse(data[12], radix: 16);
    }

    if (!data[13].isEmpty) {
      upperCase0 = int.parse(data[13], radix: 16);
    }

    if (!data[14].isEmpty) {
      lowerCase1 = int.parse(data[14], radix: 16);
    }
  }
}

class Resource {
  List<String> data;

  String filename;

  String url;

  Resource({this.filename, this.url});

  Future<List<String>> load() {
    var file = new File(filename);
    if (file.existsSync()) {
      return file.readAsLines().then((result) {
        data = result;
        return data;
      });
    }

    return http.read(Uri.parse(url)).then((string) {
      string = string.replaceAll("\r\n", "\n");
      string = string.replaceAll("\r", "\n");
      data = string.split("\n");
      if (data.last.isEmpty) {
        data.removeLast();
      }

      return data;
    });
  }
}
