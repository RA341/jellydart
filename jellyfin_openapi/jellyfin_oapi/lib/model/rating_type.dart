//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;


class RatingType {
  /// Instantiate a new enum with the provided [value].
  const RatingType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const score = RatingType._(r'Score');
  static const likes = RatingType._(r'Likes');
  static const unknownDefaultOpenApi = RatingType._(r'unknown_default_open_api');

  /// List of all possible values in this [enum][RatingType].
  static const values = <RatingType>[
    score,
    likes,
    unknownDefaultOpenApi,
  ];

  static RatingType? fromJson(dynamic value) => RatingTypeTypeTransformer().decode(value);

  static List<RatingType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RatingType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RatingType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RatingType] to String,
/// and [decode] dynamic data back to [RatingType].
class RatingTypeTypeTransformer {
  factory RatingTypeTypeTransformer() => _instance ??= const RatingTypeTypeTransformer._();

  const RatingTypeTypeTransformer._();

  String encode(RatingType data) => data.value;

  /// Decodes a [dynamic value][data] to a RatingType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RatingType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Score': return RatingType.score;
        case r'Likes': return RatingType.likes;
        case r'unknown_default_open_api': return RatingType.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RatingTypeTypeTransformer] instance.
  static RatingTypeTypeTransformer? _instance;
}

