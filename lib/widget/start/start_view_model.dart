import 'package:built_value/built_value.dart';

part 'start_view_model.g.dart';

abstract class StartViewModel
    implements Built<StartViewModel, StartViewModelBuilder> {
  Function() get onLogInPressed;
  Function() get onCreateOrganisationPressed;

  StartViewModel._();

  factory StartViewModel([void Function(StartViewModelBuilder) updates]) =
      _$StartViewModel;
}
