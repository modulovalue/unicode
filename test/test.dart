import "package:unicode/unicode.dart" as unicode;
import "package:unittest/unittest.dart";

void main() {
  testCharacterSets();
  testIsXXX();
}

void testCharacterSets() {
  //
  var subject = "upperCaseLetterCharacters";
  var character = 65; // A
  var result = unicode.upperCaseLetterCharacters[character];
  expect(result, true, reason: subject);
}

void testIsXXX() {
  //
  var subject = "isUpperCaseLetter";
  var character = 65; // A
  var result = unicode.isUpperCaseLetter(character);
  expect(result, true, reason: subject);
  //
  subject = "isUpperCaseLetter";
  character = unicode.toRune("Я"); // Я
  result = unicode.isUpperCaseLetter(character);
  expect(result, true, reason: subject);
  //
  subject = "isLowerCaseLetter";
  character = 97; // a
  result = unicode.isLowerCaseLetter(character);
  expect(result, true, reason: subject);
  //
  subject = "isLowerCaseLetter";
  character = unicode.toRune("я"); // я
  result = unicode.isLowerCaseLetter(character);
  expect(result, true, reason: subject);
}
