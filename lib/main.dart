import 'package:eve_search/prefectures_window.dart';
import 'package:eve_search/rss_item.dart';
import 'package:eve_search/web_view_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ogp_data_extract/ogp_data_extract.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:webfeed_plus/webfeed_plus.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: MyHomePage(title: 'SEARCH'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _result = '';
  List<Blog> allCategoryList = [];
  List<Blog> onlyHiphopList = [];
  @override
  void initState() {
    fetchFeed();
    super.initState();
  }

  Future<List<Blog>> fetchFeed() async {
    final response = await http
      .get(Uri.parse('https://iflyer.tv/rss/events/'));

    if (response.statusCode != 200) {
      throw Exception('Failed to fetch');
    }
    // debugPrint(utf8.decode(response.bodyBytes));
    final rssFeed = RssFeed.parse(utf8.decode(response.bodyBytes));
    final rssItemlist = rssFeed.items ?? <RssItem>[];
    allCategoryList = rssItemlist
      .map(
        (item) => Blog(
          linkUrl: item.link ?? '',
          title: item.title ?? '',
          description: item.description ?? '',
        ),
      ).toList();
      return allCategoryList;
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      launchUrl(Uri.parse(url));
    } else {
      throw Exception('このリンク先にはアクセスできません');
    }
  }

  Future<String?> getOGPImageUrl(String url) async {
    final data = await OgpDataExtract.execute(url);
    return data?.image;
  }

  void addOnlyHiphopList(){
    for(int i = 0; i <= allCategoryList.length; i++){
      if(allCategoryList[i].description.contains('Hip Hop')){
        onlyHiphopList.add(allCategoryList[i]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text( widget.title,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 24, top: 8, bottom: 4),
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Text(
                    '全国',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(_result,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async{ 
                String result = await showModalBottomSheet(
                  context: context,
                  isScrollControlled: true, 
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  ),
                  builder: (BuildContext context) {
                    return const PrefecturesWindow();
                  },
                );
                setState(() {
                  _result = result;
                });
              },
              child: const Text('エリアを選択する',),
            ),
            const SizedBox(height: 16,),
            SizedBox(
              height: 550,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemExtent: 80,
                itemCount: allCategoryList.length,
                itemBuilder: (context, index) {
                    return ListTile(
                      trailing: FutureBuilder<String?>(
                        future: getOGPImageUrl(allCategoryList[index].linkUrl),
                        builder: (context, snapshot) {
                          if(snapshot.hasError){
                            final error  = snapshot.error;
                            return Text('$error', style: const TextStyle(fontSize: 12,),);
                          }else if (snapshot.hasData) {
                              String result = snapshot.data!;
                              return FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Image.network(
                                    result
                                  ),
                              );
                          } else {
                              return  Container(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator()
                              );
                          }
                        }
                      ),
                      title: Text(allCategoryList[index].title.toString()),
                      onTap:(){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewPage(url: allCategoryList[index].linkUrl)));
                          // _launchUrl(allCategoryList[index].linkUrl);
                        });
                      },
                  );
                },
              ),
            ),
            // Text(allCategoryList[0].description.toString()),
            // Text(allCategoryList[1].description.toString()),
            // Text(allCategoryList[2].description.toString()),
            // Text(allCategoryList[3].description.toString()),
            // Text(allCategoryList[4].description.toString()),
            // Text(allCategoryList[5].description.toString()),
            // Text(allCategoryList[6].description.toString()),
            // Text(allCategoryList[0].description.contains('Hip Hop').toString())
            // Text(onlyHiphopList[1].title.toString()),
            // Text(onlyHiphopList[0].linkUrl.toString()),
            // Text(onlyHiphopList[1].linkUrl.toString()),
            // ListView.builder(
            //   itemCount: displayList.length,
            //   itemBuilder: (context, index) {
            //       return ListTile(
            //         leading: Text(displayList[0].title.toString()),
            //         title: Text(displayList[0].title.toString()),
            //         onTap: () {},
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

