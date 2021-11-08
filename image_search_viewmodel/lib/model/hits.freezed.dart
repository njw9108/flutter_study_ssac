// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hits _$HitsFromJson(Map<String, dynamic> json) {
  return _Hits.fromJson(json);
}

/// @nodoc
class _$HitsTearOff {
  const _$HitsTearOff();

  _Hits call({required String previewURL, required String tags}) {
    return _Hits(
      previewURL: previewURL,
      tags: tags,
    );
  }

  Hits fromJson(Map<String, Object?> json) {
    return Hits.fromJson(json);
  }
}

/// @nodoc
const $Hits = _$HitsTearOff();

/// @nodoc
mixin _$Hits {
  String get previewURL => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitsCopyWith<Hits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitsCopyWith<$Res> {
  factory $HitsCopyWith(Hits value, $Res Function(Hits) then) =
      _$HitsCopyWithImpl<$Res>;
  $Res call({String previewURL, String tags});
}

/// @nodoc
class _$HitsCopyWithImpl<$Res> implements $HitsCopyWith<$Res> {
  _$HitsCopyWithImpl(this._value, this._then);

  final Hits _value;
  // ignore: unused_field
  final $Res Function(Hits) _then;

  @override
  $Res call({
    Object? previewURL = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      previewURL: previewURL == freezed
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HitsCopyWith<$Res> implements $HitsCopyWith<$Res> {
  factory _$HitsCopyWith(_Hits value, $Res Function(_Hits) then) =
      __$HitsCopyWithImpl<$Res>;
  @override
  $Res call({String previewURL, String tags});
}

/// @nodoc
class __$HitsCopyWithImpl<$Res> extends _$HitsCopyWithImpl<$Res>
    implements _$HitsCopyWith<$Res> {
  __$HitsCopyWithImpl(_Hits _value, $Res Function(_Hits) _then)
      : super(_value, (v) => _then(v as _Hits));

  @override
  _Hits get _value => super._value as _Hits;

  @override
  $Res call({
    Object? previewURL = freezed,
    Object? tags = freezed,
  }) {
    return _then(_Hits(
      previewURL: previewURL == freezed
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hits implements _Hits {
  _$_Hits({required this.previewURL, required this.tags});

  factory _$_Hits.fromJson(Map<String, dynamic> json) => _$$_HitsFromJson(json);

  @override
  final String previewURL;
  @override
  final String tags;

  @override
  String toString() {
    return 'Hits(previewURL: $previewURL, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Hits &&
            (identical(other.previewURL, previewURL) ||
                other.previewURL == previewURL) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, previewURL, tags);

  @JsonKey(ignore: true)
  @override
  _$HitsCopyWith<_Hits> get copyWith =>
      __$HitsCopyWithImpl<_Hits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HitsToJson(this);
  }
}

abstract class _Hits implements Hits {
  factory _Hits({required String previewURL, required String tags}) = _$_Hits;

  factory _Hits.fromJson(Map<String, dynamic> json) = _$_Hits.fromJson;

  @override
  String get previewURL;
  @override
  String get tags;
  @override
  @JsonKey(ignore: true)
  _$HitsCopyWith<_Hits> get copyWith => throw _privateConstructorUsedError;
}
