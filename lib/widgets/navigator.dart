import 'package:flutter/material.dart';

void nviagtlogint(BuildContext context,Widget Sich) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => Sich,
      ),
    );
  }