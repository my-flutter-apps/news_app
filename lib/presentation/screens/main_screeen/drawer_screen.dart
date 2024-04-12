import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 280,
        color: Colors.white,
        child: SafeArea(
          child: RefreshIndicator(
            onRefresh: () async {
              print("object");
            },
            // child: ListView(
            //   // reverse: true,
            //   // scrollDirection: Axis.horizontal,
            //   // physics: ScrollPhysics(),
            //   padding: EdgeInsets.all(16.0),
            //   children: [
            //     Card(
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 24.0),
            //         child: Text("Helllo list view"),
            //       ),
            //     ),
            //     Card(
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 24.0),
            //         child: Text("Helllo list view"),
            //       ),
            //     ),
            //     Card(
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 24.0),
            //         child: Text("Helllo list view"),
            //       ),
            //     ),
            //     Card(
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 24.0),
            //         child: Text("Helllo list view"),
            //       ),
            //     ),
            //     Card(
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 24.0),
            //         child: Text("Helllo list view"),
            //       ),
            //     ),
            //     Card(
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 24.0),
            //         child: Text("Helllo list view"),
            //       ),
            //     ),
            //     Card(
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 24.0),
            //         child: Text("Helllo list view"),
            //       ),
            //     ),
            //     Card(
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 24.0),
            //         child: Text("Helllo list view"),
            //       ),
            //     ),
            //     Card(
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 24.0),
            //         child: Text("Helllo list view"),
            //       ),
            //     ),
            //   ],
            // ),
            // child: ListView.builder(
            //   itemCount: 100,
            //     itemBuilder: (cnt, index) {
            //
            //   return Card(
            //     child: Padding(
            //       padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            //       child: Text("Hello $index"),
            //     ),
            //   );
            // }),
            /// TODO: -- ListTile highlighted during tap
            child: ListView.separated(
                itemBuilder: (cont, index) {
                  if(index == 0) {
                    return const DrawerHeader(child: Text("I am a header"));
                  }
                  return Card(
                    color: Colors.cyan,
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      horizontalTitleGap: 50.0,
                      minVerticalPadding: 0.0,
                      dense: true,
                      visualDensity: VisualDensity.compact,
                      leading: const CircleAvatar(radius: 24.0,),
                      // isThreeLine: true,
                      trailing: const Icon(Icons.arrow_circle_right_outlined),
                      title: Text("Title Title Title Title Title Title Title Title Title Title Title Title ${index + 1}"),
                      // subtitle: Text(
                      //     "Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle Subtitle"),
                      onTap: () {
                        print("object");
                      },
                    ),
                  );
                  // return Card(
                  //   child: Padding(
                  //     padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  //     child: Text("Hello ${index + 1}"),
                  //   ),
                  // );
                },
                separatorBuilder: (cont, index) {
                  if (index % 10 == 0) {
                    return Card(
                      color: Colors.indigo,
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: Text("Hello ${index + 1}"),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
                itemCount: 100),
          ),
        ),
      ),
    );
  }
}
