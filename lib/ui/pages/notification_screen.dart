import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/ui/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key, required this.payload}) : super(key: key);

  final String payload;

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String _payload = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _payload = widget.payload;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
        backgroundColor: context.theme.primaryColor,
        title: Text(
          _payload.toString().split('|')[0],
          style: TextStyle(color: Get.isDarkMode ? Colors.white : darkGreyClr),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Column(
            children: [
              Text(
                'Hello, Ahmed',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Get.isDarkMode ? Colors.white : darkGreyClr),
              ),
              const SizedBox(height: 10),
              Text(
                'You have a new reminder',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Get.isDarkMode ? Colors.grey[100] : darkGreyClr),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: primaryClr),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.text_format,
                          size: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Title',
                          style:
                              TextStyle(fontSize: 30, color: Colors.grey[100]),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Text(
                      _payload.toString().split('|')[0],
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Icon(
                          Icons.description,
                          size: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Description',
                          style:
                              TextStyle(fontSize: 30, color: Colors.grey[100]),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Text(
                      _payload.toString().split('|')[1],
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_today_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Date',
                          style:
                              TextStyle(fontSize: 30, color: Colors.grey[100]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      _payload.toString().split('|')[2],
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
