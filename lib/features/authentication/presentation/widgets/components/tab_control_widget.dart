import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/tab_control_pages/pending.dart';

class TabControlWidget extends StatefulWidget {
  const TabControlWidget({super.key});

  @override
  State<TabControlWidget> createState() => _TabControlWidgetState();
}

class _TabControlWidgetState extends State<TabControlWidget> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Colors.blue,
                
                unselectedBackgroundColor: Colors.grey[200],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab( icon:Icon(Icons.pending) ,
                    text: "Pending",
                  ),
                  Tab(
                    icon: Icon(Icons.approval),
                    text: "Approved",
                  ),
                  Tab(icon: Icon(Icons.reset_tv),
                  text: "Rejected",),
                  Tab(icon: Icon(Icons.open_with_rounded),
                 
                  
                  text: "Checking",),
                ],
              ),
             const Expanded(
                child: TabBarView(
                  children: <Widget>[
                      Pending(),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                    Center(
                      child: Icon(Icons.directions_car),
                    ),
                    Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    Center(
                      child: Icon(Icons.directions_bike),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}