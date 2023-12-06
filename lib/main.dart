import 'dart:js';

import 'package:example/models/todos.dart';
import 'package:example/navigation/detailTodos.dart';
import 'package:example/navigation/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "Example",
        initialRoute: '/',
        routes: {
          '/': (context) => Home(
                todo: List.generate(
                    100,
                    (index) =>
                        Todos('Todo $index', 'Description todo for $index')),
              ),
          '/detail_todo': (context) => DetailTodos()
        },
      ),
    );
