import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/zenn_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<List<Map<String, dynamic>>> readJsonData() async {
    final String jsonString =
        await rootBundle.loadString('lib/samples/sample_data.json');
    final jsonData = json.decode(jsonString);
    return List<Map<String, dynamic>>.from(jsonData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: readJsonData(),
        builder: (BuildContext context,
            AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Text(data[index]["emoji"]),
                  title: Text(data[index]['title']),
                  subtitle: Text(
                    data[index]['sourceRepoUpdatedAt'] ??
                        data[index]['publishedAt'],
                  ),
                  trailing: Text(data[index]['user']["username"].toString()),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
