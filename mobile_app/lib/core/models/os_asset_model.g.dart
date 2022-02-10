// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rarible_collection_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OS_Assets _$OS_AssetsFromJson(Map<String, dynamic> json) {
  return OS_Assets(
    id: json['id'] as int,
    token_id: json['token_id'] as String,
    num_sales: json['num_sales'] as int?,
    background_color: json['background_color'] as String?,
    image_url: json['image_url'] as String?,
    image_preview_url: json['image_preview_url'] as String?,
    image_thumbnail_url: json['image_thumbnail_url'] as String?,
    image_original_url: json['image_original_url'] as String?,
    animation_url: json['animation_url'] as String?,
    animation_original_url: json['animation_original_url'] as String?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    external_link: json['external_link'] as String?,
    asset_contract:
        AssetContract.fromJson(json['asset_contract'] as Map<String, dynamic>),
    permalink: json['permalink'] as String?,
    sell_orders: json['sell_orders'] as String?,
    traits: json['traits'] as String?,
    last_sale: json['last_sale'] as String?,
    top_bid: json['top_bid'] as String?,
    listing_date: json['listing_date'] as String?,
    is_presale: json['is_presale'] as bool?,
    transfer_fee_payment_token: json['transfer_fee_payment_token'] as String?,
    transfer_fee: json['transfer_fee'] as String?,
  );
}

Map<String, dynamic> _$OS_AssetsToJson(OS_Assets instance) => <String, dynamic>{
      'id': instance.id,
      'token_id': instance.token_id,
      'num_sales': instance.num_sales,
      'background_color': instance.background_color,
      'image_url': instance.image_url,
      'image_preview_url': instance.image_preview_url,
      'image_thumbnail_url': instance.image_thumbnail_url,
      'image_original_url': instance.image_original_url,
      'animation_url': instance.animation_url,
      'animation_original_url': instance.animation_original_url,
      'name': instance.name,
      'description': instance.description,
      'external_link': instance.external_link,
      'asset_contract': instance.asset_contract.toJson(),
      'permalink': instance.permalink,
      'sell_orders': instance.sell_orders,
      'traits': instance.traits,
      'last_sale': instance.last_sale,
      'top_bid': instance.top_bid,
      'listing_date': instance.listing_date,
      'is_presale': instance.is_presale,
      'transfer_fee_payment_token': instance.transfer_fee_payment_token,
      'transfer_fee': instance.transfer_fee,
    };
