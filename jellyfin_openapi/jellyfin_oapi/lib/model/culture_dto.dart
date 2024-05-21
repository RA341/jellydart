//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;

class CultureDto {
  /// Returns a new [CultureDto] instance.
  CultureDto({
    this.name,
    this.displayName,
    this.twoLetterISOLanguageName,
    this.threeLetterISOLanguageName,
    this.threeLetterISOLanguageNames = const [],
  });

  /// Gets the name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Gets the display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// Gets the name of the two letter ISO language.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? twoLetterISOLanguageName;

  /// Gets the name of the three letter ISO language.
  String? threeLetterISOLanguageName;

  List<String> threeLetterISOLanguageNames;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CultureDto &&
    other.name == name &&
    other.displayName == displayName &&
    other.twoLetterISOLanguageName == twoLetterISOLanguageName &&
    other.threeLetterISOLanguageName == threeLetterISOLanguageName &&
    _deepEquality.equals(other.threeLetterISOLanguageNames, threeLetterISOLanguageNames);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (twoLetterISOLanguageName == null ? 0 : twoLetterISOLanguageName!.hashCode) +
    (threeLetterISOLanguageName == null ? 0 : threeLetterISOLanguageName!.hashCode) +
    (threeLetterISOLanguageNames.hashCode);

  @override
  String toString() => 'CultureDto[name=$name, displayName=$displayName, twoLetterISOLanguageName=$twoLetterISOLanguageName, threeLetterISOLanguageName=$threeLetterISOLanguageName, threeLetterISOLanguageNames=$threeLetterISOLanguageNames]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'Name'] = this.name;
    } else {
      json[r'Name'] = null;
    }
    if (this.displayName != null) {
      json[r'DisplayName'] = this.displayName;
    } else {
      json[r'DisplayName'] = null;
    }
    if (this.twoLetterISOLanguageName != null) {
      json[r'TwoLetterISOLanguageName'] = this.twoLetterISOLanguageName;
    } else {
      json[r'TwoLetterISOLanguageName'] = null;
    }
    if (this.threeLetterISOLanguageName != null) {
      json[r'ThreeLetterISOLanguageName'] = this.threeLetterISOLanguageName;
    } else {
      json[r'ThreeLetterISOLanguageName'] = null;
    }
      json[r'ThreeLetterISOLanguageNames'] = this.threeLetterISOLanguageNames;
    return json;
  }

  /// Returns a new [CultureDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CultureDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CultureDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CultureDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CultureDto(
        name: mapValueOfType<String>(json, r'Name'),
        displayName: mapValueOfType<String>(json, r'DisplayName'),
        twoLetterISOLanguageName: mapValueOfType<String>(json, r'TwoLetterISOLanguageName'),
        threeLetterISOLanguageName: mapValueOfType<String>(json, r'ThreeLetterISOLanguageName'),
        threeLetterISOLanguageNames: json[r'ThreeLetterISOLanguageNames'] is Iterable
            ? (json[r'ThreeLetterISOLanguageNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CultureDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CultureDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CultureDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CultureDto> mapFromJson(dynamic json) {
    final map = <String, CultureDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CultureDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CultureDto-objects as value to a dart map
  static Map<String, List<CultureDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CultureDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CultureDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

