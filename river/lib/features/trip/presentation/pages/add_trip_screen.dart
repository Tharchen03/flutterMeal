// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/features/trip/presentation/providers/trip_provider.dart';

import '../../domain/entites/trip.dart';

class AddTripScreen extends ConsumerWidget {
  final _formkey = GlobalKey<FormState>();
  final _titleController = TextEditingController(text: '');
  final _descController = TextEditingController(text: '');
  final _locationController = TextEditingController(text: '');
  final _pictureController = TextEditingController(text: '');
  List<String> pictures = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(labelText: "title"),
            ),
            TextFormField(
              controller: _descController,
              decoration: InputDecoration(labelText: "description"),
            ),
            TextFormField(
              controller: _locationController,
              decoration: InputDecoration(labelText: "location"),
            ),
            TextFormField(
              controller: _pictureController,
              decoration: InputDecoration(labelText: "picture"),
            ),
            ElevatedButton(
              onPressed: () {
                pictures.add(_pictureController.text);
                if(_formkey.currentState!.validate()){
                  final newTrip = Trip(
                    title:_titleController.text,
                    description:_descController.text,
                    date:DateTime.now(),
                    location:_locationController.text,
                    photos:pictures,
                  );
                  ref.read(tripleListNotifierProvider.notifier).addNewtrip(newTrip);
                    ref.read(tripleListNotifierProvider.notifier).loadTrips();
                }
              },
              child: Text('add trip'),
            ),
          ],
        ));
  }
}
