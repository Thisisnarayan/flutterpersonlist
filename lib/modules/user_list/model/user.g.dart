// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserListFromApiImpl _$$UserListFromApiImplFromJson(
        Map<String, dynamic> json) =>
    _$UserListFromApiImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$UserListFromApiImplToJson(
        _$UserListFromApiImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'code': instance.code,
      'total': instance.total,
    };

_$UserListItemImpl _$$UserListItemImplFromJson(Map<String, dynamic> json) =>
    _$UserListItemImpl(
      id: json['id'] as int?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      birthday: json['birthday'] as String?,
      gender: json['gender'] as String?,
      address: json['address'] == null
          ? null
          : UserAddress.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserListItemImplToJson(_$UserListItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'phone': instance.phone,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'address': instance.address,
    };

_$UserAddressImpl _$$UserAddressImplFromJson(Map<String, dynamic> json) =>
    _$UserAddressImpl(
      street: json['street'] as String?,
      streetName: json['streetName'] as String?,
      buildingNumber: json['buildingNumber'] as String?,
      city: json['city'] as String?,
      zipcode: json['zipcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$UserAddressImplToJson(_$UserAddressImpl instance) =>
    <String, dynamic>{
      'street': instance.street,
      'streetName': instance.streetName,
      'buildingNumber': instance.buildingNumber,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'country': instance.country,
    };
