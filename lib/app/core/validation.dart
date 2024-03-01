enum Valid { inputRequired }

mixin Validation {
  String? passwordRequired(String? password) {
    final alphaNumeric = RegExp(r'[a-zA-Z0-9]+');
    if (password == null) {
      return 'Password wajib diisi';
    } else if (password.isEmpty) {
      return 'Password tidak boleh kosong';
    } else if (!alphaNumeric.hasMatch(password)) {
      return 'Password harus berisi huruf dan angka';
    } else if (password.length < 8) {
      return 'Password miniman 8 karakter';
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
