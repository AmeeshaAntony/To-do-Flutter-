import 'package:flutter/material.dart';
import 'package:money/category/scatg.dart';
import 'package:money/home/widgets/bottom_navigation.dart';
import 'package:money/transactions/strans.dart';

class ScreenHome extends StatelessWidget {
   ScreenHome({super.key});

  static ValueNotifier <int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = [
    ScreenTransactions(),
    ScreenCategory(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text("Money Manager App"),centerTitle: true,),
      bottomNavigationBar: const BottomNavigation1(),
      body: SafeArea(child: ValueListenableBuilder(valueListenable: selectedIndexNotifier, builder:(BuildContext context,int updated,_){
        return _pages[updated];
      })),
      floatingActionButton: FloatingActionButton(onPressed: (){
        if(selectedIndexNotifier.value == 0)
          print("Add trans");
        
        else
          print("Add Category");
      },child: Icon(Icons.add),
      ),
    );
  }
}