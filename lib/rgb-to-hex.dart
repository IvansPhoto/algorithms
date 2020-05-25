import 'package:test/test.dart';

final decToHex = <int, String>{
  0: '0',
  1: '1',
  2: '2',
  3: '3',
  4: '4',
  5: '5',
  6: '6',
  7: '7',
  8: '8',
  9: '9',
  10: 'A',
  11: 'B',
  12: 'C',
  13: 'D',
  14: 'E',
  15: 'F',
};

int normalize(int value) {
  return value > 255 ? value = 255 : value < 0 ? value = 0 : value;
} //normalisation the value to avoid unappropriated values

String rgb(int r, int g, int b) {
  var rgb = [normalize(r), normalize(g), normalize(b)]; //create new array with normal values

  var hex = '';

  rgb.forEach((element) {
  	hex = hex + decToHex[(element / 16).floor()] + decToHex[(((element / 16) - (element / 16).floor()) * 16).round()];
  });

  return hex;
}

void main() {
	test('Basic tests', () {
		expect(rgb(255, 255, 255), equals('FFFFFF'));
		expect(rgb(255, 255, 300), equals('FFFFFF'));
		expect(rgb(0, 0, 0), equals('000000'));
		expect(rgb(148, 0, 211), equals('9400D3'));
		expect(rgb(148, -20, 211), equals('9400D3'));
		expect(rgb(144, 195, 212), equals('90C3D4'));
		expect(rgb(212, 53, 12), equals('D4350C'));
	});
}
