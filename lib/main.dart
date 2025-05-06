import 'package:flutter/material.dart';
import 'package:examen_android_1082/pagina_inicial.dart';
import 'package:examen_android_1082/102_change_notifier/change_notifier.dart';
import 'package:examen_android_1082/16_alert_dialog/alertdialog.dart';
import 'package:examen_android_1082/32_icon_button/iconbutton.dart';
import 'package:examen_android_1082/40_clipoval/clipoval.dart';
import 'package:examen_android_1082/48_placeholder/placeholder.dart';
import 'package:examen_android_1082/72_animated_padding/animated_padding.dart';
import 'package:examen_android_1082/88_indexed_stack/indexed_stack.dart';
import 'package:examen_android_1082/91_cascade_operator/cascade_operator.dart';

void main() => runApp(const MiExamen());

class MiExamen extends StatelessWidget {
  const MiExamen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Android UII Examen  Botones con rutas nombradas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicial(),
        '/pantalla2': (context) => const MyChangeNotifier(),
        '/pantalla3': (context) => const MyAlertDialog(),
        '/pantalla4': (context) => const MyIconButton(),
        '/pantalla5': (context) => const MyClipOval(),
        '/pantalla6': (context) => const MyPlaceholder(),
        '/pantalla7': (context) => const MyAnimatedPadding(),
        '/pantalla8': (context) => const MyIndexedStack(),
        '/pantalla9': (context) => const MyCascadeOperator(),
      },
    );
  }
}
