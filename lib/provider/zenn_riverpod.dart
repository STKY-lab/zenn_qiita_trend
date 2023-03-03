import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final jsonDataProvider =
    FutureProvider<List<Map<String, dynamic>>>((ref) async {
  final jsonString =
      await rootBundle.loadString('lib/samples/sample_data.json');
  final jsonData = json.decode(jsonString);
  return List<Map<String, dynamic>>.from(jsonData);
});
