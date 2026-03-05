class DeepLinkDataModel {
  final String type;
  final Map<String, dynamic> data;

  DeepLinkDataModel({
    required this.type,
    required this.data,
  });

  factory DeepLinkDataModel.fromMap(Map<String, dynamic> map) {
    return DeepLinkDataModel(
      type: map['type']?.toString() ?? '',
      data: map,
    );
  }

  Map<String, dynamic> toMap() => data;

  Map<String, dynamic> toResetPasswordMap() {
    return {
      'emailCode': data['code'],
    };
  }
}