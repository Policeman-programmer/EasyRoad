import 'package:cheaproad/mocks/mockData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/instructionItem.dart';
import 'package:url_launcher/url_launcher.dart';

import 'styles.dart';

class DataBuilder {
  static final List<InstructionItem> items = [
    InstructionItem(
        title: Container(
            padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
            child: Text(MockData.generalInfo,
                textAlign: TextAlign.left, style: Styles.headerLarge)),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: Text(MockData.generalInfoDesc)),
            Container(
              padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
              child: InkWell(
                  child: new Text(
                    MockData.mapText,
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () => launch(MockData.mapLink)),
            ),
            Container(
              child: ListTile(
                title: Text("Способи оплати єлектронніх віньєток: \n"
                    "1) платіжною картою на веб-сайті\n"),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: InkWell(
                  child: new Text(
                    "https://eznamka.sk/selfcare/purchase",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () => launch("https://eznamka.sk/selfcare/purchase")),
            ),
            Container(
              child: ListTile(
                title: Text(
                    "2) платіжною картою через мобільний додаток «eznamka»\n"),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
              child: InkWell(
                  child: new Text(
                    "Playmarket",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () => launch(
                      "https://play.google.com/store/apps/details?id=com.eznamka&hl=en&gl=US")),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
              child: InkWell(
                  child: new Text(
                    "AppStore",
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () => launch(
                      "https://apps.apple.com/sk/app/eznamka/id1040605704")),
            ),
            Container(
              child: ListTile(
                title: Text(
                    "3) готівкою та/або платіжною картою у пунктах продажу позначених логотипом «eznámka»\n"
                    "4) платіжною картою у автоматах самообслуговування, що знаходяться на прикордонних контрольно-пропускних пунктах\n"),
              ),
            ),
            Container(
              child: ListTile(
                title: Text(
                    "Платні ділянки автомагістралей позначені наступним дорожнім знаком"),
              ),
            ),
            Container(
              child: Image(image: AssetImage('assets/images/paid_road.png')),
            ),
          ],
        )),
    InstructionItem(
        title: Container(
            padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
            child: Text("Типи віньєток",
                textAlign: TextAlign.left, style: Styles.headerLarge)),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: Text("тут буде опис віньеток")),
          ],
        )),
    InstructionItem(
        title: Container(
            padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
            child: Text("Купівля електронної віньєтки через офіційний сайт",
                textAlign: TextAlign.left, style: Styles.headerLarge)),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: Text(
                    "Для купівлі електронної віньєтки потрібно перейти по даному посиланню "
                    "https://eznamka.sk/selfcare/purchase та здійснити наступні кроки:")),
            Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: Text("Крок 1. Вибір способу купівлі")),
            Row(
              children: [
                _pictureWithDescription('assets/images/for_one_auto.png',
                    "для одного транспортного засобу (оплата онлайн)"),
                _pictureWithDescription(
                    'assets/images/for_several_autos.png',
                    "для декількох транспортних засобів (оплата онлайн) \n"
                        "*\n"
                        "рекомендується для підприємців"),
                _pictureWithDescription(
                    'assets/images/order.png', "Замовлення"),
              ],
            ),
            Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: Text("Крок 2. Вибір типу електронної віньєтки")),
            Row(
              children: [
                _pictureWithDescription(
                    'assets/images/vehicle.png', "Транспортний засіб"),
                _pictureWithDescription("assets/images/trailer.png", "Причіп"),
              ],
            ),
            Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: Text("Крок 3. Вибір строку дії електронної віньєтки")),
            Container(
                child: Text("- 365 днів                                                                                           \n"
                    "- Календарний рік\n"
                    "- 30 днів\n"
                    "- 10 днів\n")),
            Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child:
                    Text("Крок 4. Зазначення необхідних даних автомобіля")),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Text(
                "Зазначення даних транспортного засобу                           ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Text(
                  "Реєстраційний номер ТЗ (потрібно зазначати без пробілів, тире)\n"
                  "Реєстраційний номер ТЗ – знову \n"
                  "Країна реєстрації ТЗ\n"),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Column(
                  children: [
                    Text(
                      "Зазначення терміну дії електронної віньєтки                                       ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text("Дата початку дії \n"
                        "Дата закінчення терміну дії (зазначається автоматично)\n"),
                  ],
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                child: Text(
              "Зазначення даних для отримання підтвердження про оплату",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Text("E-mail \n"
                  "Номер мобільного телефону у міжнародному форматі (необов’язково)\n"),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Text(
                  "Проставлення відмітки щодо ознайомлення з порядком обробки персональних даних",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Text("Проставлення відмітки у вікні «Я не робот»          ",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Text("Підтвердження замовлення                            ",
                    style: TextStyle(fontWeight: FontWeight.bold))),
            Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: Text("Крок 5. Оплата")),
            Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child:
                    Text("Перевірка зазначених даних та вибір способу оплати")),
            Container(
                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                child: Text("Крок 6. Здійснення оплати")),
            Container(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Text(
                    "Введення платіжних даних банківської карти та підтвердження платежу")),

          ],
        )),
    InstructionItem(
        title: Container(
            padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
            child: Text("Важлива інформація",
                textAlign: TextAlign.left, style: Styles.headerLarge)),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Text("Автопоїзди (ТЗ + причіп) загальною масою більше 3,5 тонн"
                  "зобов’язані мати дві електронні віньєтки (одна для автомобіля, а інша для причепа)."
                  "Автопоїзди (ТЗ + причіп) загальною масою до 3,5 тонн зобов’язані мати лише одну електронну віньєтку (для автомобіля)."
                  "Купівля електронних віньєток для мотоциклів не вимагається"
                  "Власники паркувальних посвідчень особи з інвалідністю мають право подати заяву про звільнення від оплати автострадних"
                  " віньєток. Дану заяву можна подати у паперовій формі у пунктах продажу позначених логотипом «eznámka» або в електронному"
                  "вигляді через наступне посилання https://eznamka.sk/selfcare/request"),
            )
          ],
        ))
  ];

  static Widget _pictureWithDescription(String imgURL, String text) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(imgURL)),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ));
  }
}
