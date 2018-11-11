import { expect } from "chai";
import WordOrdering from "../lib/word.ordering";

describe("Word Ordering", () => {
  it("should be able to sort 4 words that have numerals within them", () => {
    let order = new WordOrdering();
    let scrambled = "is2 Thi1s T4est 3a";
    let expected = "Thi1s is2 3a T4est";
    let actual = order.order(scrambled);
    expect(actual).to.eql(expected);
  });

  it("should be able to sort 6 words that have numerals within them", () => {
    let order = new WordOrdering();
    let scrambled = "4of Fo1r pe6ople g3ood th5e the2";
    let expected = "Fo1r the2 g3ood 4of th5e pe6ople";
    let actual = order.order(scrambled);
    expect(actual).to.eql(expected);
  });

  it("should be able to return empty string", () => {
    let order = new WordOrdering();
    let scrambled = "";
    let expected = "";
    let actual = order.order(scrambled);
    expect(actual).to.eql(expected);
  });
});
