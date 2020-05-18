function duplicateCount(text: string): number {

	let array: string[] = text.toLowerCase().split('');
	let answer: string[] = [];

	console.log(array);

	for (let i = 0; i < array.length; i++) {
		let letter = array.shift();
		console.log(letter);
		if (array.includes(letter)) {
			if (!answer.includes(letter)) answer.push(letter);
		}
	}

	console.log(answer.length);
	return answer.length;
}

duplicateCount('aabBcde');