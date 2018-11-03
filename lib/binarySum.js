export default class BinarySum {
  addAndConvertToBinary(num1, num2) {
    let num = num1 + num2;
    let powerToCheck = Math.floor(Math.log2(num));
    let times = powerToCheck + 1;
    let stringified = "";
    for (var i=0; i<times; i++) {
      if (Math.pow(2, powerToCheck) < num) {
        num = num - Math.pow(2, powerToCheck);
        stringified = stringified + "1";
        powerToCheck--;
      } else {
        stringified = stringified + "0";
        powerToCheck--;
      }
    }
    return parseInt(stringified);
  }
}
