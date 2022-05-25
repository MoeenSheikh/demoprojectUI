import 'package:demoproject/policy_detail_page.dart';
import 'package:flutter/material.dart';

class PoliciesPage extends StatefulWidget {
  const PoliciesPage({Key? key}) : super(key: key);

  @override
  State<PoliciesPage> createState() => _PoliciesPageState();
}

class _PoliciesPageState extends State<PoliciesPage> {
  List<String> policyNumbers = ['C88888', 'C99999'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Policies",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: Container(
        child: Column(children: [
          Icon(
            Icons.refresh,
            color: Colors.orange,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 140.0 * policyNumbers.length,
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: listTileWidget(policyNumbers[index]),
                  );
                }),
          )
        ]),
      ),
    );
  }

  Widget listTileWidget(String policyNumber) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PolicyDetailPage()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.policy),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Policy # $policyNumber"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("AMERICAN TRANSIT"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Policy Type: LIABILITY")
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.green,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Active",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Effective Date"),
                    Text("03/01/2022"),
                  ],
                ),
                Column(
                  children: [
                    Text("Expiry Date"),
                    Text("03/01/2023"),
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
