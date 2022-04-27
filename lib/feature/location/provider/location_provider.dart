part of feature.location;

final locationStateProvider =
    ChangeNotifierProvider<LocationNotifierState>((ref) {
  return LocationNotifierState(ref.read);
});

final locationRepository = Provider((ref) => LocationRepository(ref.read));
