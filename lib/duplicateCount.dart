int duplicateCount(String text) {

  var array = text.toLowerCase().split('');

  print(array);

  Map<String, int> map = Map.fromIterable(array, key: (item) => item, value: (item) => 0);

	map.forEach((String elementMap, int key) {
		array.forEach((String elementArray) {
			if (elementArray.toLowerCase() == elementMap.toLowerCase()) map[elementMap]++;
		});
  });

	var occurs = 0;

	map.forEach((key, value) {
		if (value > 1) occurs++;
	});

	print(map.length);
	print(array.length);

  return occurs;
}
