//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;

class MetadataEditorInfo {
  /// Returns a new [MetadataEditorInfo] instance.
  MetadataEditorInfo({
    this.parentalRatingOptions = const [],
    this.countries = const [],
    this.cultures = const [],
    this.externalIdInfos = const [],
    this.contentType,
    this.contentTypeOptions = const [],
  });

  List<ParentalRating> parentalRatingOptions;

  List<CountryInfo> countries;

  List<CultureDto> cultures;

  List<ExternalIdInfo> externalIdInfos;

  String? contentType;

  List<NameValuePair> contentTypeOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MetadataEditorInfo &&
    _deepEquality.equals(other.parentalRatingOptions, parentalRatingOptions) &&
    _deepEquality.equals(other.countries, countries) &&
    _deepEquality.equals(other.cultures, cultures) &&
    _deepEquality.equals(other.externalIdInfos, externalIdInfos) &&
    other.contentType == contentType &&
    _deepEquality.equals(other.contentTypeOptions, contentTypeOptions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (parentalRatingOptions.hashCode) +
    (countries.hashCode) +
    (cultures.hashCode) +
    (externalIdInfos.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (contentTypeOptions.hashCode);

  @override
  String toString() => 'MetadataEditorInfo[parentalRatingOptions=$parentalRatingOptions, countries=$countries, cultures=$cultures, externalIdInfos=$externalIdInfos, contentType=$contentType, contentTypeOptions=$contentTypeOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ParentalRatingOptions'] = this.parentalRatingOptions;
      json[r'Countries'] = this.countries;
      json[r'Cultures'] = this.cultures;
      json[r'ExternalIdInfos'] = this.externalIdInfos;
    if (this.contentType != null) {
      json[r'ContentType'] = this.contentType;
    } else {
      json[r'ContentType'] = null;
    }
      json[r'ContentTypeOptions'] = this.contentTypeOptions;
    return json;
  }

  /// Returns a new [MetadataEditorInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MetadataEditorInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MetadataEditorInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MetadataEditorInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MetadataEditorInfo(
        parentalRatingOptions: ParentalRating.listFromJson(json[r'ParentalRatingOptions']),
        countries: CountryInfo.listFromJson(json[r'Countries']),
        cultures: CultureDto.listFromJson(json[r'Cultures']),
        externalIdInfos: ExternalIdInfo.listFromJson(json[r'ExternalIdInfos']),
        contentType: mapValueOfType<String>(json, r'ContentType'),
        contentTypeOptions: NameValuePair.listFromJson(json[r'ContentTypeOptions']),
      );
    }
    return null;
  }

  static List<MetadataEditorInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MetadataEditorInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetadataEditorInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MetadataEditorInfo> mapFromJson(dynamic json) {
    final map = <String, MetadataEditorInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MetadataEditorInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MetadataEditorInfo-objects as value to a dart map
  static Map<String, List<MetadataEditorInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MetadataEditorInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MetadataEditorInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

