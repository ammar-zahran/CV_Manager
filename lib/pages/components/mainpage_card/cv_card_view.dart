import 'package:cv_manager/data/data.dart';
import 'package:flutter/material.dart';

class CVCard extends StatefulWidget {
  final Information informations;
  const CVCard({Key? key, required this.informations}) : super(key: key);

  @override
  State<CVCard> createState() => _CVCardState();
}

class _CVCardState extends State<CVCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.informations.Image),
                  radius: 80,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.informations.FName + ' ' + widget.informations.LName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
