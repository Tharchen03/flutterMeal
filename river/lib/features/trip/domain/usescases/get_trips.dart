import 'package:dartz/dartz.dart';
import 'package:river/features/trip/domain/entites/trip.dart';
import 'package:river/features/trip/domain/repositories/trip_repository.dart';

import '../../../../core.error/failures.dart';

class GetTrips {
  final TripRepository repository;

  GetTrips({required this.repository});
  
  Future<Either<Failure, List<Trip>>> call() {
    return repository.getTrips();
  }
}
