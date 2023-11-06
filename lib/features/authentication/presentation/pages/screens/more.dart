import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/tab_control_widget.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text(
          'Create Application',
          style: BoldHeaderstextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.only(left: 150),
            ),
          ),
          Positioned(
            top: 20,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                  left: 9.0,
                  right: 9.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All feilds are required",
                      style: getRegularSmall(color: Colors.blue),
                    ),
                    const Expanded(child: TabControlWidget()),
                    
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(4, 4)),
                        ]),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                  child: Text(
                                "22",
                                style: MediumHeaderStyle(),
                              )),
                            ),
                            const Text("Ending"),
                            const Text("Leavers")
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(4, 4)),
                        ]),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.yellow)),
                              child: Center(
                                  child: Text(
                                "22",
                                style: MediumHeaderStyle(),
                              )),
                            ),
                            const Text("New"),
                            const Text("Leavers")
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(4, 4)),
                        ]),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.blue)),
                              child: Center(
                                  child: Text(
                                "22",
                                style: MediumHeaderStyle(),
                              )),
                            ),
                            const Text("Active"),
                            const Text("Leavers")
                          ],
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
       floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.blue,
       child: const Icon(
          Icons.add,
          color: Colors.white,
       ),
         onPressed: () {
          _showBottomSheet(context);
         }),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Create Application',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
               // controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'Type here',
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
               // controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: 'Type here',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      );
    },
  );
}