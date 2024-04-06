import 'package:flutter/material.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx,index){
        return Card(
          child: ListTile(
            leading: Text('12 dec 2024'),title: Text('12345'),subtitle: Text('Category Name'),
          ),
        );
      }, separatorBuilder: (ctx,index){
          return const SizedBox(height: 10,);
      }, itemCount:10);
  }
}