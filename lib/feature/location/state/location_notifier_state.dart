part of feature.location;

class LocationNotifierState extends ChangeNotifier {
  LocationNotifierState(this._reader) {
    fetchLocations(1);
  }

  LocationFilterModel filter = LocationFilterModel();
  Infopagination? info;
  LocationState response = const LocationState.loading();

  PagingController<int, LocationModel> pagingControllerLocation =
      PagingController<int, LocationModel>(
    firstPageKey: 1,
  );
  final Reader _reader;

  Future<void> fetchLocations(int pageKey) async {
    debugPrint('--->>> fetchLocations');
    filter = filter.copyWith(
      page: pageKey,
    );

    response = await _reader(locationRepository).fetchLocations(filter);

    response.when(
      loading: () => null,
      locationLoaded: (WraperResponse<LocationModel> response) {
        info = response.info;
        final List<LocationModel> _location =
            response.results ?? <LocationModel>[];

        if (pageKey >= (info?.pages ?? 0)) {
          pagingControllerLocation.appendLastPage(_location);
        } else {
          pagingControllerLocation.appendPage(_location, pageKey + 1);
        }
      },
      error: (AppException exception) {
        pagingControllerLocation.error = exception.toString();
      },
    );

    notifyListeners();
  }

  void refresh() {
    pagingControllerLocation.refresh();
    notifyListeners();
  }
}
