import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorViewModel extends GetxController {
  RxDouble totalValue = 0.0.obs;
  RxList<String> values = <String>[].obs;

  // Helper method to check if the last entry is an operator
  bool _isLastEntryOperator() {
    if (values.isEmpty) return false;
    const operators = ["+", "-", "*", "/", "%"];
    return operators.contains(values.last);
  }

  void addValue(String value) {
    if (value == "+" ||
        value == "-" ||
        value == "*" ||
        value == "/" ||
        value == "%") {
      // Only add an operator if the last entry is not already an operator
      if (!_isLastEntryOperator() && values.isNotEmpty) {
        values.add(value);
      }
    } else {
      // Add numeric value or decimal point
      values.add(value);
    }
  }

  void acMethod() {
    totalValue.value = 0.0;
    values.clear();
  }

  void calculateResult() {
    if (values.isNotEmpty && !_isLastEntryOperator()) {
      try {
        // Convert the list to a single string
        String expression = values.join("");

        // Replace 'x' with '*' and '÷' with '/'
        expression = expression.replaceAll("X", "*").replaceAll("/", "/");

        // Use MathExpression to evaluate the expression
        Parser parser = Parser();
        Expression exp = parser.parse(expression);
        ContextModel contextModel = ContextModel();

        // Evaluate the expression and update totalValue
        double eval = exp.evaluate(EvaluationType.REAL, contextModel);
        totalValue.value = eval;

        // Clear values and display the result
        values.clear();
        values.add(eval.toString());
      } catch (e) {
        // Handle errors (e.g., invalid expression)
        acMethod();
      }
    }
  }
}
