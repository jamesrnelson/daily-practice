import { expect } from "chai";
import BinarySum from "../lib/binarySum";

describe("BinarySum", () => {
  describe("functions", () => {
    const binary = new BinarySum();

    it("should work as expected", () => {
      let num1 = 5;
      let num2 = 3;
      let actual = binary.addAndConvertToBinary(num1, num2);
      let expected = 1000;
      expect(actual).to.eql(expected);
    });
  });
});
