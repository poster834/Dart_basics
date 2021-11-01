import 'User.dart';

class UserManager<T extends User> {
  List<User> userList = [];

  addUser(user) {
    userList.add(user);
  }

  delUser(user) {
    userList.removeAt(userList.indexOf(user));
  }

  void mailList() {
    if (userList.length > 0) {
      userList.forEach((element) {
        if (element.name == 'admin') {
          print(element.getMailSystem(element));
        } else {
          print(element.email);
        }
      });
    } else {
      print("Коллекция пуста");
    }
  }
}
