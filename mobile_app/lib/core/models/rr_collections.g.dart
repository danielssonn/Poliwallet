// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rr_collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RR_Collections _$RR_CollectionsFromJson(Map<String, dynamic> json) {
  return RR_Collections(
    name: json['name'] as String?,
    description: json['description'] as String?,
    image_url: json['image_url'] as String?,
  );
}

Map<String, dynamic> _$RR_CollectionsToJson(RR_Collections instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image_url': instance.image_url,
    };
