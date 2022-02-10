import 'package:json_annotation/json_annotation.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'rr_collections.g.dart';

@JsonSerializable(explicitToJson: true)
class RR_Collections extends ChangeNotifier {
  RR_Collections({
    this.name,
    this.description,
    this.image_url,
  });

  String? name;
  String? description;
  String? image_url;

/*
  factory OS_Collections.fromJson(Map<String, dynamic> json) =>
      _$OS_CollectionsFromJson(json);
  Map<String, dynamic> toJson() => _$OS_CollectionsToJson(this);
*/

  factory RR_Collections.fromJson(Map<String, dynamic> json) => RR_Collections(
        name: json['name'],
        description: json['description'],
        image_url: json['image'],
      );
}
