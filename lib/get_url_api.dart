import 'package:jellydart/jellydart.dart';

class GetUrlApi {
  late final ApiClient client;
  late final Map<String, String> headers;

  GetUrlApi({ApiClient? client}) {
    this.client = client ?? defaultApiClient;
    var tmp = <String, String>{};
    this.client.authentication!.applyToParams(List.empty(), tmp);
    headers = tmp;
  }

  String getVideoStreamUrl(
    String itemId, {
    String? container,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
  }) {
    headers = {};

    late final String path;
    if (container == null) {
      path = '/Videos/$itemId/stream';
    } else {
      path = '/Videos/$itemId/stream.$container';
    }

    final uri = Uri.parse(client.basePath).replace(
      path: path,
      queryParameters: queryParams,
    );

    return uri.toString();
  }

  Future<String> getHlsUrl(
    String itemId,
    String userId, {
    String? container,
    Map<String, String>? queryParams,
  }) async {

    queryParams = {};
    final path = '/Videos/$itemId/master.m3u8';

    final mediaINfo =
        await MediaInfoApi(client).getPlaybackInfo(itemId, userId);

    queryParams.addAll({'mediaSourceId': mediaINfo!.mediaSources.first.id!});

    final uri = Uri.parse(client.basePath).replace(
      path: path,
      queryParameters: queryParams,
    );

    return uri.toString();
  }

  /// Gets the item's image URL.
  ///
  /// Parameters:
  ///
  /// * [String] itemId (required):
  ///   Item id.
  ///
  /// * [ImageType] imageType (required):
  ///   Image type.
  ///
  /// * [int] maxWidth:
  ///   The maximum image width to return.
  ///
  /// * [int] maxHeight:
  ///   The maximum image height to return.
  ///
  /// * [int] width:
  ///   The fixed image width to return.
  ///
  /// * [int] height:
  ///   The fixed image height to return.
  ///
  /// * [int] quality:
  ///   Optional. Quality setting, from 0-100. Defaults to 90 and should suffice in most cases.
  ///
  /// * [int] fillWidth:
  ///   Width of box to fill.
  ///
  /// * [int] fillHeight:
  ///   Height of box to fill.
  ///
  /// * [String] tag:
  ///   Optional. Supply the cache tag from the item object to receive strong caching headers.
  ///
  /// * [bool] cropWhitespace:
  ///   Optional. Specify if whitespace should be cropped out of the image. True/False. If unspecified, whitespace will be cropped from logos and clear art.
  ///
  /// * [ImageFormat] format:
  ///   Optional. The MediaBrowser.Model.Drawing.ImageFormat of the returned image.
  ///
  /// * [bool] addPlayedIndicator:
  ///   Optional. Add a played indicator.
  ///
  /// * [double] percentPlayed:
  ///   Optional. Percent to render for the percent played overlay.
  ///
  /// * [int] unplayedCount:
  ///   Optional. Unplayed count overlay to render.
  ///
  /// * [int] blur:
  ///   Optional. Blur image.
  ///
  /// * [String] backgroundColor:
  ///   Optional. Apply a background color for transparent images.
  ///
  /// * [String] foregroundLayer:
  ///   Optional. Apply a foreground layer on top of the image.
  ///
  /// * [int] imageIndex:
  ///   Image index.
  String getItemImageUrl(
    String itemId,
    ImageType imageType, {
    int? maxWidth,
    int? maxHeight,
    int? width,
    int? height,
    int? quality,
    int? fillWidth,
    int? fillHeight,
    String? tag,
    bool? cropWhitespace,
    ImageFormat? format,
    bool? addPlayedIndicator,
    double? percentPlayed,
    int? unplayedCount,
    int? blur,
    String? backgroundColor,
    String? foregroundLayer,
    int? imageIndex,
  }) {
    final path = '/Items/$itemId/Images/$imageType';

    final queryParams = <String, String>{};

    if (maxWidth != null) queryParams['maxWidth'] = '$maxWidth';
    if (maxHeight != null) queryParams['maxHeight'] = '$maxHeight';
    if (width != null) queryParams['width'] = '$width';
    if (height != null) queryParams['height'] = '$height';
    if (quality != null) queryParams['quality'] = '$quality';
    if (fillWidth != null) queryParams['fillWidth'] = '$fillWidth';
    if (fillHeight != null) queryParams['fillHeight'] = '$fillHeight';
    if (tag != null) queryParams['tag'] = tag;
    if (cropWhitespace != null)
      queryParams['cropWhitespace'] = '$cropWhitespace';
    if (format != null) queryParams['format'] = format.toString();
    if (addPlayedIndicator != null)
      queryParams['addPlayedIndicator'] = '$addPlayedIndicator';
    if (percentPlayed != null) queryParams['percentPlayed'] = '$percentPlayed';
    if (unplayedCount != null) queryParams['unplayedCount'] = '$unplayedCount';
    if (blur != null) queryParams['blur'] = '$blur';
    if (backgroundColor != null)
      queryParams['backgroundColor'] = backgroundColor;
    if (foregroundLayer != null)
      queryParams['foregroundLayer'] = foregroundLayer;
    if (imageIndex != null) queryParams['imageIndex'] = '$imageIndex';

    final uri = Uri.parse(client.basePath).replace(
      path: path,
      queryParameters: queryParams.isNotEmpty ? queryParams : null,
    );

    return uri.toString();
  }

  void setPlayBackInfo(String itemId, String userId) {
    MediaInfoApi().getPlaybackInfo(itemId, userId);
  }
}
