import 'package:corp_cab_app/app/environment/development_environment.dart';
import 'package:corp_cab_app/app/view/app.dart';
import 'package:corp_cab_app/bootstrap.dart';

Future<void> main() async {
  await bootstrap(builder: App.new, environment: DevelopmentEnvironment());
}
