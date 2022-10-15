class Regex {
  static bool isEmail(String email) {
    RegExp regExp = new RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*');
    return regExp.hasMatch(email);
  }

  static bool phoneNumber(String phoneNumber) {
    String pattern = r'(^[0-9]{10}$)';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(phoneNumber);
  }

  static bool password(String password) {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$')
        .hasMatch(password);
  }
}
