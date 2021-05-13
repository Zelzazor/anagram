import 'package:anagram/anagram.dart';
import 'package:test/test.dart';

void main() {
  test('Comparar hola con haloa', () {
    expect(isAnagram(a: 'hola', b: 'haloa'), false);
  });

  test('Comparar hola con helo', () {
    expect(isAnagram(a: 'hola', b: 'helo'), false);
  });

  test('Comparar rana y nara', () {
    expect(isAnagram(a: 'rana', b: 'nara'), true);
  });

  test('Comparar bueno y obnue', () {
    expect(isAnagram(a: 'moro', b: 'romo'), true);
  });

  test('Comparar moro y romo', () {
    expect(isAnagram(a: 'moro', b: 'romo'), true);
  });

  test('Argumento a null', () {
    expect(() => isAnagram(a: null, b: 'romo'), throwsArgumentError);
  });

  test('Argumento b null', () {
    expect(() => isAnagram(a: 'moro', b: null), throwsArgumentError);
  });

  test('Argumentos null', () {
    expect(() => isAnagram(a: null, b: null), throwsArgumentError);
  });
}
