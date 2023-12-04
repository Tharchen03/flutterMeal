import 'package:hive_flutter/hive_flutter.dart';
import 'package:river/features/trip/data/models/trip_model.dart';

// logic
class TripLocalDataSource {
  final Box<TripModel> tripBox;

  TripLocalDataSource({required this.tripBox});

  List<TripModel> getTrips() {
    return tripBox.values.toList();
  }

  addTrip(TripModel trip) {
    tripBox.add(trip);
  }

  deleteTrip(int index) {
    tripBox.delete(index);
  }
}
