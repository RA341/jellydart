//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;

class ObjectGroupUpdate {
  /// Returns a new [ObjectGroupUpdate] instance.
  ObjectGroupUpdate({
    this.groupId,
    this.type,
    this.data,
  });

  /// Gets the group identifier.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? groupId;

  /// Gets the update type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GroupUpdateType? type;

  /// Gets the update data.
  Object? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ObjectGroupUpdate &&
    other.groupId == groupId &&
    other.type == type &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (groupId == null ? 0 : groupId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'ObjectGroupUpdate[groupId=$groupId, type=$type, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.groupId != null) {
      json[r'GroupId'] = this.groupId;
    } else {
      json[r'GroupId'] = null;
    }
    if (this.type != null) {
      json[r'Type'] = this.type;
    } else {
      json[r'Type'] = null;
    }
    if (this.data != null) {
      json[r'Data'] = this.data;
    } else {
      json[r'Data'] = null;
    }
    return json;
  }

  /// Returns a new [ObjectGroupUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ObjectGroupUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ObjectGroupUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ObjectGroupUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ObjectGroupUpdate(
        groupId: mapValueOfType<String>(json, r'GroupId'),
        type: GroupUpdateType.fromJson(json[r'Type']),
        data: mapValueOfType<Object>(json, r'Data'),
      );
    }
    return null;
  }

  static List<ObjectGroupUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ObjectGroupUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ObjectGroupUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ObjectGroupUpdate> mapFromJson(dynamic json) {
    final map = <String, ObjectGroupUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ObjectGroupUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ObjectGroupUpdate-objects as value to a dart map
  static Map<String, List<ObjectGroupUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ObjectGroupUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ObjectGroupUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

