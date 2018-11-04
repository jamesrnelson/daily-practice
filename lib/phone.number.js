export default class PhoneNumber {
  createPhoneNumber(numbers) {
    let theNumber = "(";
    for (var i = 0; i < 10; i++) {
      if (i == 3) {
        theNumber = theNumber + ") " + numbers[i].toString();
      } else if (i == 6) {
        theNumber = theNumber + "-" + numbers[i].toString();
      } else {
        theNumber = theNumber + numbers[i].toString();
      }
    }
    return theNumber;
  }
}
