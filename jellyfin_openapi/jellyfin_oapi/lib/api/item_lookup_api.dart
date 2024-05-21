//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;


class ItemLookupApi {
  ItemLookupApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Applies search criteria to an item and refreshes metadata.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] itemId (required):
  ///   Item id.
  ///
  /// * [RemoteSearchResult] remoteSearchResult (required):
  ///   The remote search result.
  ///
  /// * [bool] replaceAllImages:
  ///   Optional. Whether or not to replace all images. Default: True.
  Future<Response> applySearchCriteriaWithHttpInfo(String itemId, RemoteSearchResult remoteSearchResult, { bool? replaceAllImages, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/Apply/{itemId}'
      .replaceAll('{itemId}', itemId);

    // ignore: prefer_final_locals
    Object? postBody = remoteSearchResult;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (replaceAllImages != null) {
      queryParams.addAll(_queryParams('', 'replaceAllImages', replaceAllImages));
    }

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Applies search criteria to an item and refreshes metadata.
  ///
  /// Parameters:
  ///
  /// * [String] itemId (required):
  ///   Item id.
  ///
  /// * [RemoteSearchResult] remoteSearchResult (required):
  ///   The remote search result.
  ///
  /// * [bool] replaceAllImages:
  ///   Optional. Whether or not to replace all images. Default: True.
  Future<void> applySearchCriteria(String itemId, RemoteSearchResult remoteSearchResult, { bool? replaceAllImages, }) async {
    final response = await applySearchCriteriaWithHttpInfo(itemId, remoteSearchResult,  replaceAllImages: replaceAllImages, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get book remote search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BookInfoRemoteSearchQuery] bookInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<Response> getBookRemoteSearchResultsWithHttpInfo(BookInfoRemoteSearchQuery bookInfoRemoteSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/Book';

    // ignore: prefer_final_locals
    Object? postBody = bookInfoRemoteSearchQuery;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get book remote search.
  ///
  /// Parameters:
  ///
  /// * [BookInfoRemoteSearchQuery] bookInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<List<RemoteSearchResult>?> getBookRemoteSearchResults(BookInfoRemoteSearchQuery bookInfoRemoteSearchQuery,) async {
    final response = await getBookRemoteSearchResultsWithHttpInfo(bookInfoRemoteSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RemoteSearchResult>') as List)
        .cast<RemoteSearchResult>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get box set remote search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BoxSetInfoRemoteSearchQuery] boxSetInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<Response> getBoxSetRemoteSearchResultsWithHttpInfo(BoxSetInfoRemoteSearchQuery boxSetInfoRemoteSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/BoxSet';

    // ignore: prefer_final_locals
    Object? postBody = boxSetInfoRemoteSearchQuery;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get box set remote search.
  ///
  /// Parameters:
  ///
  /// * [BoxSetInfoRemoteSearchQuery] boxSetInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<List<RemoteSearchResult>?> getBoxSetRemoteSearchResults(BoxSetInfoRemoteSearchQuery boxSetInfoRemoteSearchQuery,) async {
    final response = await getBoxSetRemoteSearchResultsWithHttpInfo(boxSetInfoRemoteSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RemoteSearchResult>') as List)
        .cast<RemoteSearchResult>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get the item's external id info.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] itemId (required):
  ///   Item id.
  Future<Response> getExternalIdInfosWithHttpInfo(String itemId,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/{itemId}/ExternalIdInfos'
      .replaceAll('{itemId}', itemId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the item's external id info.
  ///
  /// Parameters:
  ///
  /// * [String] itemId (required):
  ///   Item id.
  Future<List<ExternalIdInfo>?> getExternalIdInfos(String itemId,) async {
    final response = await getExternalIdInfosWithHttpInfo(itemId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ExternalIdInfo>') as List)
        .cast<ExternalIdInfo>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get movie remote search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MovieInfoRemoteSearchQuery] movieInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<Response> getMovieRemoteSearchResultsWithHttpInfo(MovieInfoRemoteSearchQuery movieInfoRemoteSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/Movie';

    // ignore: prefer_final_locals
    Object? postBody = movieInfoRemoteSearchQuery;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get movie remote search.
  ///
  /// Parameters:
  ///
  /// * [MovieInfoRemoteSearchQuery] movieInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<List<RemoteSearchResult>?> getMovieRemoteSearchResults(MovieInfoRemoteSearchQuery movieInfoRemoteSearchQuery,) async {
    final response = await getMovieRemoteSearchResultsWithHttpInfo(movieInfoRemoteSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RemoteSearchResult>') as List)
        .cast<RemoteSearchResult>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get music album remote search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AlbumInfoRemoteSearchQuery] albumInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<Response> getMusicAlbumRemoteSearchResultsWithHttpInfo(AlbumInfoRemoteSearchQuery albumInfoRemoteSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/MusicAlbum';

    // ignore: prefer_final_locals
    Object? postBody = albumInfoRemoteSearchQuery;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get music album remote search.
  ///
  /// Parameters:
  ///
  /// * [AlbumInfoRemoteSearchQuery] albumInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<List<RemoteSearchResult>?> getMusicAlbumRemoteSearchResults(AlbumInfoRemoteSearchQuery albumInfoRemoteSearchQuery,) async {
    final response = await getMusicAlbumRemoteSearchResultsWithHttpInfo(albumInfoRemoteSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RemoteSearchResult>') as List)
        .cast<RemoteSearchResult>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get music artist remote search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ArtistInfoRemoteSearchQuery] artistInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<Response> getMusicArtistRemoteSearchResultsWithHttpInfo(ArtistInfoRemoteSearchQuery artistInfoRemoteSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/MusicArtist';

    // ignore: prefer_final_locals
    Object? postBody = artistInfoRemoteSearchQuery;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get music artist remote search.
  ///
  /// Parameters:
  ///
  /// * [ArtistInfoRemoteSearchQuery] artistInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<List<RemoteSearchResult>?> getMusicArtistRemoteSearchResults(ArtistInfoRemoteSearchQuery artistInfoRemoteSearchQuery,) async {
    final response = await getMusicArtistRemoteSearchResultsWithHttpInfo(artistInfoRemoteSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RemoteSearchResult>') as List)
        .cast<RemoteSearchResult>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get music video remote search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MusicVideoInfoRemoteSearchQuery] musicVideoInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<Response> getMusicVideoRemoteSearchResultsWithHttpInfo(MusicVideoInfoRemoteSearchQuery musicVideoInfoRemoteSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/MusicVideo';

    // ignore: prefer_final_locals
    Object? postBody = musicVideoInfoRemoteSearchQuery;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get music video remote search.
  ///
  /// Parameters:
  ///
  /// * [MusicVideoInfoRemoteSearchQuery] musicVideoInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<List<RemoteSearchResult>?> getMusicVideoRemoteSearchResults(MusicVideoInfoRemoteSearchQuery musicVideoInfoRemoteSearchQuery,) async {
    final response = await getMusicVideoRemoteSearchResultsWithHttpInfo(musicVideoInfoRemoteSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RemoteSearchResult>') as List)
        .cast<RemoteSearchResult>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get person remote search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PersonLookupInfoRemoteSearchQuery] personLookupInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<Response> getPersonRemoteSearchResultsWithHttpInfo(PersonLookupInfoRemoteSearchQuery personLookupInfoRemoteSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/Person';

    // ignore: prefer_final_locals
    Object? postBody = personLookupInfoRemoteSearchQuery;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get person remote search.
  ///
  /// Parameters:
  ///
  /// * [PersonLookupInfoRemoteSearchQuery] personLookupInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<List<RemoteSearchResult>?> getPersonRemoteSearchResults(PersonLookupInfoRemoteSearchQuery personLookupInfoRemoteSearchQuery,) async {
    final response = await getPersonRemoteSearchResultsWithHttpInfo(personLookupInfoRemoteSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RemoteSearchResult>') as List)
        .cast<RemoteSearchResult>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get series remote search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SeriesInfoRemoteSearchQuery] seriesInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<Response> getSeriesRemoteSearchResultsWithHttpInfo(SeriesInfoRemoteSearchQuery seriesInfoRemoteSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/Series';

    // ignore: prefer_final_locals
    Object? postBody = seriesInfoRemoteSearchQuery;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get series remote search.
  ///
  /// Parameters:
  ///
  /// * [SeriesInfoRemoteSearchQuery] seriesInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<List<RemoteSearchResult>?> getSeriesRemoteSearchResults(SeriesInfoRemoteSearchQuery seriesInfoRemoteSearchQuery,) async {
    final response = await getSeriesRemoteSearchResultsWithHttpInfo(seriesInfoRemoteSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RemoteSearchResult>') as List)
        .cast<RemoteSearchResult>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get trailer remote search.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TrailerInfoRemoteSearchQuery] trailerInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<Response> getTrailerRemoteSearchResultsWithHttpInfo(TrailerInfoRemoteSearchQuery trailerInfoRemoteSearchQuery,) async {
    // ignore: prefer_const_declarations
    final path = r'/Items/RemoteSearch/Trailer';

    // ignore: prefer_final_locals
    Object? postBody = trailerInfoRemoteSearchQuery;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json', 'text/json', 'application/*+json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get trailer remote search.
  ///
  /// Parameters:
  ///
  /// * [TrailerInfoRemoteSearchQuery] trailerInfoRemoteSearchQuery (required):
  ///   Remote search query.
  Future<List<RemoteSearchResult>?> getTrailerRemoteSearchResults(TrailerInfoRemoteSearchQuery trailerInfoRemoteSearchQuery,) async {
    final response = await getTrailerRemoteSearchResultsWithHttpInfo(trailerInfoRemoteSearchQuery,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<RemoteSearchResult>') as List)
        .cast<RemoteSearchResult>()
        .toList(growable: false);

    }
    return null;
  }
}
