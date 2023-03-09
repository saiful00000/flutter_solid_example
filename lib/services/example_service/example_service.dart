import 'package:solid_example/services/example_service/example_service_base.dart';

class ExampleService implements ExampleServiceBase{
  String dependency;

  ExampleService({required this.dependency});

  @override
  String getExample() {
    return 'Example String';
  }

  @override
  Future<String> getFutureExample() async {
    return "Example Future String";
  }
}