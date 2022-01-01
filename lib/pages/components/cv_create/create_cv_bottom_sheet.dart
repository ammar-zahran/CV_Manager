import 'package:flutter/material.dart';

void showcreateCVForm(context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('New CV', style: TextStyle(fontSize: 20)),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.cancel,
                            color: Colors.grey,
                            size: 25,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Personal Information',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text('First Name: ', style: TextStyle(fontSize: 17)),
                        const Spacer(
                          flex: 2,
                        ),
                        Container(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          width: MediaQuery.of(context).size.height / 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('Last Name: ', style: TextStyle(fontSize: 17)),
                        Spacer(
                          flex: 2,
                        ),
                        Container(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          width: MediaQuery.of(context).size.height / 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('City: ', style: TextStyle(fontSize: 17)),
                        const Spacer(
                          flex: 2,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .14,
                        ),
                        Container(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          width: MediaQuery.of(context).size.height / 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('Email: ', style: TextStyle(fontSize: 17)),
                        const Spacer(
                          flex: 2,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .14,
                        ),
                        Container(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          width: MediaQuery.of(context).size.height / 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('Mobile number: ', style: TextStyle(fontSize: 17)),
                        const Spacer(
                          flex: 2,
                        ),
                        Container(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          width: MediaQuery.of(context).size.height / 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Experience Information',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text('Company name: ', style: TextStyle(fontSize: 17)),
                        const Spacer(
                          flex: 2,
                        ),
                        Container(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          width: MediaQuery.of(context).size.height / 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('Company city: ', style: TextStyle(fontSize: 17)),
                        const Spacer(
                          flex: 2,
                        ),
                        Container(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          width: MediaQuery.of(context).size.height / 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text('Company field: ', style: TextStyle(fontSize: 17)),
                        const Spacer(
                          flex: 2,
                        ),
                        Container(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                          width: MediaQuery.of(context).size.height / 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Create CV'),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(240, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            primary: Colors.blue,
                            padding: EdgeInsets.only(left: 50, right: 50)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                )),
          ),
        );
      });
}
