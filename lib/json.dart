// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/json_inside_json.dart';
import 'package:flutter_application_1/method/list.dart';
import 'package:flutter_application_1/model/detail_user_data.dart';

class Json extends StatelessWidget {
  const Json({super.key});

  @override
  Widget build(BuildContext context) {
    List<Detailuserdata> detailuser = <Detailuserdata>[];
    for (var json in detailUserData) {
      var model = Detailuserdata.fromjson(json);
      detailuser.add(model);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Just Check"),
      ),
      body: ListView.builder(
        itemCount: detailuser.length,
        itemBuilder: (context, index) => list(detailuser[index]),
      ),
    );
  }
}
