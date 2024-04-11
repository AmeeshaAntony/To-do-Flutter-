
import 'package:hive_flutter/hive_flutter.dart';

enum CategoryType{
  inc,
  exp,
}

@HiveType(typeId: 1)
class CategoryM{
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final bool isdeleted;
  @HiveField(3)
  final CategoryType type;

  CategoryM({required this.id,required this.name, required this.type,this.isdeleted=false});
}