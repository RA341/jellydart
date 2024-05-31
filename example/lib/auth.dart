import 'package:jellydart/jellydart.dart';

Future<(ApiClient, String)> login() async {
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

  return (ApiClient(basePath: url, authentication: auth), user.user!.id!);

}
