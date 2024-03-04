import 'package:intl/intl.dart';

bool isEmpty(dynamic value) => ['null', '', '[]', '{}', '0'].contains("$value");

bool isNotEmpty(dynamic value) =>
    !['null', '', '[]', '{}', '0'].contains("$value");

String formatDate(String date) =>
    DateFormat("d MMM y", "id").format(DateTime.parse(date));
