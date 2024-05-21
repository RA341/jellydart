//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;

class StartupConfigurationDto {
  /// Returns a new [StartupConfigurationDto] instance.
  StartupConfigurationDto({
    this.uICulture,
    this.metadataCountryCode,
    this.preferredMetadataLanguage,
  });

  /// Gets or sets UI language culture.
  String? uICulture;

  /// Gets or sets the metadata country code.
  String? metadataCountryCode;

  /// Gets or sets the preferred language for the metadata.
  String? preferredMetadataLanguage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StartupConfigurationDto &&
    other.uICulture == uICulture &&
    other.metadataCountryCode == metadataCountryCode &&
    other.preferredMetadataLanguage == preferredMetadataLanguage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (uICulture == null ? 0 : uICulture!.hashCode) +
    (metadataCountryCode == null ? 0 : metadataCountryCode!.hashCode) +
    (preferredMetadataLanguage == null ? 0 : preferredMetadataLanguage!.hashCode);

  @override
  String toString() => 'StartupConfigurationDto[uICulture=$uICulture, metadataCountryCode=$metadataCountryCode, preferredMetadataLanguage=$preferredMetadataLanguage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.uICulture != null) {
      json[r'UICulture'] = this.uICulture;
    } else {
      json[r'UICulture'] = null;
    }
    if (this.metadataCountryCode != null) {
      json[r'MetadataCountryCode'] = this.metadataCountryCode;
    } else {
      json[r'MetadataCountryCode'] = null;
    }
    if (this.preferredMetadataLanguage != null) {
      json[r'PreferredMetadataLanguage'] = this.preferredMetadataLanguage;
    } else {
      json[r'PreferredMetadataLanguage'] = null;
    }
    return json;
  }

  /// Returns a new [StartupConfigurationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartupConfigurationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StartupConfigurationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StartupConfigurationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartupConfigurationDto(
        uICulture: mapValueOfType<String>(json, r'UICulture'),
        metadataCountryCode: mapValueOfType<String>(json, r'MetadataCountryCode'),
        preferredMetadataLanguage: mapValueOfType<String>(json, r'PreferredMetadataLanguage'),
      );
    }
    return null;
  }

  static List<StartupConfigurationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartupConfigurationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartupConfigurationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartupConfigurationDto> mapFromJson(dynamic json) {
    final map = <String, StartupConfigurationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartupConfigurationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartupConfigurationDto-objects as value to a dart map
  static Map<String, List<StartupConfigurationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StartupConfigurationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartupConfigurationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

