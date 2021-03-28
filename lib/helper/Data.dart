import 'package:flutter_flutter_news/models/CategoryModel.dart';

List<CategoryModel> getCategoryes() {
  List<CategoryModel> category = [];

  CategoryModel categoryModel = new CategoryModel();
  categoryModel.categoryName = 'bussines';
  categoryModel.imageUrl =
      'https://images.unsplash.com/photo-1543555033-397fbd4e1ec4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80';
  category.add(categoryModel);

  CategoryModel categoryModelGeneral = new CategoryModel();
  categoryModelGeneral.categoryName = 'general';
  categoryModelGeneral.imageUrl =
      'https://images.unsplash.com/photo-1586436009043-67ef0e875a6d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
  category.add(categoryModel);

  CategoryModel categoryModelHealth = new CategoryModel();
  categoryModelHealth.categoryName = 'health';
  categoryModelHealth.imageUrl =
      'https://images.unsplash.com/photo-1532938911079-1b06ac7ceec7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80';
  category.add(categoryModel);

  CategoryModel categoryModelScience = new CategoryModel();
  categoryModelScience.categoryName = 'science';
  categoryModelScience.imageUrl =
      'https://images.unsplash.com/photo-1581091014534-898da33e356e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';
  category.add(categoryModel);

  CategoryModel categoryModelSports = new CategoryModel();
  categoryModelSports.categoryName = 'sports';
  categoryModelSports.imageUrl =
      'https://images.unsplash.com/photo-1569074187119-c87815b476da?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=925&q=80';
  category.add(categoryModel);

  CategoryModel categoryModelTecnolgy = new CategoryModel();
  categoryModelTecnolgy.categoryName = 'tecnology';
  categoryModelTecnolgy.imageUrl =
      'https://images.unsplash.com/photo-1535378917042-10a22c95931a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1031&q=80';
  category.add(categoryModel);

  return category;
}
