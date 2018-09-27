const snail = (arrayMatrix, resultingArray = []) => {
  if (arrayMatrix.length > 1) {
    let amountDown = arrayMatrix.length - 1;
    let arrayPicker = 0;
    let positionPicker = -1;
    let lastArray = arrayMatrix.pop()
    resultingArray.push(arrayMatrix.shift());
    for (i = 0; i < amountDown - 1; i++) {
      resultingArray.push(arrayMatrix[arrayPicker].pop());
      arrayPicker++;
    }
    while (lastArray.length > 0) {
      resultingArray.push(lastArray.pop());
    }

    for (j = 0; j < amountDown - 1; j++) {
      arrayPicker--;
      resultingArray.push(arrayMatrix[arrayPicker].shift());
    }
    snail(arrayMatrix, resultingArray)

  } else if (arrayMatrix.length == 1) {
    resultingArray.push(arrayMatrix);
    finalArray = [].concat(...resultingArray);
    reallyTheFinal = [].concat(...finalArray);

    console.log(reallyTheFinal);

  } else {
    finalArray = [].concat(...resultingArray);

    console.log(finalArray);
  }
};

let arrayMatrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];

let newArrayMatrix = [[1, 2, 3, 4], [8, 7, 6, 5]]

let squatArray = [[1, 2, 3, 4, 5], [12, 13, 14, 15, 6], [11, 10, 9, 8, 7]]
