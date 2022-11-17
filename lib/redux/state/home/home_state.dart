import 'package:built_value/built_value.dart';
import 'package:logotime/network/model/user/user_model.dart';

part 'home_state.g.dart';

abstract class HomeState implements Built<HomeState, HomeStateBuilder> {
  UserModel? get user;

  HomeState._();

  factory HomeState([void Function(HomeStateBuilder) updates]) = _$HomeState;

  factory HomeState.initial() => HomeState();
}
