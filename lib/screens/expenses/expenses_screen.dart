import 'package:flutter/material.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text(
          "Expenses",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.grey[100],
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Record Expenses"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Record Purchase"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Make Payment"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Debit Notes"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Vendors"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ListWidget(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            Icons.wallet,
            color: Colors.green[900],
          ),
          Text(
            '$text',
            style: TextStyle(
              fontSize: 19,
              color: Colors.green[900],
              fontWeight: FontWeight.w400,
            ), //Textstyle
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.green[900],
            ),
          ),
        ],
      ),
    );
  }
}
