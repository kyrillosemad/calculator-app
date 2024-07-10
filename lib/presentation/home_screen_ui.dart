import 'package:calculator/presentation/home_screen_logic.dart';
import 'package:flutter/material.dart';
import 'package:calculator/constants/data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MainPageState();
}

class _MainPageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: 5.h,
                ),
                Container(
                  padding: EdgeInsets.only(right: 4.sp),
                  alignment: Alignment.bottomRight,
                  width: 100.w,
                  height: 15.h,
                  child: Text(
                    Logic.input,
                    style: TextStyle(fontSize: 6.sp, color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 4.sp),
                  alignment: Alignment.centerRight,
                  width: 100.w,
                  height: 15.h,
                  child: Text(
                    Logic.result,
                    style: TextStyle(fontSize: 8.sp, color: Colors.white),
                  ),
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      double itemHeight = (constraints.maxHeight - 10 * 4) / 5;
                      double itemWidth = (constraints.maxWidth - 10 * 3) / 4;

                      return GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: itemWidth / itemHeight,
                        ),
                        itemCount: buttons.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                Logic.logic(index);
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.sp),
                                color: index == 0
                                    ? const Color.fromARGB(255, 207, 51, 39)
                                    : const Color.fromARGB(255, 233, 160, 3),
                              ),
                              child: Center(
                                child: Text(
                                  buttons[index],
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 5.sp),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
