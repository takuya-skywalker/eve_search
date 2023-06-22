import 'package:flutter/material.dart';
import 'const.dart';

class PrefecturesWindow extends StatefulWidget {
  const PrefecturesWindow({super.key});

  @override
  State<PrefecturesWindow> createState() => _PrefecturesWindowState();
}
class _PrefecturesWindowState extends State<PrefecturesWindow> {
  void selectPrefecture(String prefecture){
    switch(prefecture){
      case '青森県':
        Navigator.pop(context, [' ＞ 東北 ＞ $prefecture', 'https://iflyer.tv/rss/events/tohoku/aomori/']);
        break;
      case '岩手県':
        Navigator.pop(context, [' ＞ 東北 ＞ $prefecture', 'https://iflyer.tv/rss/events/tohoku/iwate/']);
        break;
      case '宮城県':
        Navigator.pop(context, [' ＞ 東北 ＞ $prefecture', 'https://iflyer.tv/rss/events/tohoku/miyagi/']);
        break;
      case '秋田県':
        Navigator.pop(context, [' ＞ 東北 ＞ $prefecture', 'https://iflyer.tv/rss/events/tohoku/akita/']);
        break;
      case '山形県':
        Navigator.pop(context, [' ＞ 東北 ＞ $prefecture', 'https://iflyer.tv/rss/events/tohoku/yamagata/']);
        break;
      case '福島県':
        Navigator.pop(context, [' ＞ 東北 ＞ $prefecture', 'https://iflyer.tv/rss/events/tohoku/fukushima/']);
        break;
      case '茨城県':
        Navigator.pop(context, [' ＞ 関東 ＞ $prefecture', 'https://iflyer.tv/rss/events/kanto/ibaraki/']);
        break;
      case '栃木県':
        Navigator.pop(context, [' ＞ 関東 ＞ $prefecture', 'https://iflyer.tv/rss/events/kanto/tochigi/']);
        break;
      case '群馬県':
        Navigator.pop(context, [' ＞ 関東 ＞ $prefecture', 'https://iflyer.tv/rss/events/kanto/gunma/']);
        break;
      case '埼玉県':
        Navigator.pop(context, [' ＞ 関東 ＞ $prefecture', 'https://iflyer.tv/rss/events/kanto/saitama/']);
        break;
      case '千葉県':
        Navigator.pop(context, [' ＞ 関東 ＞ $prefecture', 'https://iflyer.tv/rss/events/kanto/chiba/']);
        break;
      case '東京都':
        Navigator.pop(context, [' ＞ 関東 ＞ $prefecture', 'https://iflyer.tv/rss/events/kanto/tokyo/']);
        break;
      case '神奈川県':
        Navigator.pop(context, [' ＞ 関東 ＞ $prefecture', 'https://iflyer.tv/rss/events/kanto/kanagawa/']);
        break;
      case '新潟県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/niigata/']);
        break;
      case '富山県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/toyama/']);
        break;
      case '石川県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/ishikawa/']);
        break;
      case '福井県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/fukui/']);
        break;
      case '山梨県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/yamanashi/']);
        break;
      case '長野県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/nagano/']);
        break;
      case '岐阜県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/gihu/']);
        break;
      case '静岡県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/shizuoka/']);
        break;
      case '愛知県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/aichi/']);
        break;
      case '三重県':
        Navigator.pop(context, [' ＞ 中部 ＞ $prefecture', 'https://iflyer.tv/rss/events/chubu/mie/']);
        break;
      case '滋賀県':
        Navigator.pop(context, [' ＞ 関西 ＞ $prefecture', 'https://iflyer.tv/rss/events/kansai/shiga/']);
        break;
      case '京都府':
        Navigator.pop(context, [' ＞ 関西 ＞ $prefecture', 'https://iflyer.tv/rss/events/kansai/kyoto/']);
        break;
      case '大阪府':
        Navigator.pop(context, [' ＞ 関西 ＞ $prefecture', 'https://iflyer.tv/rss/events/kansai/osaka/']);
        break;
      case '兵庫県':
        Navigator.pop(context, [' ＞ 関西 ＞ $prefecture', 'https://iflyer.tv/rss/events/kansai/hyogo/']);
        break;
      case '奈良県':
        Navigator.pop(context, [' ＞ 関西 ＞ $prefecture', 'https://iflyer.tv/rss/events/kansai/nara/']);
        break;
      case '和歌山県':
        Navigator.pop(context, [' ＞ 関西 ＞ $prefecture', 'https://iflyer.tv/rss/events/kansai/wakayama/']);
        break;
      case '鳥取県':
        Navigator.pop(context, [' ＞ 中国 ＞ $prefecture', 'https://iflyer.tv/rss/events/chugoku/tottori/']);
        break;
      case '島根県':
        Navigator.pop(context, [' ＞ 中国 ＞ $prefecture', 'https://iflyer.tv/rss/events/chugoku/shimane/']);
        break;
      case '岡山県':
        Navigator.pop(context, [' ＞ 中国 ＞ $prefecture', 'https://iflyer.tv/rss/events/chugoku/okayama/']);
        break;
      case '広島県':
        Navigator.pop(context, [' ＞ 中国 ＞ $prefecture', 'https://iflyer.tv/rss/events/chugoku/hiroshima/']);
        break;
      case '山口県':
        Navigator.pop(context, [' ＞ 中国 ＞ $prefecture', 'https://iflyer.tv/rss/events/chugoku/yamaguchi/']);
        break;
      case '徳島県':
        Navigator.pop(context, [' ＞ 四国 ＞ $prefecture', 'https://iflyer.tv/rss/events/shikoku/tokushima/']);
        break;
      case '香川県':
        Navigator.pop(context, [' ＞ 四国 ＞ $prefecture', 'https://iflyer.tv/rss/events/shikoku/kagawa/']);
        break;
      case '愛媛県':
        Navigator.pop(context, [' ＞ 四国 ＞ $prefecture', 'https://iflyer.tv/rss/events/shikoku/ehime/']);
        break;
      case '高知県':
        Navigator.pop(context, [' ＞ 四国 ＞ $prefecture', 'https://iflyer.tv/rss/events/shikoku/kochi/']);
        break;
      case '福岡県':
        Navigator.pop(context, [' ＞ 九州 ＞ $prefecture', 'https://iflyer.tv/rss/events/kyushu/fukuoka/']);
        break;
      case '佐賀県':
        Navigator.pop(context, [' ＞ 九州 ＞ $prefecture', 'https://iflyer.tv/rss/events/kyushu/saga/']);
        break;
      case '長崎県':
        Navigator.pop(context, [' ＞ 九州 ＞ $prefecture', 'https://iflyer.tv/rss/events/kyushu/nagasaki/']);
        break;
      case '熊本県':
        Navigator.pop(context, [' ＞ 九州 ＞ $prefecture', 'https://iflyer.tv/rss/events/kyushu/kumamoto/']);
        break;
      case '大分県':
        Navigator.pop(context, [' ＞ 九州 ＞ $prefecture', 'https://iflyer.tv/rss/events/kyushu/oita/']);
        break;
      case '宮崎県':
        Navigator.pop(context, [' ＞ 九州 ＞ $prefecture', 'https://iflyer.tv/rss/events/kyushu/miyazaki/']);
        break;
      case '鹿児島県':
        Navigator.pop(context, [' ＞ 九州 ＞ $prefecture', 'https://iflyer.tv/rss/events/kyushu/kagoshima/']);
        break;
      case '沖縄県':
        Navigator.pop(context, [' ＞ 九州 ＞ $prefecture', 'https://iflyer.tv/rss/events/kyushu/okinawa/']);
        break;
      default:
        errorDialog();
        break;
    }
  }
  void errorDialog(){
    showDialog<void>(
      context: context,
      builder: (_){
        return AlertDialog(
          title: Column(
            children: [
              const Text('エラーが発生しました'),
              const Text('もう一度お試しください'),
              const SizedBox(height: 8,),
              ElevatedButton(
                child: const Text('OK'),
                onPressed: (){
                  Navigator.pop(context,);
                },
              )
            ],
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.95,
      height: MediaQuery.of(context).size.height*0.95,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16,),
              ListTile(
                title: const Text('全国'),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                onTap: () {
                  setState(() {
                    Navigator.pop(context, ['', 'https://iflyer.tv/rss/events/']);
                  });
                },
              ),
              ListTile(
                title: const Text('北海道'),
                trailing: const Icon(
                  Icons.keyboard_arrow_right,
                ),
                onTap: () {
                  setState(() {
                    Navigator.pop(context, [' ＞ 北海道', 'https://iflyer.tv/rss/events/hokkaido/']);
                  });
                },
              ),
              ExpansionTile(
                title: const Text('東北'),
                children: [
                  Column(
                    children: [
                      const Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ListTile(
                          title: const Text('東北全域'),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          onTap: (){
                            setState(() {
                              Navigator.pop(context, [' ＞ 東北全域', 'https://iflyer.tv/rss/events/tohoku/']);
                            });
                          },
                        ),
                      ),
                      Column(
                        children: 
                          touhokuList.map((e) => Column(
                            children: [
                              const Divider(
                                height: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: ListTile(
                                  title: Text(e),
                                  trailing: const Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selectPrefecture(e);
                                    });
                                  },
                                ),
                              ),
                            ],
                          )).toList(),
                      ),
                    ],
                  )
                ],
              ),
              ExpansionTile(
                title: const Text('関東'),
                children: [
                  Column(
                    children: [
                      const Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ListTile(
                          title: const Text('関東全域'),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          onTap: (){
                            setState(() {
                              Navigator.pop(context, [' ＞ 関東全域', 'https://iflyer.tv/rss/events/kanto/']);
                            });
                          },
                        ),
                      ),
                      Column(
                        children: 
                          kantouList.map((e) => Column(
                            children: [
                              const Divider(
                                height: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: ListTile(
                                  title: Text(e),
                                  trailing: const Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selectPrefecture(e);
                                    });
                                  },
                                ),
                              ),
                            ],
                          )).toList(),
                      ),
                    ],
                  )
                ],
              ),
              ExpansionTile(
                title: const Text('中部'),
                children: [
                  Column(
                    children: [
                      const Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ListTile(
                          title: const Text('中部全域'),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          onTap: (){
                            setState(() {
                              Navigator.pop(context, [' ＞ 中部全域', 'https://iflyer.tv/rss/events/chubu/']);
                            });
                          },
                        ),
                      ),
                      Column(
                        children: 
                          chuubuList.map((e) => Column(
                            children: [
                              const Divider(
                                height: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: ListTile(
                                  title: Text(e),
                                  trailing: const Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selectPrefecture(e);
                                    });
                                  },
                                ),
                              ),
                            ],
                          )).toList(),
                      ),
                    ],
                  )
                ],
              ),
              ExpansionTile(
                title: const Text('関西'),
                children: [
                  Column(
                    children: [
                      const Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ListTile(
                          title: const Text('関西全域'),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          onTap: (){
                            setState(() {
                              Navigator.pop(context, [' ＞ 関西全域', 'https://iflyer.tv/rss/events/kansai/']);
                            });
                          },
                        ),
                      ),
                      Column(
                        children: 
                          kansaiList.map((e) => Column(
                            children: [
                              const Divider(
                                height: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: ListTile(
                                  title: Text(e),
                                  trailing: const Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selectPrefecture(e);
                                    });
                                  },
                                ),
                              ),
                            ],
                          )).toList(),
                      ),
                    ],
                  )
                ],
              ),
              ExpansionTile(
                title: const Text('中国'),
                children: [
                  Column(
                    children: [
                      const Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ListTile(
                          title: const Text('中国全域'),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          onTap: (){
                            setState(() {
                              Navigator.pop(context, [' ＞ 中国全域', 'https://iflyer.tv/rss/events/chugoku/']);
                            });
                          },
                        ),
                      ),
                      Column(
                        children: 
                          chuugokuList.map((e) => Column(
                            children: [
                              const Divider(
                                height: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: ListTile(
                                  title: Text(e),
                                  trailing: const Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selectPrefecture(e);
                                    });
                                  },
                                ),
                              ),
                            ],
                          )).toList(),
                      ),
                    ],
                  )
                ],
              ),
              ExpansionTile(
                title: const Text('四国'),
                children: [
                  Column(
                    children: [
                      const Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ListTile(
                          title: const Text('四国全域'),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          onTap: (){
                            setState(() {
                              Navigator.pop(context, [' ＞ 四国全域', 'https://iflyer.tv/rss/events/shikoku/']);
                            });
                          },
                        ),
                      ),
                      Column(
                        children: 
                          shikokuList.map((e) => Column(
                            children: [
                              const Divider(
                                height: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: ListTile(
                                  title: Text(e),
                                  trailing: const Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selectPrefecture(e);
                                    });
                                  },
                                ),
                              ),
                            ],
                          )).toList(),
                      ),
                    ],
                  )
                ],
              ),
              ExpansionTile(
                title: const Text('九州'),
                children: [
                  Column(
                    children: [
                      const Divider(
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ListTile(
                          title: const Text('九州全域'),
                          trailing: const Icon(
                            Icons.keyboard_arrow_right,
                          ),
                          onTap: (){
                            setState(() {
                              Navigator.pop(context, [' ＞ 九州全域', 'https://iflyer.tv/rss/events/kyushu/']);
                            });
                          },
                        ),
                      ),
                      Column(
                        children: 
                          kyuushuuList.map((e) => Column(
                            children: [
                              const Divider(
                                height: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: ListTile(
                                  title: Text(e),
                                  trailing: const Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selectPrefecture(e);
                                    });
                                  },
                                ),
                              ),
                            ],
                          )).toList(),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}