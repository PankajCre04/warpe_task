import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warpe_task/screens/income/inner_screens/invoice_screen.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text(
          "Income",
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
                      child: ListWidget("Invoice"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Invoice Returns"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Refund Voucher"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Refund Voucher"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Receipts"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Estimate"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Sales Order"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Creedit Notes"),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListWidget("Customers"),
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
