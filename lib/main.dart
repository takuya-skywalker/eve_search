import 'package:eve_search/cached_image.dart';
import 'package:eve_search/prefectures_window.dart';
import 'package:eve_search/rss_item.dart';
import 'package:eve_search/web_view_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ogp_data_extract/ogp_data_extract.dart';
import 'dart:convert';
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
      home: const MyHomePage(title: 'SEARCH'),
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
  String _selectArea = '';
  List<Rss> onlyHiphopList = [];

  Future<List<Rss>> fetchFeed() async {
    final response = await http
      .get(Uri.parse('https://iflyer.tv/rss/events/'));

    if (response.statusCode != 200) {
      throw Exception('Failed to fetch');
    }
    // debugPrint(utf8.decode(response.bodyBytes));
    final rssFeed = RssFeed.parse(utf8.decode(response.bodyBytes));
    final rssItemlist = rssFeed.items ?? <RssItem>[];
    final allCategoryList = rssItemlist
      .map(
        (item) => Rss(
          linkUrl: item.link ?? '',
          title: item.title ?? '',
          description: item.description ?? '',
        ),
      ).toList();
      //hot reloadの度にリストに重複して追加されてしまうのを防ぐため。
      onlyHiphopList = [];
      //descriptionに’Hip Hop’を含んでいるインスタンスのみonlyHiphopListに追加する
      for(int i = 0; i <= allCategoryList.length; i++){
        if(allCategoryList[i].description.contains('Hip Hop')){
          onlyHiphopList.add(allCategoryList[i]);
        }
      }
      return onlyHiphopList;
  }
  Future<String?> getOGPImageUrl(String url) async {
    final data = await OgpDataExtract.execute(url);
    return data?.image;
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
                  Text(_selectArea,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async{ 
                String selectArea = await showModalBottomSheet(
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
                  _selectArea = selectArea;
                });
              },
              child: const Text('エリアを選択する',),
            ),
            const SizedBox(height: 16,),
            SizedBox(
              height: 550,
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder(
                future: fetchFeed(),
                builder: (context, snapshot) {
                  return ListView.builder(
                    itemCount: onlyHiphopList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          trailing: FutureBuilder<String?>(
                            future: getOGPImageUrl(onlyHiphopList[index].linkUrl),
                            builder: (context, snapshot) {
                              if(snapshot.hasError){
                                final error  = snapshot.error;
                                return Text('$error', style: const TextStyle(fontSize: 12,),);
                              }else if (snapshot.hasData) {
                                String result = snapshot.data!;
                                return Container(
                                  width: 80,
                                  height: 80,
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: FittedBox(
                                    fit: BoxFit.fill,
                                    child: CachedImage(
                                      url: result,
                                    ),
                                  )
                                );
                              } else {
                                  return  const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator()
                                  );
                              }
                            }
                          ),
                          title: Text(onlyHiphopList[index].title.toString()),
                          onTap:(){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewPage(rssUrl: onlyHiphopList[index].linkUrl)));
                            });
                          },
                        ),
                      );
                    },
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}