export './registration/create_owner_action.dart';
export './registration/create_organisation_action.dart';

class CancelRegistrationAction {}

class RegistrationLoadingChanged {
  final bool isLoading;

  RegistrationLoadingChanged(this.isLoading);
}
