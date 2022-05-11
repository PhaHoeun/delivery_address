// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyModel _$MyModelFromJson(Map<String, dynamic> json) {
  return _MyModel.fromJson(json);
}

/// @nodoc
class _$MyModelTearOff {
  const _$MyModelTearOff();

  _MyModel call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "contact_name") String? contactName,
      @JsonKey(name: "contact_number") String? contactNumber,
      @JsonKey(name: "contact_email") String? contactEmail,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "is_default") String? isDefault}) {
    return _MyModel(
      id: id,
      name: name,
      description: description,
      address: address,
      contactName: contactName,
      contactNumber: contactNumber,
      contactEmail: contactEmail,
      latitude: latitude,
      longitude: longitude,
      isDefault: isDefault,
    );
  }

  MyModel fromJson(Map<String, Object?> json) {
    return MyModel.fromJson(json);
  }
}

/// @nodoc
const $MyModel = _$MyModelTearOff();

/// @nodoc
mixin _$MyModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_name")
  String? get contactName => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_number")
  String? get contactNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "contact_email")
  String? get contactEmail => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  String? get isDefault => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyModelCopyWith<MyModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyModelCopyWith<$Res> {
  factory $MyModelCopyWith(MyModel value, $Res Function(MyModel) then) =
      _$MyModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "contact_name") String? contactName,
      @JsonKey(name: "contact_number") String? contactNumber,
      @JsonKey(name: "contact_email") String? contactEmail,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "is_default") String? isDefault});
}

/// @nodoc
class _$MyModelCopyWithImpl<$Res> implements $MyModelCopyWith<$Res> {
  _$MyModelCopyWithImpl(this._value, this._then);

  final MyModel _value;
  // ignore: unused_field
  final $Res Function(MyModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? contactName = freezed,
    Object? contactNumber = freezed,
    Object? contactEmail = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: contactName == freezed
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: contactEmail == freezed
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MyModelCopyWith<$Res> implements $MyModelCopyWith<$Res> {
  factory _$MyModelCopyWith(_MyModel value, $Res Function(_MyModel) then) =
      __$MyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "contact_name") String? contactName,
      @JsonKey(name: "contact_number") String? contactNumber,
      @JsonKey(name: "contact_email") String? contactEmail,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "is_default") String? isDefault});
}

/// @nodoc
class __$MyModelCopyWithImpl<$Res> extends _$MyModelCopyWithImpl<$Res>
    implements _$MyModelCopyWith<$Res> {
  __$MyModelCopyWithImpl(_MyModel _value, $Res Function(_MyModel) _then)
      : super(_value, (v) => _then(v as _MyModel));

  @override
  _MyModel get _value => super._value as _MyModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? contactName = freezed,
    Object? contactNumber = freezed,
    Object? contactEmail = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? isDefault = freezed,
  }) {
    return _then(_MyModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      contactName: contactName == freezed
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactNumber: contactNumber == freezed
          ? _value.contactNumber
          : contactNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      contactEmail: contactEmail == freezed
          ? _value.contactEmail
          : contactEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      isDefault: isDefault == freezed
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyModel with DiagnosticableTreeMixin implements _MyModel {
  const _$_MyModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "contact_name") this.contactName,
      @JsonKey(name: "contact_number") this.contactNumber,
      @JsonKey(name: "contact_email") this.contactEmail,
      @JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "is_default") this.isDefault});

  factory _$_MyModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "contact_name")
  final String? contactName;
  @override
  @JsonKey(name: "contact_number")
  final String? contactNumber;
  @override
  @JsonKey(name: "contact_email")
  final String? contactEmail;
  @override
  @JsonKey(name: "latitude")
  final double? latitude;
  @override
  @JsonKey(name: "longitude")
  final double? longitude;
  @override
  @JsonKey(name: "is_default")
  final String? isDefault;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyModel(id: $id, name: $name, description: $description, address: $address, contactName: $contactName, contactNumber: $contactNumber, contactEmail: $contactEmail, latitude: $latitude, longitude: $longitude, isDefault: $isDefault)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('contactName', contactName))
      ..add(DiagnosticsProperty('contactNumber', contactNumber))
      ..add(DiagnosticsProperty('contactEmail', contactEmail))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('isDefault', isDefault));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.contactName, contactName) &&
            const DeepCollectionEquality()
                .equals(other.contactNumber, contactNumber) &&
            const DeepCollectionEquality()
                .equals(other.contactEmail, contactEmail) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality().equals(other.isDefault, isDefault));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(contactName),
      const DeepCollectionEquality().hash(contactNumber),
      const DeepCollectionEquality().hash(contactEmail),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(isDefault));

  @JsonKey(ignore: true)
  @override
  _$MyModelCopyWith<_MyModel> get copyWith =>
      __$MyModelCopyWithImpl<_MyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyModelToJson(this);
  }
}

abstract class _MyModel implements MyModel {
  const factory _MyModel(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "contact_name") String? contactName,
      @JsonKey(name: "contact_number") String? contactNumber,
      @JsonKey(name: "contact_email") String? contactEmail,
      @JsonKey(name: "latitude") double? latitude,
      @JsonKey(name: "longitude") double? longitude,
      @JsonKey(name: "is_default") String? isDefault}) = _$_MyModel;

  factory _MyModel.fromJson(Map<String, dynamic> json) = _$_MyModel.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "contact_name")
  String? get contactName;
  @override
  @JsonKey(name: "contact_number")
  String? get contactNumber;
  @override
  @JsonKey(name: "contact_email")
  String? get contactEmail;
  @override
  @JsonKey(name: "latitude")
  double? get latitude;
  @override
  @JsonKey(name: "longitude")
  double? get longitude;
  @override
  @JsonKey(name: "is_default")
  String? get isDefault;
  @override
  @JsonKey(ignore: true)
  _$MyModelCopyWith<_MyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
