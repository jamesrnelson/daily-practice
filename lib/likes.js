export default class Likes {
  likes(people) {
    let message = "";
    let repetitions = people.length;
    if (people.length == 0) {
      message = message + "no one likes this";
    } else if (people.length == 1) {
      message = message + people[0] + " likes this";
    } else if (people.length == 2) {
      message = message + people[0] + " and " + people[1] + " like this";
    } else {
      let peopleList = "";
      for (var i = 0; i < 3; i++) {
        if (i == 0) {
          peopleList = peopleList + people[i] + ", ";
        } else if (i == 1) {
          peopleList = peopleList + people[i] + " and ";
        } else if (i == 2 && repetitions > 3) {
          let num = (repetitions - i).toString();
          peopleList = peopleList + num + " others ";
        } else {
          peopleList = peopleList + people[i] + " ";
        }
      }
      message = message + peopleList + "like this";
    }
    return message;
  }
}
