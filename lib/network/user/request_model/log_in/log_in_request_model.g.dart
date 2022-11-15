// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_request_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LogInRequestModel> _$logInRequestModelSerializer =
    new _$LogInRequestModelSerializer();

class _$LogInRequestModelSerializer
    implements StructuredSerializer<LogInRequestModel> {
  @override
  final Iterable<Type> types = const [LogInRequestModel, _$LogInRequestModel];
  @override
  final String wireName = 'LogInRequestModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LogInRequestModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  LogInRequestModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogInRequestModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LogInRequestModel extends LogInRequestModel {
  @override
  final String email;
  @override
  final String password;

  factory _$LogInRequestModel(
          [void Function(LogInRequestModelBuilder)? updates]) =>
      (new LogInRequestModelBuilder()..update(updates))._build();

  _$LogInRequestModel._({required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'LogInRequestModel', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'LogInRequestModel', 'password');
  }

  @override
  LogInRequestModel rebuild(void Function(LogInRequestModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogInRequestModelBuilder toBuilder() =>
      new LogInRequestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogInRequestModel &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogInRequestModel')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class LogInRequestModelBuilder
    implements Builder<LogInRequestModel, LogInRequestModelBuilder> {
  _$LogInRequestModel? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  LogInRequestModelBuilder();

  LogInRequestModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogInRequestModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogInRequestModel;
  }

  @override
  void update(void Function(LogInRequestModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogInRequestModel build() => _build();

  _$LogInRequestModel _build() {
    final _$result = _$v ??
        new _$LogInRequestModel._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'LogInRequestModel', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'LogInRequestModel', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
