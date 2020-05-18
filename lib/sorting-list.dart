final List<int> array = [10, 5, 2, 14, 11, 12, 3, 4, 8, 18, 33, 7, 50, 60, 16];

List<int> arrayEven = array.where((element) => element.isEven).toList();
List<int> arraySorted = [];

void answer() {

  arrayEven.sort((a, b) => b - a);

  array.forEach((element) {
    if (element % 2 == 0) {
      arraySorted.add(arrayEven.removeLast());
    } else {
      arraySorted.add(element);
    }
  });

	print(array);
  print(arraySorted);
}
