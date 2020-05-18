int duplicateCount(String text) {

  List array = text.toLowerCase().split('');
  List answer = <String>[];

  print(array);

  var maxIndex = array.length;

	for (var i = 0; i < maxIndex; i++) {
		var letter = array.removeLast();
		if (array.contains(letter)) {
			if (!answer.contains(letter)) answer.add(letter);
		}
	}

  return answer.length;
}

//  test('add', () {
//    expect(duplicateCount(''), equals(0));
//    expect(duplicateCount('abcde'), equals(0));
//    expect(duplicateCount('aabbcde'), equals(2));
//    expect(duplicateCount('aabBcde'), equals(2));
//    expect(duplicateCount('Indivisibility'), equals(1));
//  });