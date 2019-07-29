// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'Category.dart';
import 'category_route.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryRoute()
    )
  );
}

/*void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Rectangle',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: Center(
          child: Category(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,
          ),
        ),
      ),
    ),
  );
}*/

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,
        child: Center(
          child: Text(
            'Hello!',
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
