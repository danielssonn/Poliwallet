import 'package:json_annotation/json_annotation.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'os_asset_contract_model.dart';

part 'os_asset_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OS_Assets extends ChangeNotifier {
  OS_Assets({
    required this.id,
    required this.token_id,
    this.num_sales,
    this.background_color,
    this.image_url,
    this.image_preview_url,
    this.image_thumbnail_url,
    this.image_original_url,
    this.animation_url,
    this.animation_original_url,
    this.name,
    this.description,
    this.external_link,
    required this.asset_contract,
    this.permalink,
    this.sell_orders,
    this.traits,
    this.last_sale,
    this.top_bid,
    this.listing_date,
    this.is_presale,
    this.transfer_fee_payment_token,
    this.transfer_fee,
  });

  int id;
  String token_id;
  int? num_sales;
  String? background_color;
  String? image_url;
  String? image_preview_url;
  String? image_thumbnail_url;
  String? image_original_url;
  String? animation_url;
  String? animation_original_url;
  String? name;
  String? description;
  String? external_link;
  AssetContract asset_contract;
  String? permalink;
  String? sell_orders;
  String? traits;
  String? last_sale;
  String? top_bid;
  String? listing_date;
  bool? is_presale;
  String? transfer_fee_payment_token;
  String? transfer_fee;

  factory OS_Assets.fromJson(Map<String, dynamic> json) => OS_Assets(
        id: json["id"],
        token_id: json["token_id"],
        description: json["description"] == null ? null : json["description"],
        image_url: json["image_url"] == null ? null : json["image_url"],
        asset_contract: AssetContract.fromJson(json["asset_contract"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description == null ? null : description,
        "image_url": image_url == null ? null : image_url,
        "asset_contract": asset_contract.toJson(),
      };
}
