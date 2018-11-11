export default class WordOrdering {
  order(words) {
    let orderedArray = [];
    let wordArray = words.split(" ");
    wordArray.forEach((word) => {
      let letters = word.split("");
      letters.forEach((letter) => {
        let num = parseInt(letter);
        if (num > 0) {
          orderedArray[num - 1] = word;
        }
      });
    });
    return orderedArray.join(" ");
  }
}
