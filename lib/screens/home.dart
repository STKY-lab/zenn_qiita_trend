import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/zenn_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../provider/zenn_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  Future<List<Map<String, dynamic>>> readJsonData() async {
    final String jsonString =
        await rootBundle.loadString('lib/samples/sample_data.json');
    final jsonData = json.decode(jsonString);
    return List<Map<String, dynamic>>.from(jsonData);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Map<String, dynamic>>> dataProvider =
        ref.watch(jsonDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: dataProvider.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(
                data[index]["emoji"].toString(),
              ),
              title: Text(data[index]["title"]),
              subtitle: Text(
                data[index]["sourceRepoUpdatedAt"] ??
                    data[index]["publishedAt"],
              ),
              trailing: Text(data[index]["user"]["username"]),
            );
          },
        ),
        error: (e, _) => Text('Error: $e'),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
