import { expect } from "chai";
import toJadenCase from "../lib/jadencase";

describe("Jadencase", () => {
  it("should capitalize the first letter of each word", () => {
    let string = "How can mirrors be real if our eyes aren't real";
    let expected = "How Can Mirrors Be Real If Our Eyes Aren't Real";
    let actual = string.toJadenCase();
    expect(actual).to.eql(expected);
  });
});
