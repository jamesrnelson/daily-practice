import { expect } from "chai";
import MoveZeros from "../lib/move.zeros";

describe("Move Zeros", () => {
  it("should move zeros to the end of the array", () => {
    let mover = new MoveZeros();
    let input = [1, 2, 0, 1, 0, 1, 0, 3, 0, 1];
    let expected = [1, 2, 1, 1, 3, 1, 0, 0, 0, 0];
    let actual = mover.moveZeros(input);
    expect(actual).to.eql(expected);
  });

  it("should move zeros to the end of the array", () => {
    let mover = new MoveZeros();
    let input = ["a", 0, "b", 0, null, 0, "c", 0, 0, 0, 0, 0, 0, 0, "d",1,false,1,3,[],1,9,{}, 9];
    let expected = ["a","b",null,"c","d",1,false,1,3,[],1,9,{},9,0,0,0,0,0,0,0,0,0,0];
    let actual = mover.moveZeros(input);
    expect(actual).to.eql(expected);
  });
});
