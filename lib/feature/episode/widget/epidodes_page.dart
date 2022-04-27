part of feature.episode;

class EpisodesPage extends ConsumerStatefulWidget {
  const EpisodesPage({Key? key}) : super(key: key);

  @override
  EpisodesPageState createState() => EpisodesPageState();
}

class EpisodesPageState extends ConsumerState<EpisodesPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    final EpidodeNotifierState _state = ref.read(episodeStateProvider);
    _state
      ..pagingController = PagingController<int, EpisodeModel>(
        firstPageKey: 1,
      )
      ..pagingController.addPageRequestListener(
        (pageKey) {
          debugPrint('initState -> $pageKey');
          _state.fetchEpisodes(pageKey);
        },
      );
    super.initState();
  }

  @override
  void dispose() {
    ref.watch(episodeStateProvider.notifier).pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final episodeNotifierState = ref.watch(episodeStateProvider);

    return episodeNotifierState.response.maybeWhen(
      loading: () => listShimmer(),
      orElse: () => RefreshIndicator(
        onRefresh: () => Future.sync(
          () => episodeNotifierState.pagingController.refresh(),
        ),
        child: PagedListView(
          pagingController: episodeNotifierState.pagingController,
          padding: const EdgeInsets.all(16),
          builderDelegate: PagedChildBuilderDelegate(
            animateTransitions: true,
            itemBuilder:
                (BuildContext context, EpisodeModel episode, int index) {
              return Card(
                key: Key(episode.name ?? ''),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: getRandomElement<Color>(neonColors),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: UIPadding.all_16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        episode.name ?? '',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      UISpacing.vertical_16,
                      Text(
                        'airDate: ${episode.airDate ?? ''}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
