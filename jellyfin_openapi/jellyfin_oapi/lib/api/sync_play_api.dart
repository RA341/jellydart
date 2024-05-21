//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of jellyfin_openapi.api;


class SyncPlayApi {
  SyncPlayApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Notify SyncPlay group that member is buffering.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BufferRequestDto] bufferRequestDto (required):
  ///   The player status.
  Future<Response> syncPlayBufferingWithHttpInfo(BufferRequestDto bufferRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Buffering';

    // ignore: prefer_final_locals
    Object? postBody = bufferRequestDto;

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

  /// Notify SyncPlay group that member is buffering.
  ///
  /// Parameters:
  ///
  /// * [BufferRequestDto] bufferRequestDto (required):
  ///   The player status.
  Future<void> syncPlayBuffering(BufferRequestDto bufferRequestDto,) async {
    final response = await syncPlayBufferingWithHttpInfo(bufferRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a new SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NewGroupRequestDto] newGroupRequestDto (required):
  ///   The settings of the new group.
  Future<Response> syncPlayCreateGroupWithHttpInfo(NewGroupRequestDto newGroupRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/New';

    // ignore: prefer_final_locals
    Object? postBody = newGroupRequestDto;

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

  /// Create a new SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [NewGroupRequestDto] newGroupRequestDto (required):
  ///   The settings of the new group.
  Future<void> syncPlayCreateGroup(NewGroupRequestDto newGroupRequestDto,) async {
    final response = await syncPlayCreateGroupWithHttpInfo(newGroupRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Gets all SyncPlay groups.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> syncPlayGetGroupsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/List';

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

  /// Gets all SyncPlay groups.
  Future<List<GroupInfoDto>?> syncPlayGetGroups() async {
    final response = await syncPlayGetGroupsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GroupInfoDto>') as List)
        .cast<GroupInfoDto>()
        .toList(growable: false);

    }
    return null;
  }

  /// Join an existing SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [JoinGroupRequestDto] joinGroupRequestDto (required):
  ///   The group to join.
  Future<Response> syncPlayJoinGroupWithHttpInfo(JoinGroupRequestDto joinGroupRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Join';

    // ignore: prefer_final_locals
    Object? postBody = joinGroupRequestDto;

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

  /// Join an existing SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [JoinGroupRequestDto] joinGroupRequestDto (required):
  ///   The group to join.
  Future<void> syncPlayJoinGroup(JoinGroupRequestDto joinGroupRequestDto,) async {
    final response = await syncPlayJoinGroupWithHttpInfo(joinGroupRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Leave the joined SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> syncPlayLeaveGroupWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Leave';

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

  /// Leave the joined SyncPlay group.
  Future<void> syncPlayLeaveGroup() async {
    final response = await syncPlayLeaveGroupWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request to move an item in the playlist in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MovePlaylistItemRequestDto] movePlaylistItemRequestDto (required):
  ///   The new position for the item.
  Future<Response> syncPlayMovePlaylistItemWithHttpInfo(MovePlaylistItemRequestDto movePlaylistItemRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/MovePlaylistItem';

    // ignore: prefer_final_locals
    Object? postBody = movePlaylistItemRequestDto;

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

  /// Request to move an item in the playlist in SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [MovePlaylistItemRequestDto] movePlaylistItemRequestDto (required):
  ///   The new position for the item.
  Future<void> syncPlayMovePlaylistItem(MovePlaylistItemRequestDto movePlaylistItemRequestDto,) async {
    final response = await syncPlayMovePlaylistItemWithHttpInfo(movePlaylistItemRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request next item in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [NextItemRequestDto] nextItemRequestDto (required):
  ///   The current item information.
  Future<Response> syncPlayNextItemWithHttpInfo(NextItemRequestDto nextItemRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/NextItem';

    // ignore: prefer_final_locals
    Object? postBody = nextItemRequestDto;

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

  /// Request next item in SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [NextItemRequestDto] nextItemRequestDto (required):
  ///   The current item information.
  Future<void> syncPlayNextItem(NextItemRequestDto nextItemRequestDto,) async {
    final response = await syncPlayNextItemWithHttpInfo(nextItemRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request pause in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> syncPlayPauseWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Pause';

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

  /// Request pause in SyncPlay group.
  Future<void> syncPlayPause() async {
    final response = await syncPlayPauseWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update session ping.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PingRequestDto] pingRequestDto (required):
  ///   The new ping.
  Future<Response> syncPlayPingWithHttpInfo(PingRequestDto pingRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Ping';

    // ignore: prefer_final_locals
    Object? postBody = pingRequestDto;

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

  /// Update session ping.
  ///
  /// Parameters:
  ///
  /// * [PingRequestDto] pingRequestDto (required):
  ///   The new ping.
  Future<void> syncPlayPing(PingRequestDto pingRequestDto,) async {
    final response = await syncPlayPingWithHttpInfo(pingRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request previous item in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PreviousItemRequestDto] previousItemRequestDto (required):
  ///   The current item information.
  Future<Response> syncPlayPreviousItemWithHttpInfo(PreviousItemRequestDto previousItemRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/PreviousItem';

    // ignore: prefer_final_locals
    Object? postBody = previousItemRequestDto;

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

  /// Request previous item in SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [PreviousItemRequestDto] previousItemRequestDto (required):
  ///   The current item information.
  Future<void> syncPlayPreviousItem(PreviousItemRequestDto previousItemRequestDto,) async {
    final response = await syncPlayPreviousItemWithHttpInfo(previousItemRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request to queue items to the playlist of a SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [QueueRequestDto] queueRequestDto (required):
  ///   The items to add.
  Future<Response> syncPlayQueueWithHttpInfo(QueueRequestDto queueRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Queue';

    // ignore: prefer_final_locals
    Object? postBody = queueRequestDto;

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

  /// Request to queue items to the playlist of a SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [QueueRequestDto] queueRequestDto (required):
  ///   The items to add.
  Future<void> syncPlayQueue(QueueRequestDto queueRequestDto,) async {
    final response = await syncPlayQueueWithHttpInfo(queueRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Notify SyncPlay group that member is ready for playback.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ReadyRequestDto] readyRequestDto (required):
  ///   The player status.
  Future<Response> syncPlayReadyWithHttpInfo(ReadyRequestDto readyRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Ready';

    // ignore: prefer_final_locals
    Object? postBody = readyRequestDto;

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

  /// Notify SyncPlay group that member is ready for playback.
  ///
  /// Parameters:
  ///
  /// * [ReadyRequestDto] readyRequestDto (required):
  ///   The player status.
  Future<void> syncPlayReady(ReadyRequestDto readyRequestDto,) async {
    final response = await syncPlayReadyWithHttpInfo(readyRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request to remove items from the playlist in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RemoveFromPlaylistRequestDto] removeFromPlaylistRequestDto (required):
  ///   The items to remove.
  Future<Response> syncPlayRemoveFromPlaylistWithHttpInfo(RemoveFromPlaylistRequestDto removeFromPlaylistRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/RemoveFromPlaylist';

    // ignore: prefer_final_locals
    Object? postBody = removeFromPlaylistRequestDto;

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

  /// Request to remove items from the playlist in SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [RemoveFromPlaylistRequestDto] removeFromPlaylistRequestDto (required):
  ///   The items to remove.
  Future<void> syncPlayRemoveFromPlaylist(RemoveFromPlaylistRequestDto removeFromPlaylistRequestDto,) async {
    final response = await syncPlayRemoveFromPlaylistWithHttpInfo(removeFromPlaylistRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request seek in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SeekRequestDto] seekRequestDto (required):
  ///   The new playback position.
  Future<Response> syncPlaySeekWithHttpInfo(SeekRequestDto seekRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Seek';

    // ignore: prefer_final_locals
    Object? postBody = seekRequestDto;

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

  /// Request seek in SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [SeekRequestDto] seekRequestDto (required):
  ///   The new playback position.
  Future<void> syncPlaySeek(SeekRequestDto seekRequestDto,) async {
    final response = await syncPlaySeekWithHttpInfo(seekRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request SyncPlay group to ignore member during group-wait.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IgnoreWaitRequestDto] ignoreWaitRequestDto (required):
  ///   The settings to set.
  Future<Response> syncPlaySetIgnoreWaitWithHttpInfo(IgnoreWaitRequestDto ignoreWaitRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/SetIgnoreWait';

    // ignore: prefer_final_locals
    Object? postBody = ignoreWaitRequestDto;

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

  /// Request SyncPlay group to ignore member during group-wait.
  ///
  /// Parameters:
  ///
  /// * [IgnoreWaitRequestDto] ignoreWaitRequestDto (required):
  ///   The settings to set.
  Future<void> syncPlaySetIgnoreWait(IgnoreWaitRequestDto ignoreWaitRequestDto,) async {
    final response = await syncPlaySetIgnoreWaitWithHttpInfo(ignoreWaitRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request to set new playlist in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PlayRequestDto] playRequestDto (required):
  ///   The new playlist to play in the group.
  Future<Response> syncPlaySetNewQueueWithHttpInfo(PlayRequestDto playRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/SetNewQueue';

    // ignore: prefer_final_locals
    Object? postBody = playRequestDto;

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

  /// Request to set new playlist in SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [PlayRequestDto] playRequestDto (required):
  ///   The new playlist to play in the group.
  Future<void> syncPlaySetNewQueue(PlayRequestDto playRequestDto,) async {
    final response = await syncPlaySetNewQueueWithHttpInfo(playRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request to change playlist item in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetPlaylistItemRequestDto] setPlaylistItemRequestDto (required):
  ///   The new item to play.
  Future<Response> syncPlaySetPlaylistItemWithHttpInfo(SetPlaylistItemRequestDto setPlaylistItemRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/SetPlaylistItem';

    // ignore: prefer_final_locals
    Object? postBody = setPlaylistItemRequestDto;

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

  /// Request to change playlist item in SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [SetPlaylistItemRequestDto] setPlaylistItemRequestDto (required):
  ///   The new item to play.
  Future<void> syncPlaySetPlaylistItem(SetPlaylistItemRequestDto setPlaylistItemRequestDto,) async {
    final response = await syncPlaySetPlaylistItemWithHttpInfo(setPlaylistItemRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request to set repeat mode in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetRepeatModeRequestDto] setRepeatModeRequestDto (required):
  ///   The new repeat mode.
  Future<Response> syncPlaySetRepeatModeWithHttpInfo(SetRepeatModeRequestDto setRepeatModeRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/SetRepeatMode';

    // ignore: prefer_final_locals
    Object? postBody = setRepeatModeRequestDto;

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

  /// Request to set repeat mode in SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [SetRepeatModeRequestDto] setRepeatModeRequestDto (required):
  ///   The new repeat mode.
  Future<void> syncPlaySetRepeatMode(SetRepeatModeRequestDto setRepeatModeRequestDto,) async {
    final response = await syncPlaySetRepeatModeWithHttpInfo(setRepeatModeRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request to set shuffle mode in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetShuffleModeRequestDto] setShuffleModeRequestDto (required):
  ///   The new shuffle mode.
  Future<Response> syncPlaySetShuffleModeWithHttpInfo(SetShuffleModeRequestDto setShuffleModeRequestDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/SetShuffleMode';

    // ignore: prefer_final_locals
    Object? postBody = setShuffleModeRequestDto;

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

  /// Request to set shuffle mode in SyncPlay group.
  ///
  /// Parameters:
  ///
  /// * [SetShuffleModeRequestDto] setShuffleModeRequestDto (required):
  ///   The new shuffle mode.
  Future<void> syncPlaySetShuffleMode(SetShuffleModeRequestDto setShuffleModeRequestDto,) async {
    final response = await syncPlaySetShuffleModeWithHttpInfo(setShuffleModeRequestDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request stop in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> syncPlayStopWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Stop';

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

  /// Request stop in SyncPlay group.
  Future<void> syncPlayStop() async {
    final response = await syncPlayStopWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Request unpause in SyncPlay group.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> syncPlayUnpauseWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/SyncPlay/Unpause';

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

  /// Request unpause in SyncPlay group.
  Future<void> syncPlayUnpause() async {
    final response = await syncPlayUnpauseWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
