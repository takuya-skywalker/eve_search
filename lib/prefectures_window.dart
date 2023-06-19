import 'package:flutter/material.dart';

import 'const.dart';

class PrefecturesWindow extends StatefulWidget {
  const PrefecturesWindow({super.key});

  @override
  State<PrefecturesWindow> createState() => _PrefecturesWindowState();
}
class _PrefecturesWindowState extends State<PrefecturesWindow> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Navigator.pop(context, '');
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
                    Navigator.pop(context, ' ＞ 北海道');
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
                              Navigator.pop(context, ' ＞ 東北全域');
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
                                      Navigator.pop(context, ' ＞ 東北 ＞ ${e}');
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
                              Navigator.pop(context, ' ＞ 関東全域');
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
                                      Navigator.pop(context, ' ＞ 関東 ＞ ${e}');
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
                              Navigator.pop(context, ' ＞ 中部全域');
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
                                      Navigator.pop(context, ' ＞ 中部 ＞ ${e}');
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
                              Navigator.pop(context, ' ＞ 関西全域');
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
                                      Navigator.pop(context, ' ＞ 関西 ＞ ${e}');
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
                              Navigator.pop(context, ' ＞ 中国全域');
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
                                      Navigator.pop(context, ' ＞ 中国 ＞ ${e}');
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
                              Navigator.pop(context, ' ＞ 四国全域');
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
                                      Navigator.pop(context, ' ＞ 四国 ＞ ${e}');
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
                              Navigator.pop(context, ' ＞ 九州全域');
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
                                      Navigator.pop(context, ' ＞ 九州 ＞ ${e}');
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