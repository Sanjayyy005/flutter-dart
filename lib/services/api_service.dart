
import 'package:dio/dio.dart';
import 'package:flutterapp/models/post.dart';

final dio = Dio();

Future<List<Post>> getPosts () async {

  try{
    final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
    print(response.data);
    return [];

  }on DioException catch(err){
    throw '${err.response}';

  }

}