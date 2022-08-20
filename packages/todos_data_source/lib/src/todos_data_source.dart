// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:todos_data_source/src/models/todo.dart';

/// {@template todos_data_source}
/// A generic interface for managing todos.
/// {@endtemplate}
abstract class TodosDataSource {
  /// Create and return the newly created todo.
  Future<Todo> create(Todo todo);

  /// Return a todo with the provided [id] if one exists.
  Future<Todo> read(String id);

  /// Update the todo with the provided [id] to match [todo] and return the
  /// updated todo.
  Future<Todo> update(String id, Todo todo);

  /// Deletes the todo with the provided [id] if one exists.
  Future<Todo> delete(String id);
}
