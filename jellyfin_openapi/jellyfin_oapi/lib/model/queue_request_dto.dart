//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;

class QueueRequestDto {
  /// Returns a new [QueueRequestDto] instance.
  QueueRequestDto({
    this.itemIds = const [],
    this.mode,
  });

  /// Gets or sets the items to enqueue.
  List<String> itemIds;

  /// Gets or sets the mode in which to add the new items.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GroupQueueMode? mode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueueRequestDto &&
    _deepEquality.equals(other.itemIds, itemIds) &&
    other.mode == mode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (itemIds.hashCode) +
    (mode == null ? 0 : mode!.hashCode);

  @override
  String toString() => 'QueueRequestDto[itemIds=$itemIds, mode=$mode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ItemIds'] = this.itemIds;
    if (this.mode != null) {
      json[r'Mode'] = this.mode;
    } else {
      json[r'Mode'] = null;
    }
    return json;
  }

  /// Returns a new [QueueRequestDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueueRequestDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueueRequestDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueueRequestDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueueRequestDto(
        itemIds: json[r'ItemIds'] is Iterable
            ? (json[r'ItemIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        mode: GroupQueueMode.fromJson(json[r'Mode']),
      );
    }
    return null;
  }

  static List<QueueRequestDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueueRequestDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueueRequestDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueueRequestDto> mapFromJson(dynamic json) {
    final map = <String, QueueRequestDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueueRequestDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueueRequestDto-objects as value to a dart map
  static Map<String, List<QueueRequestDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueueRequestDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueueRequestDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

