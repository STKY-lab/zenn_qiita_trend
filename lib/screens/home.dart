import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../provider/zenn_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  String convertedFormat(String stringDate) {
    final outputFormat = DateFormat('yyyy/MM/dd');
    final dateTime = DateTime.parse(stringDate);
    return outputFormat.format(dateTime);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final AsyncValue<List<Map<String, dynamic>>> dataProvider =
        ref.watch(jsonDataProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: dataProvider.when(
          data: (data) => ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () async {
                  final url =
                      Uri.parse('https://zenn.dev${data[index]['path']}');
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    debugPrint('404');
                  }
                },
                child: ListTile(
                  selected: true,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black45),
                  ),
                  leading: SizedBox(
                    width: deviceWidth * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data[index]["emoji"],
                          style: TextStyle(
                            fontSize: deviceWidth * 0.1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  title: SizedBox(
                    width: deviceWidth * 0.8,
                    child: Text(
                      data[index]['title'],
                    ),
                  ),
                  subtitle: Text(
                    convertedFormat(
                      data[index]['sourceRepoUpdatedAt'] ??
                          data[index]['publishedAt'],
                    ),
                  ),
                  trailing: SizedBox(
                    width: deviceWidth * 0.1,
                    child: FittedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(data[index]['user']['avatarSmallUrl']),
                          Text(
                            data[index]['user']["username"].toString(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          error: (e, _) => Text('Error: $e'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
