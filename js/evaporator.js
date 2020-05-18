function evaporator(content, evaporation, threshold) {
	evaporation /= 100;
	threshold /= 100;
	let days = 0;
	const thresholdContent = content * threshold;

	for (days; content > thresholdContent; days++) {
		content = content - content * evaporation;
	}

	return days;
}

console.log(evaporator(10,10,10));