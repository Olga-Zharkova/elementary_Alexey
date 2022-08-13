import 'package:elementary/elementary.dart';
import 'package:http/http.dart' as http;

class SettingsModel extends ElementaryModel {
  final information = EntityStateNotifier<String>()..loading();

  @override
  void init() {
    super.init();
    loadSomeData();
  }

  Future<void> loadSomeData() async {
    final a = await http.post(Uri.parse('https://api.waifu.pics/many/sfw/waifu'), body: {});
    await Future.delayed(const Duration(seconds: 3));
    information.content('Данные');
  }
}
