import 'package:chopper/chopper.dart';
import 'package:determine_name/models/built_names.dart';
import 'package:determine_name/service/built_value_converter.dart';


part 'chopper_api_service.chopper.dart';

@ChopperApi(baseUrl: '/?name=')
abstract class PostApiService extends ChopperService {
  @Get(path: '{name}')
  Future<Response<BuiltNames>> getName(@Path() String name);
  

  static PostApiService create() {
    final client = ChopperClient(
      baseUrl: 'https://api.genderize.io',
      services: [
        _$PostApiService(),
      ],
      converter: BuiltValueConverter(),
      interceptors: [
        HttpLoggingInterceptor(),
      ],
    );

    return _$PostApiService(client);
  }
}