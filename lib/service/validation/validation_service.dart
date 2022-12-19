import 'package:logotime/extensions.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';

/// Service for value validation.
abstract class IValidationService {
  /// Current validation error.
  String? get error;

  /// Validates [email].
  bool isEmailValid({required String email});

  /// Validates [password].
  bool isPasswordValid({required String? password});

  /// Validates [phoneNumber].
  bool isPhoneNumberValid({required String? phoneNumber});

  /// Validates [firstName].
  bool isFirstNameValid({required String? firstName});

  /// Validates [lastName].
  bool isLastNameValid({required String? lastName});

  /// Validates [organisationName].
  bool isOrganisationNameValid({required String? organisationName});

  /// Validates [organisationSize].
  bool isOrganisationSizeValid({required OrganisationSize? organisationSize});

  /// Validates [maxApplications].
  bool isMaxApplicationsValid({required String? maxApplications});

  /// Validates that [string] with [fieldName] is not an empty string.
  bool isNotEmpty(String? string, {required String fieldName});
}

class ValidationService implements IValidationService {
  //TODO: translate errors
  /// Current validation error
  String? _error;

  @override
  String? get error => _error;

  /// Returns `true` if [email] is a proper email.
  ///
  /// ```dart
  /// isEmailValid('test@test.com') == true
  /// isEmailValid('myNotSoValidEmail') == false
  /// ```
  @override
  bool isEmailValid({required String email}) {
    _error = null;
    if (email.isEmpty) {
      _error = 'Please, enter email';
      return false;
    }
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }

  /// Returns `true` if [password] meets the following requirements:
  /// - more than 8 characters long
  /// - contains at least 1 uppercase letter
  /// - contains at least 1 lowercase letter
  /// - contains at least 1 digit
  @override
  bool isPasswordValid({required String? password}) {
    _error = null;
    if (password == null || password.isEmpty) {
      _error = 'Please, enter password';
    } else if (password.length < 8) {
      _error = 'Password should be at least 8 characters long';
    } else if (!password.containsUppercase) {
      _error = 'Password should contain at least 1 uppercase letter';
    } else if (!password.containsLowercase) {
      _error = 'Password should contain at least 1 lowercase letter';
    } else if (!password.containsDigits) {
      _error = 'Password should contain at least 1 digit';
    } else {
      return true;
    }
    return false;
  }

  /// Returns `true` if the [phoneNumber] is a valid ukrainian phone number.
  @override
  bool isPhoneNumberValid({required String? phoneNumber}) {
    _error = null;
    if (phoneNumber == null || phoneNumber.isEmpty) {
      _error = 'Please, enter phone number';
      return false;
    }
    return RegExp(r"^\+380\d{9}$").hasMatch(phoneNumber) ||
        RegExp(r"^\d{10}$").hasMatch(phoneNumber);
  }

  /// Returns `true` if [firstName] is not null.
  @override
  bool isFirstNameValid({required String? firstName}) {
    _error = null;
    if (firstName == null || firstName.isEmpty) {
      _error = 'Please, enter first name';
      return false;
    }
    return true;
  }

  /// Returns `true` if [lastName] is not null.
  @override
  bool isLastNameValid({required String? lastName}) {
    _error = null;
    if (lastName == null || lastName.isEmpty) {
      _error = 'Please, enter first name';
      return false;
    }
    return true;
  }

  /// Returns `true` if [organisationName] is not null.
  @override
  bool isOrganisationNameValid({required String? organisationName}) {
    _error = null;
    if (organisationName == null || organisationName.isEmpty) {
      _error = 'Please, enter organisation name';
      return false;
    }
    return true;
  }

  /// Returns `true` if [organisationSize] is not null.
  @override
  bool isOrganisationSizeValid({required OrganisationSize? organisationSize}) {
    _error = null;
    if (organisationSize == null) {
      _error = 'Please, choose organisation size';
      return false;
    }
    return true;
  }

  /// Returns `true` of [maxApplications] is null or a valid integer.
  @override
  bool isMaxApplicationsValid({required String? maxApplications}) {
    return int.tryParse(maxApplications ?? '0') != null;
  }

  @override
  bool isNotEmpty(String? string, {required String fieldName}) {
    _error = null;
    if (string?.isEmpty ?? true) {
      _error = 'Please, enter $fieldName';
      return false;
    }
    return true;
  }
}
