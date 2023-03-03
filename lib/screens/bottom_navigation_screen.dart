import 'package:flutter/material.dart';
import 'package:warpe_task/screens/accounting/accounting_screen.dart';
import 'package:warpe_task/screens/banking/banking_screen.dart';
import 'package:warpe_task/screens/expenses/expenses_screen.dart';
import 'package:warpe_task/screens/home/home_screen.dart';
import 'package:warpe_task/screens/income/income_screen.dart';
import 'package:warpe_task/screens/items/items_screen.dart';
import 'package:warpe_task/screens/reports/report_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);
  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _pageIndex = 0;
  final List _pages = const [
    HomeScreen(),
    IncomeScreen(),
    ExpensesScreen(),
    BankingScreen(),
    AccountingScreen(),
    ItemsScreen(),
    ReportScreen(),
  ];
  changePage(int index) {
    _pageIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          changePage(index);
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.green),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on), label: "Income"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel_outlined), label: "Expenses"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Banking"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_remove), label: "Accounting"),
          BottomNavigationBarItem(icon: Icon(Icons.ice_skating_outlined), label: "Items"),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Reports"),
        ],
      ),
    );
  }
}
