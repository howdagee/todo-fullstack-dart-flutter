import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'todo.g.dart';

/// {@template todo}
/// A single todo item
///
/// Contains a [title], [description], and [id], in addition to a [isCompleted]
/// flag
@immutable
@JsonSerializable()
class Todo extends Equatable {
  /// {@macro todo}
  Todo({
    this.id,
    required this.title,
    this.description = '',
    this.isCompleted = false,
  }) : assert(id == null || id.isNotEmpty, 'id cannot be empty');

  /// The unique identifier fo the todo.
  ///
  /// Cannot be empty
  final String? id;

  /// The title of the todo.
  ///
  /// `Note:`the title may be empty.
  final String title;

  /// The description of the todo.
  ///
  /// Defaults to an empty string.
  final String description;

  /// Whether the todo is completed.
  ///
  /// Defaults to `false`.
  final bool isCompleted;

  /// Returns a copy of this todo with the given values updated.
  ///
  /// {@macro todo}
  Todo copyWith({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  /// Deserializes the given `Map<String, dynamic>` into a [Todo].
  static Todo fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  /// Converts this [Todo] into a `Map<String, dynamic>` type that can be used
  /// as json.
  Map<String, dynamic> toJson() => _$TodoToJson(this);

  @override
  List<Object?> get props => [id, title, description, isCompleted];
}
