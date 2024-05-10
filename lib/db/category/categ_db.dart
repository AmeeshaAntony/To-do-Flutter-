import 'package:money/models/category/category.dart';
abstract class CategoryDBf{
  //List<CategoryM> getcat();
  Future<void> insertCategory(CategoryM value);//function to insert values.Declared as future bcz time delay occurs in insertion of data

}

class CategoryDB implements CategoryDBf{
  @override
  Future<void> insertCategory(CategoryM value) async {//what must occur on insertion must be written here.
    
  }

}

