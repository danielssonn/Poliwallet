import 'package:json_annotation/json_annotation.dart';

part 'os_asset_contract_model.g.dart';

///Sub items
@JsonSerializable(explicitToJson: true)
class AssetContract {
  String address;
  String? asset_contract_type;
  String created_date;
  String? name;
  String? nft_version;
  String? opensea_version;
  int? owner;
  String? schema_name;
  String? symbol;
  String? total_supply;
  String? description;
  String? external_link;
  String? image_url;
  bool default_to_fiat;
  int dev_buyer_fee_basis_points;
  int dev_seller_fee_basis_points;
  bool only_proxied_transfers;
  int opensea_buyer_fee_basis_points;
  int opensea_seller_fee_basis_points;
  int buyer_fee_basis_points;
  int seller_fee_basis_points;
  String? payout_address;

  AssetContract(
    this.address,
    this.asset_contract_type,
    this.created_date,
    this.name,
    this.nft_version,
    this.opensea_version,
    this.owner,
    this.schema_name,
    this.symbol,
    this.total_supply,
    this.description,
    this.external_link,
    this.image_url,
    this.default_to_fiat,
    this.dev_buyer_fee_basis_points,
    this.dev_seller_fee_basis_points,
    this.only_proxied_transfers,
    this.opensea_buyer_fee_basis_points,
    this.opensea_seller_fee_basis_points,
    this.buyer_fee_basis_points,
    this.seller_fee_basis_points,
    this.payout_address,
  );

  factory AssetContract.fromJson(Map<String, dynamic> json) =>
      _$AssetContractFromJson(json);
  Map<String, dynamic> toJson() => _$AssetContractToJson(this);
}
