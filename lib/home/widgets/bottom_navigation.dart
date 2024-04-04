import 'package:flutter/material.dart';
import 'package:money/home/shome.dart';

class BottomNavigation1 extends StatelessWidget {
  const BottomNavigation1({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder: (BuildContext ctx, int updated, Widget? _){
        return BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
        currentIndex: updated,
        onTap: (newIndex){
          ScreenHome.selectedIndexNotifier.value=newIndex;
        },
        
        
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Transactions'),
        BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Category'),
      ]);
      },
    );
  }
}