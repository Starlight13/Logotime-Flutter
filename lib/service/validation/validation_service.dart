import 'package:logotime/extensions.dart';
import 'package:logotime/network/model/organisation/organisation_size.dart';

abstract class IValidationService {
  String? get error;
  bool isEmailValid({required String email});
  bool isPasswordValid({required String? password});
  bool isPhoneNumberValid({required String? phoneNumber});
  bool isFirstNameValid({required String? firstName});
  bool isLastNameValid({required String? lastName});
  bool isOrganisationNameValid({required String? organisationName});
  bool isOrganisationSizeValid({required OrganisationSize? organisationSize});
  bool isMaxApplicationsValid({required String? maxApplications});
  bool isNotEmpty(String? string, {required String fieldName});
}

class ValidationService implements IValidationService {
  //TODO: translate errors
  String? _error;

  @override
  String? get error => _error;

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

  @override
  bool isFirstNameValid({required String? firstName}) {
    _error = null;
    if (firstName == null || firstName.isEmpty) {
      _error = 'Please, enter first name';
      return false;
    }
    return true;
  }

  @override
  bool isLastNameValid({required String? lastName}) {
    _error = null;
    if (lastName == null || lastName.isEmpty) {
      _error = 'Please, enter first name';
      return false;
    }
    return true;
  }

  @override
  bool isOrganisationNameValid({required String? organisationName}) {
    _error = null;
    if (organisationName == null || organisationName.isEmpty) {
      _error = 'Please, enter organisation name';
      return false;
    }
    return true;
  }

  @override
  bool isOrganisationSizeValid({required OrganisationSize? organisationSize}) {
    _error = null;
    if (organisationSize == null) {
      _error = 'Please, choose organisation size';
      return false;
    }
    return true;
  }

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
