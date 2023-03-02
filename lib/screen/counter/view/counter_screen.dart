import 'package:counter_app/screen/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: 225,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Consumer<CounterProvider>(
                      builder: (context, value, child) => Text(
                            "${value.i}",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Provider.of<CounterProvider>(context, listen: false)
                                .Increment();
                          },
                          child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 75,
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            Provider.of<CounterProvider>(context, listen: false)
                                .Decrement();
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 75,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Provider.of<CounterProvider>(context, listen: false)
                                .Two();
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                            alignment: Alignment.center,
                            child: Text(
                              "2x",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Provider.of<CounterProvider>(context, listen: false)
                                .Three();
                          },
                          child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue, shape: BoxShape.circle),
                              alignment: Alignment.center,
                              child: Text(
                                "3x",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            Provider.of<CounterProvider>(context, listen: false)
                                .Four();
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                            alignment: Alignment.center,
                            child: Text(
                              "4x",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Provider.of<CounterProvider>(context, listen: false)
                            .Reset();
                      },
                      child: Container(
                        height: 75,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.blue,),
                        alignment: Alignment.center,
                        child: Text(
                          "Reset",
                          style:
                          TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
