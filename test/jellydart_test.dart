import 'package:flutter_test/flutter_test.dart';

import 'package:jellydart/jellydart.dart';

import 'package:http/http.dart' as http;
import 'package:jellydart/get_url_api.dart';
import 'package:jellyfin_openapi/api.dart';

Future<void> main() async {
  final clientData = JellyFinClientData(
    client: 'Testing',
    version: 'testver',
    deviceId: 'testid',
    device: 'testdevice',
  );

  final clientString =
      AuthWithMetadata(accessToken: 'asdasdasd', data: clientData)
          .generateAuthString();

  const url = 'http://192.168.1.124:8096';
  var client = ApiClient(basePath: url)
    ..addDefaultHeader('Authorization', clientString);

  final user =
      await UserApi(client).authenticateUserByName(AuthenticateUserByName(
    username: 'test',
    pw: 'test',
  ));

  if (user == null || user.accessToken == null) {
    throw Exception('Failed to login');
  }

  final auth = AuthWithMetadata(
    accessToken: user.accessToken!,
    data: clientData,
  );

  defaultApiClient = ApiClient(basePath: url, authentication: auth);
  final userId = user.user!.id!;

  final items = await ItemsApi().getResumeItems(userId);
  if (items == null || items.items == null || items.items!.isEmpty) {
    throw Exception('Could not find any resume items');
  }

  final id = items.items!.first.id!;


  final imagUrl = Uri.parse('$url/Items/$id/Images/Primary');


  final testurl = Uri.parse('$url/Videos/$id/stream');

  final funUrl = GetUrlApi().getVideoStreamUrl(id);
}
