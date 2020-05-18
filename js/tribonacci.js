function tribonacci(signature, n) {

	switch (n) {
		case 0:
			return [];
		case 1:
			return [signature[0]];
		case 2:
			return [signature[0], signature[1]];
		case 3:
			return [signature[0], signature[1], signature[2]];
	}

	let tribonacci = [...signature];

	for (let i = 0; i < n - signature.length; i++) {
		tribonacci = [...tribonacci, (tribonacci[tribonacci.length - 3] + tribonacci[tribonacci.length - 2] + tribonacci[tribonacci.length - 1])];
	}
	console.log(tribonacci);
	return tribonacci;
}

tribonacci([1,1,1],10);
tribonacci([0,0,1],10);
tribonacci([0,1,1],10);