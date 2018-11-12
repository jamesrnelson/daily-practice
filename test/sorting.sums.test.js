import { expect } from "chai";
import SortingSums from "../lib/sorting.sums";

describe("Sorting Sums", () => {
  it("should sort numbers by the sum of their digits", () => {
    let weights = new SortingSums();
    let input = "103 123 4444 99 2000";
    let expected = "2000 103 123 4444 99";
    let actual = weights.orderWeight(input);
    expect(actual).to.eql(expected);
  });

  it("should sort numbers by the sum of their digits when there are duplicate sums", () => {
    let weights = new SortingSums();
    let input = "2000 10003 1234000 44444444 9999 11 11 22 123";
    let expected = "11 11 2000 10003 22 123 1234000 44444444 9999";
    let actual = weights.orderWeight(input);
    expect(actual).to.eql(expected);
  });

  it("should use radix sort for an array", () => {
    let weights = new SortingSums();
    let input = [103, 123, 4444, 99, 2000];
    let expected = [99, 103, 123, 2000, 4444];
    let actual = weights.radixSort(input);
    expect(actual).to.eql(expected);
  });
});
