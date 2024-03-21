enum Valid { inputRequired }

mixin Validation {
  String? emailRequired(String? email) {
    final emailRegexp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (email == null || email.isEmpty) {
      return 'Email cannot be empty';
    } else if (!emailRegexp.hasMatch(email)) {
      return 'Invalid email!';
    } else {
      return null;
    }
  }

  String? usernameRequired(String? username) {
    if (username == null) {
      return 'Username is mandatory';
    } else if (username.isEmpty) {
      return 'Username cannot be empty';
    } else {
      return null;
    }
  }

  String? passwordRequired(String? password) {
    final alphaNumeric = RegExp(r'[a-zA-Z0-9]+');
    if (password == null) {
      return 'Password is required';
    } else if (password.isEmpty) {
      return 'The password cannot be empty';
    } else if (!alphaNumeric.hasMatch(password)) {
      return 'The password must contain letters and numbers';
    } else if (password.length < 8) {
      return 'The minimum password lengths is 8 characters';
    } else {
      return null;
    }
  }

  String? rePasswordRequired(String? password, String rePassword) {
    if (password == null) {
      return 'Password wajib diisi';
    } else if (password.isEmpty) {
      return 'Password tidak boleh kosong';
    } else if (password != password) {
      return 'Password tidak sama!';
    } else {
      return null;
    }
  }

  String? inputRequired(String? value) {
    if (value == null) {
      return 'Wajib diisi';
    } else if (value.isEmpty) {
      return 'Tidak boleh kosong';
    } else {
      return null;
    }
  }
}
