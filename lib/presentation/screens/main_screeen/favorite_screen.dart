import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = [
      Colors.red,
      Colors.cyan,
      Colors.indigo,
      Colors.pink,
      Colors.red,
      Colors.cyan,
      Colors.indigo,
      Colors.pink
    ];

    var gridCrossMaxDelegate = const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0);

    var gridCrossFixDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      childAspectRatio: 1,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 10.0,
      // mainAxisExtent: 50.0
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite"),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: GridView.custom(
          gridDelegate: gridCrossMaxDelegate,
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {

              return InkWell(
                onTap: () async {
                  final a = await showGeneralDialog<String>(
                      context: context,
                      useRootNavigator: true,
                      barrierDismissible: true,
                      barrierColor: Colors.pink,
                      barrierLabel: "sdfs",
                      pageBuilder: (cnt, a1, a2) {
                        return Center(
                            child: Container(
                          width: 200,
                          height: 150,
                          color: Colors.yellowAccent,
                          child: TextButton(
                            child: Text("Click"),
                            onPressed: () {
                              Navigator.of(cnt).pop("hello");
                            },
                          ),
                        ));
                      });
                  print(a);
                  // showAdaptiveDialog(context: context, barrierDismissible: true, builder: (c) => Material(
                  //   color: Colors.deepPurple,
                  //   child: Center(
                  //     child: Container(
                  //       color: Colors.white,
                  //       padding: EdgeInsets.all(16.0),
                  //       width: 150, height: 150,
                  //       child: Text("Heelllo jan jan "),
                  //     ),
                  //   ),
                  // ));
                  // showAboutDialog(context: context);
                  // Navigator.pushNamed(context, "/profile", arguments: {"profileName": "Marieta"});
                },
                child: Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: Text("Index $index")),
              );
            },
            childCount: 100,
          ),
        ),
        // child: GridView.extent(maxCrossAxisExtent: 100, children: [
        //   Container(
        //       color: Colors.pink,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.deepOrange,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.orangeAccent,
        //     ),
        //     Container(
        //       color: Colors.brown,
        //     ),
        // ],),
        // child: GridView.count(crossAxisCount: gridCrossFixDelegate.crossAxisCount, mainAxisSpacing: gridCrossFixDelegate.mainAxisSpacing, children: [
        //   Container(
        //     color: Colors.pink,
        //   ),
        //   Container(
        //     color: Colors.green,
        //   ),
        //   Container(
        //     color: Colors.deepOrange,
        //   ),
        //   Container(
        //     color: Colors.red,
        //   ),
        //   Container(
        //     color: Colors.orangeAccent,
        //   ),
        //   Container(
        //     color: Colors.brown,
        //   ),
        // ],),
        // child: GridView.builder(gridDelegate: gridCrossFixDelegate, itemCount: colors.length, itemBuilder: (context, index) {
        //   return Container(color: colors[index], child: Text("Index $index"),);
        // })
        // child: GridView(
        //   // physics: NeverScrollableScrollPhysics(),
        //   gridDelegate:gridCrossFixDelegate ,
        //   children: [
        //     Container(
        //       color: Colors.pink,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.deepOrange,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.orangeAccent,
        //     ),
        //     Container(
        //       color: Colors.brown,
        //     ),
        //     Container(
        //       color: Colors.blueAccent,
        //     ),
        //     Container(
        //       color: Colors.limeAccent,
        //     ),
        //     Container(
        //       color: Colors.pinkAccent,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.deepOrange,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.orangeAccent,
        //     ),
        //     Container(
        //       color: Colors.brown,
        //     ),
        //     Container(
        //       color: Colors.blueAccent,
        //     ),
        //     Container(
        //       color: Colors.limeAccent,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
