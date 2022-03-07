// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PostApiService;

  @override
  Future<Response<BuiltNames>> getName(String name) {
    final $url = '/?name=${name}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltNames, BuiltNames>($request);
  }
}
