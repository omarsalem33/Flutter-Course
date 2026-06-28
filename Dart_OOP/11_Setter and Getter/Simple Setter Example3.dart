class User {
  String _email = "";

  set email(String value) {
    if (value.contains("@") && value.contains(".")) {
      _email = value;
    } else {
      print("Invalid email format!");
    }
  }

  String get email => _email;
}