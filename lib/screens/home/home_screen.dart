import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text(
          "Sikarwars",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.comment_bank),
                const Text("Banking"),
                const Spacer(),
                InkWell(onTap: () {}, child: Contains("New Transaction")),
                InkWell(onTap: () {}, child: Contains("Bank Reconcilation")),
              ],
            ),
            SizedBox(
              height: size.height * 0.23,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.grey[100],
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: ListWidget("Withdraw Cash"),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListWidget("Deposit Cash"),
                        ),
                        InkWell(
                          onTap: () {},
                          child: ListWidget("Transfer Cash"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
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
            'Withdraw Cash',
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

  Widget Contains(String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
