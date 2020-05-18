const array = [1, 123, 22, 4, 51, 3, 5, 60, 8, 53, 2, 10, 11, 15, 9, 16];

const arrayEven = array.filter(value => !(value % 2)).sort((a, b) => b - a);
const arraySort = [];

array.forEach(value => {
	if (value % 2) {
		arraySort.push(value);
	} else {
		arraySort.push(arrayEven.pop());
	}
});

console.log(arraySort);