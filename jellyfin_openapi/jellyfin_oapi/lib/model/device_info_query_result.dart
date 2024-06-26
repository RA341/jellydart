//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;

class DeviceInfoQueryResult {
  /// Returns a new [DeviceInfoQueryResult] instance.
  DeviceInfoQueryResult({
    this.items = const [],
    this.totalRecordCount,
    this.startIndex,
  });

  /// Gets or sets the items.
  List<DeviceInfo>? items;

  /// Gets or sets the total number of records available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalRecordCount;

  /// Gets or sets the index of the first record in Items.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? startIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeviceInfoQueryResult &&
    _deepEquality.equals(other.items, items) &&
    other.totalRecordCount == totalRecordCount &&
    other.startIndex == startIndex;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items == null ? 0 : items!.hashCode) +
    (totalRecordCount == null ? 0 : totalRecordCount!.hashCode) +
    (startIndex == null ? 0 : startIndex!.hashCode);

  @override
  String toString() => 'DeviceInfoQueryResult[items=$items, totalRecordCount=$totalRecordCount, startIndex=$startIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.items != null) {
      json[r'Items'] = this.items;
    } else {
      json[r'Items'] = null;
    }
    if (this.totalRecordCount != null) {
      json[r'TotalRecordCount'] = this.totalRecordCount;
    } else {
      json[r'TotalRecordCount'] = null;
    }
    if (this.startIndex != null) {
      json[r'StartIndex'] = this.startIndex;
    } else {
      json[r'StartIndex'] = null;
    }
    return json;
  }

  /// Returns a new [DeviceInfoQueryResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeviceInfoQueryResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeviceInfoQueryResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeviceInfoQueryResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeviceInfoQueryResult(
        items: DeviceInfo.listFromJson(json[r'Items']),
        totalRecordCount: mapValueOfType<int>(json, r'TotalRecordCount'),
        startIndex: mapValueOfType<int>(json, r'StartIndex'),
      );
    }
    return null;
  }

  static List<DeviceInfoQueryResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeviceInfoQueryResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeviceInfoQueryResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeviceInfoQueryResult> mapFromJson(dynamic json) {
    final map = <String, DeviceInfoQueryResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeviceInfoQueryResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeviceInfoQueryResult-objects as value to a dart map
  static Map<String, List<DeviceInfoQueryResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeviceInfoQueryResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeviceInfoQueryResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

