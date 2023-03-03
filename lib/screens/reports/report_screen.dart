import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text(
          "Reports",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView(scrollDirection: Axis.vertical, shrinkWrap: true, children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 170,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.lightBlueAccent.withOpacity(0.3),
                            ),
                            child: const Text(
                              "Financial Reports",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Balance Sheet",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Taxation"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Profit and Loss",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Tax Summary Report"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Trial Balance",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("VAT Summary Report"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.lightBlueAccent.withOpacity(0.3),
                            ),
                            child: const Text(
                              "Sales Reports",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Balance Sheet",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Taxation"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Profit and Loss",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Tax Summary Report"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Trial Balance",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("VAT Summary Report"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.lightBlueAccent.withOpacity(0.3),
                            ),
                            child: const Text(
                              "Expense Reports",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Balance Sheet",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Taxation"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Profit and Loss",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Tax Summary Report"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Trial Balance",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("VAT Summary Report"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.lightBlueAccent.withOpacity(0.3),
                            ),
                            child: const Text(
                              "Inventory Reports",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Balance Sheet",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Taxation"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Profit and Loss",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Tax Summary Report"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Trial Balance",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("VAT Summary Report"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: 45,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.lightBlueAccent.withOpacity(0.3),
                            ),
                            child: const Text(
                              "Other Reports",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Balance Sheet",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Taxation"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Profit and Loss",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Tax Summary Report"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Trial Balance",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("VAT Summary Report"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
