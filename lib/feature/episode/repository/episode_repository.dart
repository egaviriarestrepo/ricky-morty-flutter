part of feature.episode;

class EpisodePath {
  EpisodePath._();
  static String allEpisodes = 'episode';
}

class EpisodeRepository {
  EpisodeRepository(this._reader);

  late final ApiProvider _api = _reader(apiProvider);
  final Reader _reader;

  Future<EpisodeState> fetchEpisodes(EpisodeFilterModel filters) async {
    final params = filters.toJson();

    final APIResponse response = await _api.get(
      EpisodePath.allEpisodes,
      query: params,
    );

    return response.when(
      success: (success) {
        try {
          final value = success as Map<String, dynamic>;

          final resp = WraperResponse<EpisodeModel>.fromJson(
            value,
            EpisodeModel.fromJson,
          );

          return EpisodeState.episodeLoaded(resp);
        } catch (e) {
          debugPrint('e --->>> $e');
          return EpisodeState.error(
            AppException.errorWithMessage(e.toString()),
          );
        }
      },
      error: (error) {
        debugPrint('error !!! -> $error');
        return EpisodeState.error(error);
      },
    );
  }
}
