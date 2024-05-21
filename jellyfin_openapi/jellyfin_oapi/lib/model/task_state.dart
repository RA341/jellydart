//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;

/// Enum TaskState.
class TaskState {
  /// Instantiate a new enum with the provided [value].
  const TaskState._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const idle = TaskState._(r'Idle');
  static const cancelling = TaskState._(r'Cancelling');
  static const running = TaskState._(r'Running');
  static const unknownDefaultOpenApi = TaskState._(r'unknown_default_open_api');

  /// List of all possible values in this [enum][TaskState].
  static const values = <TaskState>[
    idle,
    cancelling,
    running,
    unknownDefaultOpenApi,
  ];

  static TaskState? fromJson(dynamic value) => TaskStateTypeTransformer().decode(value);

  static List<TaskState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskState] to String,
/// and [decode] dynamic data back to [TaskState].
class TaskStateTypeTransformer {
  factory TaskStateTypeTransformer() => _instance ??= const TaskStateTypeTransformer._();

  const TaskStateTypeTransformer._();

  String encode(TaskState data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskState.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskState? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Idle': return TaskState.idle;
        case r'Cancelling': return TaskState.cancelling;
        case r'Running': return TaskState.running;
        case r'unknown_default_open_api': return TaskState.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskStateTypeTransformer] instance.
  static TaskStateTypeTransformer? _instance;
}

