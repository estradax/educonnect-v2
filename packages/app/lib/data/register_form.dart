import 'package:educonnect_app/data/user.dart';
import 'package:flutterfly/flutterfly.dart';

class RegisterForm {
  final String fullName;
  final String email;
  final String password;
  final UserRole role;

  RegisterForm({
    required this.fullName,
    required this.email,
    required this.password,
    required this.role,
  });

  bool isValid() {
    bool retval = true;

    if (ValidatorString(fullName).required().build() != null) retval = false;
    if (ValidatorString(email).required().email().build() != null) {
      retval = false;
    }
    if (ValidatorString(password).required().build() != null) retval = false;

    return retval;
  }
}
