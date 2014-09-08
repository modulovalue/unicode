import "package:unicode/unicode.dart" as unicode;
import "package:unittest/unittest.dart";

void main() {
  testCharacterSets();
  testIsXXX();
}

void testCharacterSets() {
  //
  var subject = "uppercaseLetterCharacters";
  var character = 65; // A
  var result = unicode.uppercaseLetterCharacters[character];
  expect(result, true, reason: subject);
}

void testIsXXX() {
  //
  var subject = "isUppercaseLetter";
  var character = 65; // A
  var result = unicode.isUppercaseLetter(character);
  expect(result, true, reason: subject);
  //
  subject = "isUppercaseLetter";
  character = unicode.toRune("Я"); // Я
  result = unicode.isUppercaseLetter(character);
  expect(result, true, reason: subject);
  //
  subject = "isLowercaseLetter";
  character = 97; // a
  result = unicode.isLowercaseLetter(character);
  expect(result, true, reason: subject);
  //
  subject = "isLowercaseLetter";
  character = unicode.toRune("я"); // я
  result = unicode.isLowercaseLetter(character);
  expect(result, true, reason: subject);
}
