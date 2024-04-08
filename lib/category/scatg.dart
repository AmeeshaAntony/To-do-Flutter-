import 'package:flutter/material.dart';
import 'package:money/screens/category/expense.dart';
import 'package:money/screens/category/income.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({super.key});

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState(){
    _tabController= TabController(length : 2,vsync: this); 
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.cyanAccent,
          tabs: [
          Tab( text: 'Income',),
          Tab( text: 'Expense'),
      ]),
      Expanded(
        child: TabBarView(
          controller: _tabController,
          children: const [
            incomecat(),
            expensecat(),
        ]),
      )
      ],
    );
  }
}