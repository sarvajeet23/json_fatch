import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/detail_user_data.dart';

Widget list(Detailuserdata detailuser) {
  return ListTile(
    title: Text(detailuser.name),
    subtitle: Text(detailuser.email),
  );
}
