import { expect } from "chai";
import Likes from "../lib/likes";

describe("Likes", () => {
  it("should say when no one likes something", () => {
    let likes = new Likes();
    let people = [];
    let expected = 'no one likes this';
    let actual = likes.likes(people);
    expect(actual).to.eql(expected);
  });

  it("should say when one person likes something", () => {
    let likes = new Likes();
    let people = ["Peter"];
    let expected = 'Peter likes this';
    let actual = likes.likes(people);
    expect(actual).to.eql(expected);
  });

  it("should say when two people like something", () => {
    let likes = new Likes();
    let people = ["Peter", "Paul"];
    let expected = 'Peter and Paul like this';
    let actual = likes.likes(people);
    expect(actual).to.eql(expected);
  });

  it("should say when three people like something", () => {
    let likes = new Likes();
    let people = ["Peter", "Bjorn", "John"];
    let expected = 'Peter, Bjorn and John like this';
    let actual = likes.likes(people);
    expect(actual).to.eql(expected);
  });

  it("should say when more than three people like something", () => {
    let likes = new Likes();
    let people = ["Peter", "Bjorn", "John", "Mary"];
    let expected = 'Peter, Bjorn and 2 others like this';
    let actual = likes.likes(people);
    expect(actual).to.eql(expected);
  });
});
