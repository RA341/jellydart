//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Authenticates a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [String] pw (required):
  ///   The password as plain text.
  ///
  /// * [String] password:
  ///   The password sha1-hash.
  Future<Response> authenticateUserWithHttpInfo(String userId, String pw, { String? password, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/{userId}/Authenticate'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'pw', pw));
    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
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

  /// Authenticates a user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [String] pw (required):
  ///   The password as plain text.
  ///
  /// * [String] password:
  ///   The password sha1-hash.
  Future<AuthenticationResult?> authenticateUser(String userId, String pw, { String? password, }) async {
    final response = await authenticateUserWithHttpInfo(userId, pw,  password: password, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResult',) as AuthenticationResult;
    
    }
    return null;
  }

  /// Authenticates a user by name.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthenticateUserByName] authenticateUserByName (required):
  ///   The M:Jellyfin.Api.Controllers.UserController.AuthenticateUserByName(Jellyfin.Api.Models.UserDtos.AuthenticateUserByName) request.
  Future<Response> authenticateUserByNameWithHttpInfo(AuthenticateUserByName authenticateUserByName,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/AuthenticateByName';

    // ignore: prefer_final_locals
    Object? postBody = authenticateUserByName;

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

  /// Authenticates a user by name.
  ///
  /// Parameters:
  ///
  /// * [AuthenticateUserByName] authenticateUserByName (required):
  ///   The M:Jellyfin.Api.Controllers.UserController.AuthenticateUserByName(Jellyfin.Api.Models.UserDtos.AuthenticateUserByName) request.
  Future<AuthenticationResult?> authenticateUserByName(AuthenticateUserByName authenticateUserByName,) async {
    final response = await authenticateUserByNameWithHttpInfo(authenticateUserByName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResult',) as AuthenticationResult;
    
    }
    return null;
  }

  /// Authenticates a user with quick connect.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [QuickConnectDto] quickConnectDto (required):
  ///   The Jellyfin.Api.Models.UserDtos.QuickConnectDto request.
  Future<Response> authenticateWithQuickConnectWithHttpInfo(QuickConnectDto quickConnectDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/AuthenticateWithQuickConnect';

    // ignore: prefer_final_locals
    Object? postBody = quickConnectDto;

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

  /// Authenticates a user with quick connect.
  ///
  /// Parameters:
  ///
  /// * [QuickConnectDto] quickConnectDto (required):
  ///   The Jellyfin.Api.Models.UserDtos.QuickConnectDto request.
  Future<AuthenticationResult?> authenticateWithQuickConnect(QuickConnectDto quickConnectDto,) async {
    final response = await authenticateWithQuickConnectWithHttpInfo(quickConnectDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuthenticationResult',) as AuthenticationResult;
    
    }
    return null;
  }

  /// Creates a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateUserByName] createUserByName (required):
  ///   The create user by name request body.
  Future<Response> createUserByNameWithHttpInfo(CreateUserByName createUserByName,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/New';

    // ignore: prefer_final_locals
    Object? postBody = createUserByName;

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

  /// Creates a user.
  ///
  /// Parameters:
  ///
  /// * [CreateUserByName] createUserByName (required):
  ///   The create user by name request body.
  Future<UserDto?> createUserByName(CreateUserByName createUserByName,) async {
    final response = await createUserByNameWithHttpInfo(createUserByName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Deletes a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  Future<Response> deleteUserWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/{userId}'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Deletes a user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  Future<void> deleteUser(String userId,) async {
    final response = await deleteUserWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Initiates the forgot password process for a local user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ForgotPasswordDto] forgotPasswordDto (required):
  ///   The forgot password request containing the entered username.
  Future<Response> forgotPasswordWithHttpInfo(ForgotPasswordDto forgotPasswordDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/ForgotPassword';

    // ignore: prefer_final_locals
    Object? postBody = forgotPasswordDto;

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

  /// Initiates the forgot password process for a local user.
  ///
  /// Parameters:
  ///
  /// * [ForgotPasswordDto] forgotPasswordDto (required):
  ///   The forgot password request containing the entered username.
  Future<ForgotPasswordResult?> forgotPassword(ForgotPasswordDto forgotPasswordDto,) async {
    final response = await forgotPasswordWithHttpInfo(forgotPasswordDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ForgotPasswordResult',) as ForgotPasswordResult;
    
    }
    return null;
  }

  /// Redeems a forgot password pin.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ForgotPasswordPinDto] forgotPasswordPinDto (required):
  ///   The forgot password pin request containing the entered pin.
  Future<Response> forgotPasswordPinWithHttpInfo(ForgotPasswordPinDto forgotPasswordPinDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/ForgotPassword/Pin';

    // ignore: prefer_final_locals
    Object? postBody = forgotPasswordPinDto;

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

  /// Redeems a forgot password pin.
  ///
  /// Parameters:
  ///
  /// * [ForgotPasswordPinDto] forgotPasswordPinDto (required):
  ///   The forgot password pin request containing the entered pin.
  Future<PinRedeemResult?> forgotPasswordPin(ForgotPasswordPinDto forgotPasswordPinDto,) async {
    final response = await forgotPasswordPinWithHttpInfo(forgotPasswordPinDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PinRedeemResult',) as PinRedeemResult;
    
    }
    return null;
  }

  /// Gets the user based on auth token.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCurrentUserWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Users/Me';

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

  /// Gets the user based on auth token.
  Future<UserDto?> getCurrentUser() async {
    final response = await getCurrentUserWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Gets a list of publicly visible users for display on a login screen.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPublicUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/Users/Public';

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

  /// Gets a list of publicly visible users for display on a login screen.
  Future<List<UserDto>?> getPublicUsers() async {
    final response = await getPublicUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserDto>') as List)
        .cast<UserDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Gets a user by Id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  Future<Response> getUserByIdWithHttpInfo(String userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/{userId}'
      .replaceAll('{userId}', userId);

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

  /// Gets a user by Id.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  Future<UserDto?> getUserById(String userId,) async {
    final response = await getUserByIdWithHttpInfo(userId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserDto',) as UserDto;
    
    }
    return null;
  }

  /// Gets a list of users.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] isHidden:
  ///   Optional filter by IsHidden=true or false.
  ///
  /// * [bool] isDisabled:
  ///   Optional filter by IsDisabled=true or false.
  Future<Response> getUsersWithHttpInfo({ bool? isHidden, bool? isDisabled, }) async {
    // ignore: prefer_const_declarations
    final path = r'/Users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (isHidden != null) {
      queryParams.addAll(_queryParams('', 'isHidden', isHidden));
    }
    if (isDisabled != null) {
      queryParams.addAll(_queryParams('', 'isDisabled', isDisabled));
    }

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

  /// Gets a list of users.
  ///
  /// Parameters:
  ///
  /// * [bool] isHidden:
  ///   Optional filter by IsHidden=true or false.
  ///
  /// * [bool] isDisabled:
  ///   Optional filter by IsDisabled=true or false.
  Future<List<UserDto>?> getUsers({ bool? isHidden, bool? isDisabled, }) async {
    final response = await getUsersWithHttpInfo( isHidden: isHidden, isDisabled: isDisabled, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<UserDto>') as List)
        .cast<UserDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Updates a user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UserDto] userDto (required):
  ///   The updated user model.
  Future<Response> updateUserWithHttpInfo(String userId, UserDto userDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/{userId}'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = userDto;

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

  /// Updates a user.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UserDto] userDto (required):
  ///   The updated user model.
  Future<void> updateUser(String userId, UserDto userDto,) async {
    final response = await updateUserWithHttpInfo(userId, userDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a user configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UserConfiguration] userConfiguration (required):
  ///   The new user configuration.
  Future<Response> updateUserConfigurationWithHttpInfo(String userId, UserConfiguration userConfiguration,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/{userId}/Configuration'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = userConfiguration;

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

  /// Updates a user configuration.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UserConfiguration] userConfiguration (required):
  ///   The new user configuration.
  Future<void> updateUserConfiguration(String userId, UserConfiguration userConfiguration,) async {
    final response = await updateUserConfigurationWithHttpInfo(userId, userConfiguration,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a user's easy password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UpdateUserEasyPassword] updateUserEasyPassword (required):
  ///   The M:Jellyfin.Api.Controllers.UserController.UpdateUserEasyPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserEasyPassword) request.
  Future<Response> updateUserEasyPasswordWithHttpInfo(String userId, UpdateUserEasyPassword updateUserEasyPassword,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/{userId}/EasyPassword'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserEasyPassword;

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

  /// Updates a user's easy password.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UpdateUserEasyPassword] updateUserEasyPassword (required):
  ///   The M:Jellyfin.Api.Controllers.UserController.UpdateUserEasyPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserEasyPassword) request.
  Future<void> updateUserEasyPassword(String userId, UpdateUserEasyPassword updateUserEasyPassword,) async {
    final response = await updateUserEasyPasswordWithHttpInfo(userId, updateUserEasyPassword,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a user's password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UpdateUserPassword] updateUserPassword (required):
  ///   The M:Jellyfin.Api.Controllers.UserController.UpdateUserPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserPassword) request.
  Future<Response> updateUserPasswordWithHttpInfo(String userId, UpdateUserPassword updateUserPassword,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/{userId}/Password'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = updateUserPassword;

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

  /// Updates a user's password.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UpdateUserPassword] updateUserPassword (required):
  ///   The M:Jellyfin.Api.Controllers.UserController.UpdateUserPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserPassword) request.
  Future<void> updateUserPassword(String userId, UpdateUserPassword updateUserPassword,) async {
    final response = await updateUserPasswordWithHttpInfo(userId, updateUserPassword,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Updates a user policy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UserPolicy] userPolicy (required):
  ///   The new user policy.
  Future<Response> updateUserPolicyWithHttpInfo(String userId, UserPolicy userPolicy,) async {
    // ignore: prefer_const_declarations
    final path = r'/Users/{userId}/Policy'
      .replaceAll('{userId}', userId);

    // ignore: prefer_final_locals
    Object? postBody = userPolicy;

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

  /// Updates a user policy.
  ///
  /// Parameters:
  ///
  /// * [String] userId (required):
  ///   The user id.
  ///
  /// * [UserPolicy] userPolicy (required):
  ///   The new user policy.
  Future<void> updateUserPolicy(String userId, UserPolicy userPolicy,) async {
    final response = await updateUserPolicyWithHttpInfo(userId, userPolicy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
