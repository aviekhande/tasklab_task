// ignore_for_file: unnecessary_new

mixin ValidationsMixin {
  String? validatedName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter valid name';
    }
    if (value.length >= 52) {
      return 'Name must be less than 52 characters';
    }
    final regex = RegExp(r'^[A-Za-z ]+$');
    if (!regex.hasMatch(value)) {
      return 'Name should only contain alphabets';
    }
    return null;
  }

  String? validateEmail(String? value) {
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (value == null || value.isEmpty || value.length > 150) {
      return 'Please enter an email address';
    }
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? validatedPhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter valid phone number';
    }
    if (value.length != 10) {
      return 'Phone number must be 10 digits';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Phone number can only contain digits';
    }
    return null;
  }

  String? validatedPassword(String? value) {
    if (value == null || value.isEmpty || value.contains(' ')) {
      return 'Password field should not be empty';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }
}
