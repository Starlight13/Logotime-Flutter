import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organisation_size.g.dart';

@BuiltValueEnum(wireName: 'organizationSize')
class OrganisationSize extends EnumClass {
  static Serializer<OrganisationSize> get serializer =>
      _$organisationSizeSerializer;

  @BuiltValueEnumConst(wireName: 'SMALL')
  static const OrganisationSize small = _$small;

  @BuiltValueEnumConst(wireName: 'MIDDLE')
  static const OrganisationSize middle = _$middle;

  @BuiltValueEnumConst(wireName: 'LARGE')
  static const OrganisationSize large = _$large;

  const OrganisationSize._(String name) : super(name);

  static BuiltSet<OrganisationSize> get values => _$values;
  static OrganisationSize valueOf(String name) => _$valueOf(name);
}
