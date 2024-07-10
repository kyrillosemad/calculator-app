import 'package:calculator/constants/data.dart';

class Logic {
  static String input = "";
  static var result = "0";

  static logic(index) {
    /////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////////////////////////////////
    if (index == 0 || index == 16) {
      input = "";
      result = "0";
    }
    ///////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////
    else if (index == 1) {
      String input2 = input.replaceRange(input.length - 1, null, '');

      input = input2;
    }

    ////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////
    else if (index == 2 || index == 18) {
    }

    ////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////

    else if (index == 19) {
      var num1 = "";
      var num2 = "";
      var operator = "";
      var sum = 0;
      var num2time = false;
      // ignore: prefer_typing_uninitialized_variables
      var res1;
      // ignore: prefer_typing_uninitialized_variables
      var res2;
      for (int i = 0; i < input.length; i++) {
        if (sum < 2) {
          if ((input[i] == '+' ||
              input[i] == '-' ||
              input[i] == '*' ||
              input[i] == '/')) {
            operator = input[i];
            sum += 1;
            if (num2time == true) {
              num2time = false;
            } else {
              num2time = true;
            }
          } else {
            if (num2time == true) {
              num2 += input[i];
            } else {
              num1 += input[i];
            }
          }
          if ((sum > 1) || (i == input.length - 1)) {
            if (operator == '+') {
              res1 = int.parse(num1) + int.parse(num2);
            }
            if (operator == '*') {
              res1 = int.parse(num1) * int.parse(num2);
            }
            if (operator == '-') {
              res1 = int.parse(num1) - int.parse(num2);
            }
            if (operator == '/') {
              res1 = int.parse(num1) / int.parse(num2);
            }
            res2 = res1.toString();
            res1 = 0;
            num1 = "";
            num2 = "";
          }
        }

        if ((num1 == "" && num2 == "") && (i + 1 < input.length)) {
          sum += 1;
        }
        if (sum > 1) {
          if ((input[i] == '+' ||
              input[i] == '-' ||
              input[i] == '*' ||
              input[i] == '/')) {
            num1 = res2;
            operator = input[i];
          } else {
            num2 += input[i];
          }
          if ((i == input.length - 1) ||
              ((input[i + 1] == '+') ||
                  (input[i + 1] == '-') ||
                  (input[i + 1] == '*') ||
                  (input[i + 1] == '/'))) {
            if (operator == '+') {
              res1 = int.parse(num1) + int.parse(num2);
            }
            if (operator == '*') {
              res1 = int.parse(num1) * int.parse(num2);
            }
            if (operator == '-') {
              res1 = int.parse(num1) - int.parse(num2);
            }
            if (operator == '/') {
              res1 = int.parse(num1) / int.parse(num2);
            }
            res2 = res1.toString();
            res1 = 0;
            num1 = "";
            num2 = "";
          }
        }
      }

      result = res2;
    }
    /////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////
    else {
      if (input == "") {
        if (buttons[index] == '/' ||
            buttons[index] == '*' ||
            buttons[index] == '+' ||
            buttons[index] == '-' ||
            buttons[index] == '(' ||
            buttons[index] == ')') {
          input += "0";
          input += buttons[index];
        } else {
          input += buttons[index];
        }
      } else {
        input += buttons[index];
      }
    }
  }
}
