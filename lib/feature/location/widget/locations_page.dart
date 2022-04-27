part of feature.location;

class LocationsPage extends ConsumerStatefulWidget {
  const LocationsPage({Key? key}) : super(key: key);

  @override
  LocationsPageState createState() => LocationsPageState();
}

class LocationsPageState extends ConsumerState<LocationsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    final LocationNotifierState _state = ref.read(locationStateProvider);
    _state
      ..pagingControllerLocation = PagingController<int, LocationModel>(
        firstPageKey: 1,
      )
      ..pagingControllerLocation.addPageRequestListener(
        (pageKey) {
          debugPrint('initState -> $pageKey');
          _state.fetchLocations(pageKey);
        },
      );
  }

  @override
  void dispose() {
    ref
        .watch(locationStateProvider.notifier)
        .pagingControllerLocation
        .dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final locationNotifierState = ref.watch(locationStateProvider);
    final _appThemeProvider = ref.watch(appThemeProvider);

    return locationNotifierState.response.maybeWhen(
      loading: () => listShimmer(),
      orElse: () => RefreshIndicator(
        onRefresh: () => Future.sync(
          () => locationNotifierState.refresh,
        ),
        child: PagedListView(
          pagingController: locationNotifierState.pagingControllerLocation,
          padding: const EdgeInsets.all(16),
          builderDelegate: PagedChildBuilderDelegate(
            animateTransitions: true,
            itemBuilder:
                (BuildContext context, LocationModel location, int index) {
              return Card(
                key: Key(location.name ?? ''),
                color: (_appThemeProvider ?? false)
                    ? getRandomElement<Color>(darkColors)
                    : getRandomElement<Color>(ligthColors),
                child: Padding(
                  padding: UIPadding.all_16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        location.name ?? '',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      UISpacing.vertical_16,
                      Text(
                        'dimension: ${location.dimension ?? ''}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      UISpacing.vertical_16,
                      Text(
                        'type: ${location.type ?? ''}',
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
