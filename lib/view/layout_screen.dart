import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task/view/create_business.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

int selectedPageIndex = 0;
int currentTab = 0;

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const BussinessAccount(),
        const Center(
          child: Text(
            'TEST',
          ),
        ),
        const Center(
          child: Text(
            'TEST',
          ),
        ),
        const Center(
          child: Text(
            'TEST',
          ),
        ),
      ][selectedPageIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Material(
                child: Center(
                  child: InkWell(
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage("assets/image/user.png"),
                          size: 25,
                        ),

                        Text("حسابى"),
                        //const Padding(padding: EdgeInsets.all(10))
                      ],
                    ),
                  ),
                ),
              ),
              Material(
                child: Center(
                  child: InkWell(
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage("assets/image/book.png"),
                          size: 25,
                        ),
                        Text("اعلاناتى"),
                        //const Padding(padding: EdgeInsets.only(left: 10))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(), //to make space for the floating button
              Material(
                child: Center(
                  child: InkWell(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/image/iconlist.png"),
                            size: 25,
                          ),
                          Text("الاقسام"),
                          //const Padding(padding: EdgeInsets.only(right: 10))
                        ],
                      )),
                ),
              ),
//            Column(
//

              Material(
                child: Center(
                  child: InkWell(
                    focusColor: Colors.blueAccent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          size: 30,
                          color: Colors.blueAccent,
                        ),
                        Text("الرئسية")
                        //const Padding(padding: EdgeInsets.only(left: 10))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
  decoration: BoxDecoration(
       image: DecorationImage(
            image: AssetImage(
                'assets/image/iconcamera.png'),
            fit: BoxFit.cover,
            ),
    borderRadius: BorderRadius.all(Radius.circular(20))
  ),
  // child: 
)
      ),
    );
  }
}
