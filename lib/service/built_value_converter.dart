import 'package:built_value/serializer.dart';
import 'package:chopper/chopper.dart';
import 'package:determine_name/models/serializers.dart';

class BuiltValueConverter extends JsonConverter {
  @override
  Request convertRequest(Request request) {
    return super.convertRequest(
      request.copyWith(
        body: serializers.serializeWith(
          serializers.serializerForType(request.body.runtimeType)!,
          request.body,
        ),
      ),
    );
  }

  @override
  Response<BodyType> convertResponse<BodyType, SingleItemType>(
      Response response) {
    final Response dynamicResponse = super.convertResponse(response);
    final BodyType customBody =
        _convertToCustomObject<SingleItemType>(dynamicResponse.body);

    
    return dynamicResponse.copyWith<BodyType>(body: customBody);
  }

  _convertToCustomObject<SingleItemType>(dynamic element) {
    
      return _deserialize<SingleItemType>(element);
    
  }

 
  T _deserialize<T>(
    Map<String, dynamic> value,
  ) {
    return serializers.deserializeWith(
      serializers.serializerForType(T) as Serializer<T>,
      value,
    )!;
  }
}
