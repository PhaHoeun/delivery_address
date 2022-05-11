// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyModel _$$_MyModelFromJson(Map<String, dynamic> json) => _$_MyModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      address: json['address'] as String?,
      contactName: json['contact_name'] as String?,
      contactNumber: json['contact_number'] as String?,
      contactEmail: json['contact_email'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      isDefault: json['is_default'] as String?,
    );

Map<String, dynamic> _$$_MyModelToJson(_$_MyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'contact_name': instance.contactName,
      'contact_number': instance.contactNumber,
      'contact_email': instance.contactEmail,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'is_default': instance.isDefault,
    };
