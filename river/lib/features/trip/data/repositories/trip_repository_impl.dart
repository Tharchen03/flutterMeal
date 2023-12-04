import 'package:dartz/dartz.dart';
import 'package:river/features/trip/data/datasourse/trip_local_datasource.dart';
import 'package:river/features/trip/data/models/trip_model.dart';
import 'package:river/features/trip/domain/entites/trip.dart';
import 'package:river/features/trip/domain/repositories/trip_repository.dart';

import '../../../../core.error/failures.dart';

class TripRepositoryImpl implements TripRepository {
  final TripLocalDataSource localDataSource;

  TripRepositoryImpl(this.localDataSource);

  @override
  Future<void> addTrip(Trip trip) async {
    final tripModel = TripModel.fromEntity(trip);
    localDataSource.addTrip(tripModel);
  }

  @override
  Future<void> deleteTrip(int index) async {
    localDataSource.deleteTrip(index);
  }

  @override
  Future<Either<Failure, List<Trip>>> getTrips() async {
    try {
      final tripModels = localDataSource.getTrips();
      List<Trip> res = tripModels.map((model) => model.toEntity()).toList();
      return Right(res);
    } catch (err) {
      return left(SomeSpecificError(err.toString()));
    }
  }
}
