import 'package:built_value/built_value.dart';
import 'package:logotime/network/model/user/user_model.dart';

part 'create_owner_view_model.g.dart';

abstract class CreateOwnerViewModel
    implements Built<CreateOwnerViewModel, CreateOwnerViewModelBuilder> {
  Function(UserModel, String) get onCreateOwnerNextStep;
  Function() get onBackButtonPress;
  String? get emailError;
  String? get passwordError;
  String? get phoneNumberError;
  String? get firstNameError;
  String? get lastNameError;

  CreateOwnerViewModel._();

  factory CreateOwnerViewModel(
          [void Function(CreateOwnerViewModelBuilder) updates]) =
      _$CreateOwnerViewModel;
}
