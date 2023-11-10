// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserListFromApi _$UserListFromApiFromJson(Map<String, dynamic> json) {
  return _UserListFromApi.fromJson(json);
}

/// @nodoc
mixin _$UserListFromApi {
  List<UserListItem>? get data => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListFromApiCopyWith<UserListFromApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListFromApiCopyWith<$Res> {
  factory $UserListFromApiCopyWith(
          UserListFromApi value, $Res Function(UserListFromApi) then) =
      _$UserListFromApiCopyWithImpl<$Res, UserListFromApi>;
  @useResult
  $Res call({List<UserListItem>? data, int? code, int? total});
}

/// @nodoc
class _$UserListFromApiCopyWithImpl<$Res, $Val extends UserListFromApi>
    implements $UserListFromApiCopyWith<$Res> {
  _$UserListFromApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? code = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserListFromApiImplCopyWith<$Res>
    implements $UserListFromApiCopyWith<$Res> {
  factory _$$UserListFromApiImplCopyWith(_$UserListFromApiImpl value,
          $Res Function(_$UserListFromApiImpl) then) =
      __$$UserListFromApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserListItem>? data, int? code, int? total});
}

/// @nodoc
class __$$UserListFromApiImplCopyWithImpl<$Res>
    extends _$UserListFromApiCopyWithImpl<$Res, _$UserListFromApiImpl>
    implements _$$UserListFromApiImplCopyWith<$Res> {
  __$$UserListFromApiImplCopyWithImpl(
      _$UserListFromApiImpl _value, $Res Function(_$UserListFromApiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? code = freezed,
    Object? total = freezed,
  }) {
    return _then(_$UserListFromApiImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserListItem>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListFromApiImpl implements _UserListFromApi {
  const _$UserListFromApiImpl(
      {final List<UserListItem>? data, this.code, this.total})
      : _data = data;

  factory _$UserListFromApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListFromApiImplFromJson(json);

  final List<UserListItem>? _data;
  @override
  List<UserListItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? code;
  @override
  final int? total;

  @override
  String toString() {
    return 'UserListFromApi(data: $data, code: $code, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListFromApiImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), code, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListFromApiImplCopyWith<_$UserListFromApiImpl> get copyWith =>
      __$$UserListFromApiImplCopyWithImpl<_$UserListFromApiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListFromApiImplToJson(
      this,
    );
  }
}

abstract class _UserListFromApi implements UserListFromApi {
  const factory _UserListFromApi(
      {final List<UserListItem>? data,
      final int? code,
      final int? total}) = _$UserListFromApiImpl;

  factory _UserListFromApi.fromJson(Map<String, dynamic> json) =
      _$UserListFromApiImpl.fromJson;

  @override
  List<UserListItem>? get data;
  @override
  int? get code;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$UserListFromApiImplCopyWith<_$UserListFromApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserListItem _$UserListItemFromJson(Map<String, dynamic> json) {
  return _UserListItem.fromJson(json);
}

/// @nodoc
mixin _$UserListItem {
  int? get id => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  UserAddress? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListItemCopyWith<UserListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListItemCopyWith<$Res> {
  factory $UserListItemCopyWith(
          UserListItem value, $Res Function(UserListItem) then) =
      _$UserListItemCopyWithImpl<$Res, UserListItem>;
  @useResult
  $Res call(
      {int? id,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? birthday,
      String? gender,
      UserAddress? address});

  $UserAddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$UserListItemCopyWithImpl<$Res, $Val extends UserListItem>
    implements $UserListItemCopyWith<$Res> {
  _$UserListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddress?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $UserAddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserListItemImplCopyWith<$Res>
    implements $UserListItemCopyWith<$Res> {
  factory _$$UserListItemImplCopyWith(
          _$UserListItemImpl value, $Res Function(_$UserListItemImpl) then) =
      __$$UserListItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? firstname,
      String? lastname,
      String? email,
      String? phone,
      String? birthday,
      String? gender,
      UserAddress? address});

  @override
  $UserAddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$UserListItemImplCopyWithImpl<$Res>
    extends _$UserListItemCopyWithImpl<$Res, _$UserListItemImpl>
    implements _$$UserListItemImplCopyWith<$Res> {
  __$$UserListItemImplCopyWithImpl(
      _$UserListItemImpl _value, $Res Function(_$UserListItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? address = freezed,
  }) {
    return _then(_$UserListItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstname: freezed == firstname
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: freezed == lastname
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as UserAddress?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserListItemImpl implements _UserListItem {
  const _$UserListItemImpl(
      {this.id,
      this.firstname,
      this.lastname,
      this.email,
      this.phone,
      this.birthday,
      this.gender,
      this.address});

  factory _$UserListItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserListItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? birthday;
  @override
  final String? gender;
  @override
  final UserAddress? address;

  @override
  String toString() {
    return 'UserListItem(id: $id, firstname: $firstname, lastname: $lastname, email: $email, phone: $phone, birthday: $birthday, gender: $gender, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstname, firstname) ||
                other.firstname == firstname) &&
            (identical(other.lastname, lastname) ||
                other.lastname == lastname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, firstname, lastname, email,
      phone, birthday, gender, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListItemImplCopyWith<_$UserListItemImpl> get copyWith =>
      __$$UserListItemImplCopyWithImpl<_$UserListItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserListItemImplToJson(
      this,
    );
  }
}

abstract class _UserListItem implements UserListItem {
  const factory _UserListItem(
      {final int? id,
      final String? firstname,
      final String? lastname,
      final String? email,
      final String? phone,
      final String? birthday,
      final String? gender,
      final UserAddress? address}) = _$UserListItemImpl;

  factory _UserListItem.fromJson(Map<String, dynamic> json) =
      _$UserListItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get firstname;
  @override
  String? get lastname;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get birthday;
  @override
  String? get gender;
  @override
  UserAddress? get address;
  @override
  @JsonKey(ignore: true)
  _$$UserListItemImplCopyWith<_$UserListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAddress _$UserAddressFromJson(Map<String, dynamic> json) {
  return _UserAddress.fromJson(json);
}

/// @nodoc
mixin _$UserAddress {
  String? get street => throw _privateConstructorUsedError;
  String? get streetName => throw _privateConstructorUsedError;
  String? get buildingNumber => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zipcode => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressCopyWith<UserAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressCopyWith<$Res> {
  factory $UserAddressCopyWith(
          UserAddress value, $Res Function(UserAddress) then) =
      _$UserAddressCopyWithImpl<$Res, UserAddress>;
  @useResult
  $Res call(
      {String? street,
      String? streetName,
      String? buildingNumber,
      String? city,
      String? zipcode,
      String? country});
}

/// @nodoc
class _$UserAddressCopyWithImpl<$Res, $Val extends UserAddress>
    implements $UserAddressCopyWith<$Res> {
  _$UserAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? streetName = freezed,
    Object? buildingNumber = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAddressImplCopyWith<$Res>
    implements $UserAddressCopyWith<$Res> {
  factory _$$UserAddressImplCopyWith(
          _$UserAddressImpl value, $Res Function(_$UserAddressImpl) then) =
      __$$UserAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? street,
      String? streetName,
      String? buildingNumber,
      String? city,
      String? zipcode,
      String? country});
}

/// @nodoc
class __$$UserAddressImplCopyWithImpl<$Res>
    extends _$UserAddressCopyWithImpl<$Res, _$UserAddressImpl>
    implements _$$UserAddressImplCopyWith<$Res> {
  __$$UserAddressImplCopyWithImpl(
      _$UserAddressImpl _value, $Res Function(_$UserAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? street = freezed,
    Object? streetName = freezed,
    Object? buildingNumber = freezed,
    Object? city = freezed,
    Object? zipcode = freezed,
    Object? country = freezed,
  }) {
    return _then(_$UserAddressImpl(
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      streetName: freezed == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as String?,
      buildingNumber: freezed == buildingNumber
          ? _value.buildingNumber
          : buildingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddressImpl implements _UserAddress {
  const _$UserAddressImpl(
      {this.street,
      this.streetName,
      this.buildingNumber,
      this.city,
      this.zipcode,
      this.country});

  factory _$UserAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressImplFromJson(json);

  @override
  final String? street;
  @override
  final String? streetName;
  @override
  final String? buildingNumber;
  @override
  final String? city;
  @override
  final String? zipcode;
  @override
  final String? country;

  @override
  String toString() {
    return 'UserAddress(street: $street, streetName: $streetName, buildingNumber: $buildingNumber, city: $city, zipcode: $zipcode, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressImpl &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.buildingNumber, buildingNumber) ||
                other.buildingNumber == buildingNumber) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, street, streetName, buildingNumber, city, zipcode, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressImplCopyWith<_$UserAddressImpl> get copyWith =>
      __$$UserAddressImplCopyWithImpl<_$UserAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressImplToJson(
      this,
    );
  }
}

abstract class _UserAddress implements UserAddress {
  const factory _UserAddress(
      {final String? street,
      final String? streetName,
      final String? buildingNumber,
      final String? city,
      final String? zipcode,
      final String? country}) = _$UserAddressImpl;

  factory _UserAddress.fromJson(Map<String, dynamic> json) =
      _$UserAddressImpl.fromJson;

  @override
  String? get street;
  @override
  String? get streetName;
  @override
  String? get buildingNumber;
  @override
  String? get city;
  @override
  String? get zipcode;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$UserAddressImplCopyWith<_$UserAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
