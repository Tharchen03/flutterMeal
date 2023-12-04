import 'package:dartz/dartz.dart';
import 'package:river/features/trip/domain/entites/trip.dart';

import '../../../../core.error/failures.dart';

abstract class TripRepository {
  Future<Either<Failure, List<Trip>>> getTrips();
  Future<void> addTrip(Trip trip);
  Future<void> deleteTrip(int index);
}
