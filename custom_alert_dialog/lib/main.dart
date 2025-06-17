import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomAlertDialogScreen(),
    );
  }
}
class CustomAlertDialogScreen extends StatefulWidget {
  const CustomAlertDialogScreen({super.key});

  @override
  State<CustomAlertDialogScreen> createState() => _CustomAlertDialogScreenState();
}

class _CustomAlertDialogScreenState extends State<CustomAlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Alert Dialog"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(context: context, builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              clipBehavior: Clip.antiAlias,
              child: Container(
                width: 300,
                height: 240,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      color: Colors.green,
                      child: Icon(Icons.ac_unit),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Success",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet Consectetur",
                          ),
                          Text(
                            "adipiscing elit nulla eu erat tincidunt",
                          ),
                          Text("lacus fermentum returm."),
                          SizedBox(height: 20),

                          SizedBox(
                            width: 200,
                            height: 40,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: Colors.green,
                                ), // Green border
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(
                                    10,
                                  ), // Corner radius
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 12,
                                ), // Size
                              ),
                              child: Text(
                                'OK',
                                style: TextStyle(
                                  color: Colors.green, // Text color
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },);

        }, child: Text("Custom Alert Dialog")),
      ),
    );
  }
}

