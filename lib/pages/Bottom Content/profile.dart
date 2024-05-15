// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:day24/providers/people_provider.dart';
import 'package:day24/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pColor,
        foregroundColor: sColor,
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 23,
            color: sColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 60,
                child: Icon(
                  Icons.person,
                  size: 90,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Consumer<PeopleProvider>(
                  builder: (context, value, child) {
                    return value.selectedPersonId == null
                        ? SizedBox(
                            child: Text(
                              textAlign: TextAlign.center,
                              "Please select person from home to view their details !",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Name:",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    value.viewDetails()["name"],
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Address:",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    value.viewDetails()["address"]["city"],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Works in:",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    value.viewDetails()["company"]["name"],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Phone:",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    value.viewDetails()["phone"],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Email:",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    value.viewDetails()["email"],
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
