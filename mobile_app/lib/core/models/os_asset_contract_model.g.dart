// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'os_asset_contract_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetContract _$AssetContractFromJson(Map<String, dynamic> json) {
  return AssetContract(
    json['address'] as String,
    json['asset_contract_type'] as String?,
    json['created_date'] as String,
    json['name'] as String?,
    json['nft_version'] as String?,
    json['opensea_version'] as String?,
    json['owner'] as int?,
    json['schema_name'] as String?,
    json['symbol'] as String?,
    json['total_supply'] as String?,
    json['description'] as String?,
    json['external_link'] as String?,
    json['image_url'] as String?,
    json['default_to_fiat'] as bool,
    json['dev_buyer_fee_basis_points'] as int,
    json['dev_seller_fee_basis_points'] as int,
    json['only_proxied_transfers'] as bool,
    json['opensea_buyer_fee_basis_points'] as int,
    json['opensea_seller_fee_basis_points'] as int,
    json['buyer_fee_basis_points'] as int,
    json['seller_fee_basis_points'] as int,
    json['payout_address'] as String?,
  );
}

Map<String, dynamic> _$AssetContractToJson(AssetContract instance) =>
    <String, dynamic>{
      'address': instance.address,
      'asset_contract_type': instance.asset_contract_type,
      'created_date': instance.created_date,
      'name': instance.name,
      'nft_version': instance.nft_version,
      'opensea_version': instance.opensea_version,
      'owner': instance.owner,
      'schema_name': instance.schema_name,
      'symbol': instance.symbol,
      'total_supply': instance.total_supply,
      'description': instance.description,
      'external_link': instance.external_link,
      'image_url': instance.image_url,
      'default_to_fiat': instance.default_to_fiat,
      'dev_buyer_fee_basis_points': instance.dev_buyer_fee_basis_points,
      'dev_seller_fee_basis_points': instance.dev_seller_fee_basis_points,
      'only_proxied_transfers': instance.only_proxied_transfers,
      'opensea_buyer_fee_basis_points': instance.opensea_buyer_fee_basis_points,
      'opensea_seller_fee_basis_points':
          instance.opensea_seller_fee_basis_points,
      'buyer_fee_basis_points': instance.buyer_fee_basis_points,
      'seller_fee_basis_points': instance.seller_fee_basis_points,
      'payout_address': instance.payout_address,
    };
