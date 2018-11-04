import { expect } from "chai";
import PhoneNumber from "../lib/phone.number";

describe("Phone Number", () => {
  it("should take an array and turn it into a phone number", () => {
    let number = new PhoneNumber();
    let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
    let expected = "(123) 456-7890";
    let actual = number.createPhoneNumber(array);
    expect(actual).to.eql(expected);
  });
});
