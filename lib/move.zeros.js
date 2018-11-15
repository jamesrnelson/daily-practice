export default class MoveZeros {
  moveZeros(arr) {
    var output = [];
    var counter = 0;
    for (let i = 0; i < arr.length; i++) {
      let num = arr[i];
      if (num === 0) {
        counter++;
      } else {
        output.push(num);
      }
    }
    for (let i = 0; i < counter; i++) {
      output.push(0);
    }
    return output;
  }
}
