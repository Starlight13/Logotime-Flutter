import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logotime/network/request_model.dart';
import 'package:logotime/network/serializers.dart';

part 'log_in_request_model.g.dart';

/// Request model to make up the body for log in requests.
abstract class LogInRequestModel
    implements
        Built<LogInRequestModel, LogInRequestModelBuilder>,
        RequestModel {
  String get email;
  String get password;

  LogInRequestModel._();

  factory LogInRequestModel([void Function(LogInRequestModelBuilder) updates]) =
      _$LogInRequestModel;

  static Serializer<LogInRequestModel> get serializer =>
      _$logInRequestModelSerializer;

  @override
  String toJson() {
    return json.encode(serializers.serializeWith(serializer, this));
  }
}
