import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/meal_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://www.themealdb.com/api/json/v1/1/")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("search.php")
  Future<Map<String, List<MealModel>>> searchMeals(@Query("s") String query);

  @GET("filter.php")
  Future<Map<String, List<MealModel>>> filterByCategory(@Query("c") String category);
}