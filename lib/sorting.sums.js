export default class SortingSums {
  radixSort(arr) {
    const maxNum = Math.max(...arr) * 10;
    let divisor = 10;

    while (divisor < maxNum) {
      let buckets = [...Array(10)].map(() => []);

      for (let num of arr) {
        buckets[Math.floor((num % divisor) / (divisor / 10))].push(num);
      }

      arr = [].concat.apply([], buckets);
      divisor *= 10;
    }
    return arr;
  }

  orderWeight(strng) {
    let dictionary = {};
    let weightsArray = strng.split(" ");
    weightsArray.forEach((weight) => {
      let digits = weight.split("");
      let sum = 0;
      digits.forEach((digit) => {
        sum += parseInt(digit);
      });
      if (dictionary[sum]) {
        dictionary[sum].push(weight);
      } else {
        dictionary[sum] = [weight];
      }
    });
    let summedItems = Object.keys(dictionary);
    let integerItems = [];
    for (var i = 0; i < summedItems.length; i++) {
      integerItems[i] = parseInt(summedItems[i]);
    }
    let sortedSums = this.radixSort(integerItems);
    let sortedWeights = [];
    for (var j = 0; j < sortedSums.length; j++) {
      sortedWeights[j] = dictionary[sortedSums[j]].sort().join(" ");
    }
    return sortedWeights.join(" ");
  }
}
