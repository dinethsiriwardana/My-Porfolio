import 'package:get/get.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:intl/intl.dart';

class GetVsCodeController extends GetxController {
  var vsCodedata = {}.obs;
  var vsCodelanguage = "".obs;
  var vsCodeproject = "".obs;
  var vsCodestts = 0.obs;
  var vsCodetime = "".obs;
  var vsCodetimeOld = "".obs;
  var vaCodeimg = "/image/programmingl/code.png".obs;

  String timeAgo() {
    timeago.setLocaleMessages('en', timeago.EnMessages());
    final currentDate = DateTime.now();
    final formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
    final inputTime = DateTime.parse("$formattedDate ${vsCodetime.value}");
    return timeago.format(inputTime, locale: 'en');
  }

  void changeData(Map data) {
    // print(data);
    if (data['stts'] == 1) {
      if (data['language'] == null) {
        vsCodelanguage.value = "Shhhhhhh";
        vsCodeproject.value = "It's a secret";
      } else {
        vsCodestts.value = data['stts'];
        if (vsCodelanguage.value == data['language']) {
          timeago.setLocaleMessages('en', timeago.EnMessages());
          final currentDate = DateTime.now();
          final formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
          final inputTime =
              DateTime.parse("$formattedDate ${vsCodetimeOld.value}");
          vsCodetime.value = timeago.format(inputTime, locale: 'en');
        } else {
          timeago.setLocaleMessages('en', timeago.EnMessages());
          final currentDate = DateTime.now();
          final formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
          final inputTime = DateTime.parse("$formattedDate ${data['time']}");
          vsCodetime.value = timeago.format(inputTime, locale: 'en');
          vsCodetimeOld.value = data['time'];
          vsCodelanguage.value = data['language'];
        }

        vsCodeproject.value = data['projectName'];

        switch (vsCodelanguage.value) {
          case 'dart':
            vaCodeimg.value = "/image/programmingl/dart.png";
            break;
          case 'java':
            vaCodeimg.value = "/image/programmingl/java.png";
            break;
          case 'javascript':
            vaCodeimg.value = "/image/programmingl/js.png";
            break;
          case 'php':
            vaCodeimg.value = "/image/programmingl/php.png";
            break;
          case 'python':
            vaCodeimg.value = "/image/programmingl/py.png";
            break;
          //for css
          case 'css':
            vaCodeimg.value = "/image/programmingl/css.png";
            break;
          case 'html':
            vaCodeimg.value = "/image/programmingl/html.png";
            break;
          //go
          case 'go':
            vaCodeimg.value = "/image/programmingl/go.png";
            break;
          //ts
          case 'typescript':
            vaCodeimg.value = "/image/programmingl/ts.png";
            break;

          //json
          case 'json':
            vaCodeimg.value = "/image/programmingl/json.png";
            break;
          default:
            vaCodeimg.value = "/image/programmingl/code.png";
        }
      }
    } else {
      vsCodestts.value = data['stts'];
      vsCodelanguage.value = "";
      vsCodeproject.value = "";
      vsCodetime.value = "";
    }
  }
}
