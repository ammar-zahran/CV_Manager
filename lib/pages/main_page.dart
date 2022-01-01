import 'package:cv_manager/pages/components/cv_create/create_cv_bottom_sheet.dart';
import 'package:cv_manager/pages/components/mainpage_card/mainpage_bdoy.dart';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 3,
        title: const Text("CV Manager", style: TextStyle(color: Colors.black)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showcreateCVForm(context);
        },
        child: const Icon(Icons.add),
      ),
      body: MainPageBody(),
    );
  }
}
