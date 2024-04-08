
enum CategoryType{
  inc,
  exp,
}
class CategoryM{
  final String name;
  final bool isdeleted;
  final CategoryType type;

  CategoryM({required this.name, required this.type,this.isdeleted=false});
}