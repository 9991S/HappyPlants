import 'package:gherkin/gherkin.dart';
//Change the Class here corresponding to the code
class UserIsInDashboardStep extends Given {
  @override
  Future<void> executeStep() async {
    print('executing UserIsInDashboardStep..');
    // implement your code
  }

  @override
  RegExp get pattern => RegExp(r"the user is at the wiki Main page");
}