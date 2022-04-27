part of feature.episode;

class EpidodeNotifierState extends ChangeNotifier {
  EpidodeNotifierState(this._reader) {
    fetchEpisodes(1);
  }

  EpisodeFilterModel filter = EpisodeFilterModel();
  Infopagination? info;
  EpisodeState response = const EpisodeState.loading();

  final Reader _reader;
  late PagingController<int, EpisodeModel> pagingController;

  Future<void> fetchEpisodes(int pageKey) async {
    debugPrint('--->>> fetchEpisodes');
    filter = filter.copyWith(
      page: pageKey,
    );

    response = await _reader(episodeRepository).fetchEpisodes(filter);

    response.when(
      loading: () => null,
      episodeLoaded: (WraperResponse<EpisodeModel> response) {
        info = response.info;
        final List<EpisodeModel> _episode =
            response.results ?? <EpisodeModel>[];

        if (pageKey >= (info?.pages ?? 0)) {
          pagingController.appendLastPage(_episode);
        } else {
          pagingController.appendPage(_episode, pageKey + 1);
        }
      },
      error: (AppException exception) {
        pagingController.error = exception.toString();
      },
    );

    notifyListeners();
  }
}
