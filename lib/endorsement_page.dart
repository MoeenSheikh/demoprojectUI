import 'package:flutter/material.dart';

class EndorsementPage extends StatefulWidget {
  const EndorsementPage({Key? key}) : super(key: key);

  @override
  State<EndorsementPage> createState() => _EndorsementPageState();
}

class _EndorsementPageState extends State<EndorsementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Endorsement",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 20),
        child: Container(
          child: Table(
            defaultColumnWidth: IntrinsicColumnWidth(),
            border: TableBorder.all(
                color: Colors.white, style: BorderStyle.solid, width: 0),
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                  child: buildButton(
                    'Change of Address',
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
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                  child: buildButton(
                      'Change of vehicle',
                      Icon(
                        Icons.document_scanner,
                        color: Colors.black,
                        size: 40,
                      )),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                  child: buildButton(
                    'Change of Driver',
                    Icon(
                      Icons.document_scanner,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 20),
                  child: buildButton(
                      'Other',
                      Icon(
                        Icons.document_scanner,
                        color: Colors.black,
                        size: 40,
                      )),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton(String val, Icon icon, {int? index}) {
    return InkWell(
      onTap: () {},
      child: Container(
          height: 110,
          width: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
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
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
