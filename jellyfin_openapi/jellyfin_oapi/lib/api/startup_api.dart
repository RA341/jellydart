//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;


class StartupApi {
  StartupApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Completes the startup wizard.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> completeWizardWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Startup/Complete';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Completes the startup wizard.
  Future<void> completeWizard() async {
    final response = await completeWizardWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Gets the first user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFirstUserWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Startup/User';

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

  /// Gets the first user.
  Future<StartupUserDto?> getFirstUser() async {
    final response = await getFirstUserWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartupUserDto',) as StartupUserDto;
    
    }
    return null;
  }

  /// Gets the first user.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getFirstUser2WithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Startup/FirstUser';

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

  /// Gets the first user.
  Future<StartupUserDto?> getFirstUser2() async {
    final response = await getFirstUser2WithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartupUserDto',) as StartupUserDto;
    
    }
    return null;
  }

  /// Gets the initial startup wizard configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getStartupConfigurationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Startup/Configuration';

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

  /// Gets the initial startup wizard configuration.
  Future<StartupConfigurationDto?> getStartupConfiguration() async {
    final response = await getStartupConfigurationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartupConfigurationDto',) as StartupConfigurationDto;
    
    }
    return null;
  }

  /// Sets remote access and UPnP.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StartupRemoteAccessDto] startupRemoteAccessDto (required):
  ///   The startup remote access dto.
  Future<Response> setRemoteAccessWithHttpInfo(StartupRemoteAccessDto startupRemoteAccessDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/Startup/RemoteAccess';

    // ignore: prefer_final_locals
    Object? postBody = startupRemoteAccessDto;

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

  /// Sets remote access and UPnP.
  ///
  /// Parameters:
  ///
  /// * [StartupRemoteAccessDto] startupRemoteAccessDto (required):
  ///   The startup remote access dto.
  Future<void> setRemoteAccess(StartupRemoteAccessDto startupRemoteAccessDto,) async {
    final response = await setRemoteAccessWithHttpInfo(startupRemoteAccessDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sets the initial startup wizard configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StartupConfigurationDto] startupConfigurationDto (required):
  ///   The updated startup configuration.
  Future<Response> updateInitialConfigurationWithHttpInfo(StartupConfigurationDto startupConfigurationDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/Startup/Configuration';

    // ignore: prefer_final_locals
    Object? postBody = startupConfigurationDto;

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

  /// Sets the initial startup wizard configuration.
  ///
  /// Parameters:
  ///
  /// * [StartupConfigurationDto] startupConfigurationDto (required):
  ///   The updated startup configuration.
  Future<void> updateInitialConfiguration(StartupConfigurationDto startupConfigurationDto,) async {
    final response = await updateInitialConfigurationWithHttpInfo(startupConfigurationDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Sets the user name and password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StartupUserDto] startupUserDto:
  ///   The DTO containing username and password.
  Future<Response> updateStartupUserWithHttpInfo({ StartupUserDto? startupUserDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Startup/User';

    // ignore: prefer_final_locals
    Object? postBody = startupUserDto;

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

  /// Sets the user name and password.
  ///
  /// Parameters:
  ///
  /// * [StartupUserDto] startupUserDto:
  ///   The DTO containing username and password.
  Future<void> updateStartupUser({ StartupUserDto? startupUserDto, }) async {
    final response = await updateStartupUserWithHttpInfo( startupUserDto: startupUserDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
