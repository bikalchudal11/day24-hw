// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable, sized_box_for_whitespace

import 'package:day24/providers/settings_provider.dart';
import 'package:day24/resources/components/incre_decre_container.dart';
import 'package:day24/resources/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<SettingsProvider>(context, listen: false);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Font Size:",
                  style: TextStyle(fontSize: 18),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        prov.decreFontSize();
                      },
                      child: IncreDecreContainer(
                        iconName: Icon(Icons.remove),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.symmetric(horizontal: BorderSide()),
                      ),
                      child: Center(
                        child: Consumer<SettingsProvider>(
                            builder: (context, value, child) {
                          return Text(
                            value.fontSize.toString(),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          );
                        }),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        prov.increFontSize();
                      },
                      child: IncreDecreContainer(
                        iconName: Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            //primary color
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Primary Color:",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Consumer<SettingsProvider>(builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  activeColor: value.pColors[0],
                                  value: value.pColors[0],
                                  groupValue: value.selectedColor,
                                  onChanged: (v) {
                                    value.switchRadioPrim(v!);
                                  },
                                ),
                                Text("Deep Purple")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  activeColor: value.pColors[1],
                                  value: value.pColors[1],
                                  groupValue: value.selectedColor,
                                  onChanged: (v) {
                                    value.switchRadioPrim(v!);
                                  },
                                ),
                                Text("Deep Orange")
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  activeColor: value.pColors[2],
                                  value: value.pColors[2],
                                  groupValue: value.selectedColor,
                                  onChanged: (v) {
                                    value.switchRadioPrim(v!);
                                  },
                                ),
                                Text("Teal")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  activeColor: value.pColors[3],
                                  value: value.pColors[3],
                                  groupValue: value.selectedColor,
                                  onChanged: (v) {
                                    value.switchRadioPrim(v!);
                                  },
                                ),
                                Text("Green")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                })
              ],
            ),
            SizedBox(
              height: 15,
            ),

            //secondary color
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Secondary Color:",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Consumer<SettingsProvider>(builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  activeColor: value.sColors[0],
                                  value: value.sColors[0],
                                  groupValue: value.selectedColorSec,
                                  onChanged: (v) {
                                    value.switchRadioSec(v!);
                                  },
                                ),
                                Text("Black")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  activeColor: value.sColors[1],
                                  value: value.sColors[1],
                                  groupValue: value.selectedColorSec,
                                  onChanged: (v) {
                                    value.switchRadioSec(v!);
                                  },
                                ),
                                Text("Red")
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  activeColor: value.sColors[2],
                                  value: value.sColors[2],
                                  groupValue: value.selectedColorSec,
                                  onChanged: (v) {
                                    value.switchRadioSec(v!);
                                  },
                                ),
                                Text("Blue")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio(
                                  activeColor: value.sColors[3],
                                  value: value.sColors[3],
                                  groupValue: value.selectedColorSec,
                                  onChanged: (v) {
                                    value.switchRadioSec(v!);
                                  },
                                ),
                                Text("Yellow")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                })
              ],
            ),
            SizedBox(
              height: 15,
            ),

            //font-family
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Font-family:",
                  style: TextStyle(fontSize: 18),
                ),
                Consumer<SettingsProvider>(builder: (context, value, child) {
                  return DropdownButton<String>(
                    value: value.dropdownValue,
                    onChanged: (String? v) {
                      value.switchFontFamily(v!);
                    },
                    //using map
                    items: value.fontFamily
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),

                    //  [
                    //   DropdownMenuItem(
                    //     value: "Roboto",
                    //     child: Text("Roboto"),
                    //   ),
                    //   DropdownMenuItem(
                    //     value: "OpenSans",
                    //     child: Text("OpenSans"),
                    //   ),
                    //   DropdownMenuItem(
                    //     value: "Montserrat",
                    //     child: Text("Montserrat"),
                    //   ),
                    //   DropdownMenuItem(
                    //     value: "Tahoma",
                    //     child: Text("Tahoma"),
                    //   ),
                    //   DropdownMenuItem(
                    //     value: "TimesRoman",
                    //     child: Text("TimesRoman"),
                    //   ),
                    // ],
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
