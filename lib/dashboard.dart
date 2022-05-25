import 'package:demoproject/policies.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[900],
                      ),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Due Amount",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 22),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "\$3912.62",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "Active Policies",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "Pending \nCancelation",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "Cancelled Policies",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Text(
                                    "0",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ]),
                    ),
                  ),
                  //
                  SizedBox(
                    height: 10,
                  ),
                  Table(
                    defaultColumnWidth: IntrinsicColumnWidth(),
                    border: TableBorder.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 0),
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: buildButton(
                            'Policies',
                            Icon(
                              Icons.policy,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: buildButton(
                              'Invoices',
                              Icon(
                                Icons.document_scanner,
                                color: Colors.black,
                                size: 40,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: buildButton(
                              'Payments',
                              Icon(
                                Icons.payment,
                                color: Colors.black,
                                size: 40,
                              )),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: buildButton(
                            'Profile',
                            Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: buildButton(
                              'Send Documents',
                              Icon(
                                Icons.share,
                                color: Colors.black,
                                size: 40,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: buildButton(
                              'Notifications',
                              Icon(
                                Icons.notification_add,
                                color: Colors.black,
                                size: 40,
                              )),
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 0.5),
                        ],
                      ),
                      height: 40,
                      width: 140,
                      child: Center(
                          child: Text(
                        "Get a free quote",
                        style: TextStyle(color: Colors.orange),
                      )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                        boxShadow: [
                          BoxShadow(color: Colors.black, spreadRadius: 0.5),
                        ],
                      ),
                      height: 40,
                      width: 140,
                      child: Center(
                          child: Text(
                        "Get a free quote",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }

  Widget buildButton(String val, Icon icon, {int? index}) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PoliciesPage()));
      },
      child: Container(
          height: 80,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              icon,
              SizedBox(
                height: 3,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Text(
                  val,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                // ComponentText.buildTextWidget(
                //     title: val,
                //     color: Colors.black,
                //     fontSize: 12,
                //     textAlign: TextAlign.center
                // ),
              ),
            ],
          )),
    );
  }
}
