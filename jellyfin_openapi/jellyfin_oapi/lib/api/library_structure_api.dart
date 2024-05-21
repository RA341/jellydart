//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;


class LibraryStructureApi {
  LibraryStructureApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a media path to a library.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MediaPathDto] mediaPathDto (required):
  ///   The media path dto.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  Future<Response> addMediaPathWithHttpInfo(MediaPathDto mediaPathDto, { bool? refreshLibrary, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Library/VirtualFolders/Paths';

    // ignore: prefer_final_locals
    Object? postBody = mediaPathDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (refreshLibrary != null) {
      queryParams.addAll(_queryParams('', 'refreshLibrary', refreshLibrary));
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

  /// Add a media path to a library.
  ///
  /// Parameters:
  ///
  /// * [MediaPathDto] mediaPathDto (required):
  ///   The media path dto.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  Future<void> addMediaPath(MediaPathDto mediaPathDto, { bool? refreshLibrary, }) async {
    final response = await addMediaPathWithHttpInfo(mediaPathDto,  refreshLibrary: refreshLibrary, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Adds a virtual folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the virtual folder.
  ///
  /// * [CollectionTypeOptions] collectionType:
  ///   The type of the collection.
  ///
  /// * [List<String>] paths:
  ///   The paths of the virtual folder.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  ///
  /// * [AddVirtualFolderDto] addVirtualFolderDto:
  ///   The library options.
  Future<Response> addVirtualFolderWithHttpInfo({ String? name, CollectionTypeOptions? collectionType, List<String>? paths, bool? refreshLibrary, AddVirtualFolderDto? addVirtualFolderDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Library/VirtualFolders';

    // ignore: prefer_final_locals
    Object? postBody = addVirtualFolderDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (collectionType != null) {
      queryParams.addAll(_queryParams('', 'collectionType', collectionType));
    }
    if (paths != null) {
      queryParams.addAll(_queryParams('multi', 'paths', paths));
    }
    if (refreshLibrary != null) {
      queryParams.addAll(_queryParams('', 'refreshLibrary', refreshLibrary));
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

  /// Adds a virtual folder.
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the virtual folder.
  ///
  /// * [CollectionTypeOptions] collectionType:
  ///   The type of the collection.
  ///
  /// * [List<String>] paths:
  ///   The paths of the virtual folder.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  ///
  /// * [AddVirtualFolderDto] addVirtualFolderDto:
  ///   The library options.
  Future<void> addVirtualFolder({ String? name, CollectionTypeOptions? collectionType, List<String>? paths, bool? refreshLibrary, AddVirtualFolderDto? addVirtualFolderDto, }) async {
    final response = await addVirtualFolderWithHttpInfo( name: name, collectionType: collectionType, paths: paths, refreshLibrary: refreshLibrary, addVirtualFolderDto: addVirtualFolderDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Gets all virtual folders.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getVirtualFoldersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Library/VirtualFolders';

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

  /// Gets all virtual folders.
  Future<List<VirtualFolderInfo>?> getVirtualFolders() async {
    final response = await getVirtualFoldersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<VirtualFolderInfo>') as List)
        .cast<VirtualFolderInfo>()
        .toList(growable: false);

    }
    return null;
  }

  /// Remove a media path.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the library.
  ///
  /// * [String] path:
  ///   The path to remove.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  Future<Response> removeMediaPathWithHttpInfo({ String? name, String? path, bool? refreshLibrary, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Library/VirtualFolders/Paths';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (path != null) {
      queryParams.addAll(_queryParams('', 'path', path));
    }
    if (refreshLibrary != null) {
      queryParams.addAll(_queryParams('', 'refreshLibrary', refreshLibrary));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove a media path.
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the library.
  ///
  /// * [String] path:
  ///   The path to remove.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  Future<void> removeMediaPath({ String? name, String? path, bool? refreshLibrary, }) async {
    final response = await removeMediaPathWithHttpInfo( name: name, path: path, refreshLibrary: refreshLibrary, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Removes a virtual folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the folder.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  Future<Response> removeVirtualFolderWithHttpInfo({ String? name, bool? refreshLibrary, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Library/VirtualFolders';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (refreshLibrary != null) {
      queryParams.addAll(_queryParams('', 'refreshLibrary', refreshLibrary));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Removes a virtual folder.
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the folder.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  Future<void> removeVirtualFolder({ String? name, bool? refreshLibrary, }) async {
    final response = await removeVirtualFolderWithHttpInfo( name: name, refreshLibrary: refreshLibrary, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Renames a virtual folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the virtual folder.
  ///
  /// * [String] newName:
  ///   The new name.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  Future<Response> renameVirtualFolderWithHttpInfo({ String? name, String? newName, bool? refreshLibrary, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Library/VirtualFolders/Name';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (newName != null) {
      queryParams.addAll(_queryParams('', 'newName', newName));
    }
    if (refreshLibrary != null) {
      queryParams.addAll(_queryParams('', 'refreshLibrary', refreshLibrary));
    }

    const contentTypes = <String>[];


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

  /// Renames a virtual folder.
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///   The name of the virtual folder.
  ///
  /// * [String] newName:
  ///   The new name.
  ///
  /// * [bool] refreshLibrary:
  ///   Whether to refresh the library.
  Future<void> renameVirtualFolder({ String? name, String? newName, bool? refreshLibrary, }) async {
    final response = await renameVirtualFolderWithHttpInfo( name: name, newName: newName, refreshLibrary: refreshLibrary, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update library options.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateLibraryOptionsDto] updateLibraryOptionsDto:
  ///   The library name and options.
  Future<Response> updateLibraryOptionsWithHttpInfo({ UpdateLibraryOptionsDto? updateLibraryOptionsDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Library/VirtualFolders/LibraryOptions';

    // ignore: prefer_final_locals
    Object? postBody = updateLibraryOptionsDto;

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

  /// Update library options.
  ///
  /// Parameters:
  ///
  /// * [UpdateLibraryOptionsDto] updateLibraryOptionsDto:
  ///   The library name and options.
  Future<void> updateLibraryOptions({ UpdateLibraryOptionsDto? updateLibraryOptionsDto, }) async {
    final response = await updateLibraryOptionsWithHttpInfo( updateLibraryOptionsDto: updateLibraryOptionsDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a media path.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateMediaPathRequestDto] updateMediaPathRequestDto (required):
  ///   The name of the library and path infos.
  Future<Response> updateMediaPathWithHttpInfo(UpdateMediaPathRequestDto updateMediaPathRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/Library/VirtualFolders/Paths/Update';

    // ignore: prefer_final_locals
    Object? postBody = updateMediaPathRequestDto;

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

  /// Updates a media path.
  ///
  /// Parameters:
  ///
  /// * [UpdateMediaPathRequestDto] updateMediaPathRequestDto (required):
  ///   The name of the library and path infos.
  Future<void> updateMediaPath(UpdateMediaPathRequestDto updateMediaPathRequestDto,) async {
    final response = await updateMediaPathWithHttpInfo(updateMediaPathRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
