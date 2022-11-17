import 'package:built_value/built_value.dart';
import 'package:logotime/network/model/user/user_model.dart';

part 'home_view_model.g.dart';

abstract class HomeViewModel
    implements Built<HomeViewModel, HomeViewModelBuilder> {
  UserModel? get user;
  Function() get onLogOutPressed;
  Function() get onUpdatePressed;

  HomeViewModel._();

  factory HomeViewModel([void Function(HomeViewModelBuilder) updates]) =
      _$HomeViewModel;
}
