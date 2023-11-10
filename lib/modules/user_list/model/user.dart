import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserListFromApi with _$UserListFromApi {
  const factory UserListFromApi({List<UserListItem>? data, int? code, int? total}) = _UserListFromApi;
  factory UserListFromApi.fromJson(Map<String, Object?> json) => _$UserListFromApiFromJson(json);
}

@freezed
class UserListItem with _$UserListItem {
  const factory UserListItem(
      {int? id,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? birthday,
      String? gender,
      UserAddress? address}) = _UserListItem;
  factory UserListItem.fromJson(Map<String, Object?> json) => _$UserListItemFromJson(json);
}

@freezed
class UserAddress with _$UserAddress {
  const factory UserAddress(
      {String? street,
      String? streetName,
      String? buildingNumber,
      String? city,
      String? zipcode,
      String? country}) = _UserAddress;
  factory UserAddress.fromJson(Map<String, Object?> json) => _$UserAddressFromJson(json);
}
