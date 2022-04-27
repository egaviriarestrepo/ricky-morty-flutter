part of feature.episode;

final episodeDetailProvider =
    StateProvider<EpisodeModel>((ref) => EpisodeModel());

final episodeStateProvider =
    ChangeNotifierProvider<EpidodeNotifierState>((ref) {
  return EpidodeNotifierState(ref.read);
});

final episodeRepository = Provider((ref) => EpisodeRepository(ref.read));
