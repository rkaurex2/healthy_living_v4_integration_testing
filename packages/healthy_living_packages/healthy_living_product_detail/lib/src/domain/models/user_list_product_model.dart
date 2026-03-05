import 'package:healthy_living_product_detail/src/domain/models/user_list_business_model.dart';
import 'package:healthy_living_product_detail/src/domain/models/user_list_scores_model.dart';

class UserListProductModel {
  final String? productType;
  final int? productId;
  final String? brandName;
  final int? brandId;
  final String? companyName;
  final String? name;
  final String? upcs;
  final String? imageUrl;
  final String? score;
  final bool? ewgVerified;
  final String? verifiedDate;
  final List<dynamic>? retailers;
  final String? webUrl;
  final int? id;
  final String? toParam;
  final int? brandLineId;
  final String? grade;
  final String? searchGrade;
  final bool? discontinued;
  final String? browseImageUrl;
  final String? mediumImageUrl;
  final int? numberOfFormulations;
  final bool? greenCertified;
  final UserListBusinessModel? business;
  final bool? nameCorrectionSubmitted;
  final String? postdate;
  final String? productSize;
  final String? imageSource;
  final String? asinList;
  final UserListScoresModel? scores;
  final String? categoryDisplayName;
  final String? categoryLinkName;
  final List<String>? categoryGroups;
  final List<dynamic>? attributes;
  final List<dynamic>? certifications;
  final List<dynamic>? companyCommunications;

  UserListProductModel({
    this.productType,
    this.productId,
    this.brandName,
    this.brandId,
    this.companyName,
    this.name,
    this.upcs,
    this.imageUrl,
    this.score,
    this.ewgVerified,
    this.verifiedDate,
    this.retailers,
    this.webUrl,
    this.id,
    this.toParam,
    this.brandLineId,
    this.grade,
    this.searchGrade,
    this.discontinued,
    this.browseImageUrl,
    this.mediumImageUrl,
    this.numberOfFormulations,
    this.greenCertified,
    this.business,
    this.nameCorrectionSubmitted,
    this.postdate,
    this.productSize,
    this.imageSource,
    this.asinList,
    this.scores,
    this.categoryDisplayName,
    this.categoryLinkName,
    this.categoryGroups,
    this.attributes,
    this.certifications,
    this.companyCommunications,
  });
}
