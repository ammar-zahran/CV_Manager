import 'package:cv_manager/data/data.dart';
import 'package:cv_manager/pages/components/cv_deatils/cv_edit.dart';
import 'package:flutter/material.dart';

class CvDetails extends StatefulWidget {
  final Information informations;
  const CvDetails({Key? key, required this.informations}) : super(key: key);

  @override
  _CvDetailsState createState() => _CvDetailsState();
}

class _CvDetailsState extends State<CvDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 3,
        title: const Text("CV View", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
              onPressed: () {
                showEditCVForm(context);
              },
              icon: Icon(Icons.edit))
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    //replace this Container with your Card
                    color: Colors.grey[400],
                    height: 200.0,
                  ),
                  Positioned(
                    bottom: -10,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: DecoratedBox(
                          decoration: ShapeDecoration(
                            shape: CircleBorder(),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(widget.informations.Image)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    widget.informations.FName + ' ' + widget.informations.LName,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Personal Information',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.email),
                  SizedBox(
                    width: 20,
                  ),
                  Text(widget.informations.Email)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.phone_android),
                  SizedBox(
                    width: 20,
                  ),
                  Text(widget.informations.MobileNum.toString())
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 20,
                  ),
                  Text(widget.informations.City)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Experience Information',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.corporate_fare),
                  SizedBox(
                    width: 20,
                  ),
                  Text(widget.informations.CName)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 20,
                  ),
                  Text(widget.informations.CCity)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.work),
                  SizedBox(
                    width: 20,
                  ),
                  Text(widget.informations.CField)
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Delete CV'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(240, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      primary: Colors.red,
                      padding: EdgeInsets.only(left: 50, right: 50)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
