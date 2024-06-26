//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;

/// Enum GroupShuffleMode.
class GroupShuffleMode {
  /// Instantiate a new enum with the provided [value].
  const GroupShuffleMode._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const sorted = GroupShuffleMode._(r'Sorted');
  static const shuffle = GroupShuffleMode._(r'Shuffle');
  static const unknownDefaultOpenApi = GroupShuffleMode._(r'unknown_default_open_api');

  /// List of all possible values in this [enum][GroupShuffleMode].
  static const values = <GroupShuffleMode>[
    sorted,
    shuffle,
    unknownDefaultOpenApi,
  ];

  static GroupShuffleMode? fromJson(dynamic value) => GroupShuffleModeTypeTransformer().decode(value);

  static List<GroupShuffleMode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupShuffleMode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupShuffleMode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GroupShuffleMode] to String,
/// and [decode] dynamic data back to [GroupShuffleMode].
class GroupShuffleModeTypeTransformer {
  factory GroupShuffleModeTypeTransformer() => _instance ??= const GroupShuffleModeTypeTransformer._();

  const GroupShuffleModeTypeTransformer._();

  String encode(GroupShuffleMode data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupShuffleMode.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupShuffleMode? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Sorted': return GroupShuffleMode.sorted;
        case r'Shuffle': return GroupShuffleMode.shuffle;
        case r'unknown_default_open_api': return GroupShuffleMode.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GroupShuffleModeTypeTransformer] instance.
  static GroupShuffleModeTypeTransformer? _instance;
}

