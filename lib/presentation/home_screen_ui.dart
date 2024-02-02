import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:calculator/data/data.dart';
import 'home_screen_logic.dart';

class HOMESCREEN extends StatefulWidget {
  const HOMESCREEN({super.key});

  @override
  State<HOMESCREEN> createState() => _MainPageState();
}

class _MainPageState extends State<HOMESCREEN> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Column(children: [
          SizedBox(
            height: 8.h,
          ),
          Container(
            padding: EdgeInsets.all(5.w),
            alignment: Alignment.bottomRight,
            width: 100.w,
            height: 15.h,
            child: Text(
              LOGIC.input,
              style: TextStyle(fontSize: 22.sp, color: Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.w),
            alignment: Alignment.centerRight,
            width: 100.w,
            height: 10.h,
            child: Text(
              LOGIC.result,
              style: TextStyle(fontSize: 33.sp, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 2.5.h,
          ),
          Container(
            width: 100.w,
            height: 60.h,
            padding: EdgeInsets.only(top: 2.h),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: buttons.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      LOGIC.logic(index);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: index == 0
                            ? const Color.fromARGB(255, 207, 51, 39)
                            : const Color.fromARGB(255, 233, 160, 3)),
                    child: Center(
                      child: Text(
                        buttons[index],
                        style: TextStyle(color: Colors.black, fontSize: 20.sp),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ]),
      )),
    ));
  }
}
