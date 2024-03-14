import 'package:equatable/equatable.dart';

class Brands extends Equatable {
  final int? id;
  final String? brandType;
  final String? brandName;
  final String? brandFacebookPageLink;
  final String? brandInstagramPageLink;
  final dynamic brandWebsiteLink;
  final String? brandMobileNumber;
  final String? brandEmailAddress;
  final dynamic taxIdNumber;
  final String? brandDescription;
  final String? brandLogoImagePath;
  final int? brandStatusId;
  final dynamic brandStoreAddressId;
  final int? brandCategoryId;
  final dynamic deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? brandSellerId;
  final dynamic brandId;
  final dynamic slashContractPath;
  final int? brandRating;
  final int? daysLimitToReturn;
  final dynamic planId;

  const Brands({
    this.id,
    this.brandType,
    this.brandName,
    this.brandFacebookPageLink,
    this.brandInstagramPageLink,
    this.brandWebsiteLink,
    this.brandMobileNumber,
    this.brandEmailAddress,
    this.taxIdNumber,
    this.brandDescription,
    this.brandLogoImagePath,
    this.brandStatusId,
    this.brandStoreAddressId,
    this.brandCategoryId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.brandSellerId,
    this.brandId,
    this.slashContractPath,
    this.brandRating,
    this.daysLimitToReturn,
    this.planId,
  });

  factory Brands.fromJson(Map<String, dynamic> json) => Brands(
        id: json['id'] as int?,
        brandType: json['brand_type'] as String?,
        brandName: json['brand_name'] as String?,
        brandFacebookPageLink: json['brand_facebook_page_link'] as String?,
        brandInstagramPageLink: json['brand_instagram_page_link'] as String?,
        brandWebsiteLink: json['brand_website_link'] as dynamic,
        brandMobileNumber: json['brand_mobile_number'] as String?,
        brandEmailAddress: json['brand_email_address'] as String?,
        taxIdNumber: json['tax_id_number'] as dynamic,
        brandDescription: json['brand_description'] as String?,
        brandLogoImagePath: json['brand_logo_image_path'] as String?,
        brandStatusId: json['brand_status_id'] as int?,
        brandStoreAddressId: json['brand_store_address_id'] as dynamic,
        brandCategoryId: json['brand_category_id'] as int?,
        deletedAt: json['deletedAt'] as dynamic,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        updatedAt: json['updatedAt'] == null
            ? null
            : DateTime.parse(json['updatedAt'] as String),
        brandSellerId: json['brand_seller_id'] as int?,
        brandId: json['brand_id'] as dynamic,
        slashContractPath: json['slash_contract_path'] as dynamic,
        brandRating: json['brand_rating'] as int?,
        daysLimitToReturn: json['days_limit_to_return'] as int?,
        planId: json['planId'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'brand_type': brandType,
        'brand_name': brandName,
        'brand_facebook_page_link': brandFacebookPageLink,
        'brand_instagram_page_link': brandInstagramPageLink,
        'brand_website_link': brandWebsiteLink,
        'brand_mobile_number': brandMobileNumber,
        'brand_email_address': brandEmailAddress,
        'tax_id_number': taxIdNumber,
        'brand_description': brandDescription,
        'brand_logo_image_path': brandLogoImagePath,
        'brand_status_id': brandStatusId,
        'brand_store_address_id': brandStoreAddressId,
        'brand_category_id': brandCategoryId,
        'deletedAt': deletedAt,
        'createdAt': createdAt?.toIso8601String(),
        'updatedAt': updatedAt?.toIso8601String(),
        'brand_seller_id': brandSellerId,
        'brand_id': brandId,
        'slash_contract_path': slashContractPath,
        'brand_rating': brandRating,
        'days_limit_to_return': daysLimitToReturn,
        'planId': planId,
      };

  @override
  List<Object?> get props {
    return [
      id,
      brandType,
      brandName,
      brandFacebookPageLink,
      brandInstagramPageLink,
      brandWebsiteLink,
      brandMobileNumber,
      brandEmailAddress,
      taxIdNumber,
      brandDescription,
      brandLogoImagePath,
      brandStatusId,
      brandStoreAddressId,
      brandCategoryId,
      deletedAt,
      createdAt,
      updatedAt,
      brandSellerId,
      brandId,
      slashContractPath,
      brandRating,
      daysLimitToReturn,
      planId,
    ];
  }
}
