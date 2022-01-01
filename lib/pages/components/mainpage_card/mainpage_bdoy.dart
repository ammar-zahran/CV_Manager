import 'package:cv_manager/data/data.dart';
import 'package:cv_manager/pages/components/cv_deatils/cv_details.dart';
import 'package:cv_manager/pages/components/mainpage_card/cv_card_view.dart';
import 'package:flutter/material.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Column(
            children: List.generate(
              informations.length,
              (index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          CvDetails(informations: informations[index]),
                    ),
                  );
                },
                child: CVCard(
                  informations: informations[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
