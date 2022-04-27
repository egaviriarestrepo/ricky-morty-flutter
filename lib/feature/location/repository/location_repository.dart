part of feature.location;

class LocationPath {
  LocationPath._();
  static String allLocations = 'location';
}

class LocationRepository {
  LocationRepository(this._reader);

  late final ApiProvider _api = _reader(apiProvider);
  final Reader _reader;

  Future<LocationState> fetchLocations(LocationFilterModel filters) async {
    final params = filters.toJson();

    final APIResponse response = await _api.get(
      LocationPath.allLocations,
      query: params,
    );

    return response.when(
      success: (success) {
        try {
          final value = success as Map<String, dynamic>;

          final resp = WraperResponse<LocationModel>.fromJson(
            value,
            LocationModel.fromJson,
          );

          return LocationState.locationLoaded(resp);
        } catch (e) {
          debugPrint('e --->>> $e');
          return LocationState.error(
            AppException.errorWithMessage(e.toString()),
          );
        }
      },
      error: (error) {
        debugPrint('error !!! -> $error');
        return LocationState.error(error);
      },
    );
  }
}
