String.prototype.toJadenCase = function() {
  let originalString = this.toString();
  let stringArray = originalString.split(' ');
  let capitalizedArray = [];
  stringArray.forEach((word) => {
    capitalizedArray.push(word.charAt(0).toUpperCase() + word.substr(1));
  });
  return capitalizedArray.join(' ');
};

module.exports = String.prototype.toJadenCase();
