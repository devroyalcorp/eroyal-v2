import 'package:eroyal/app/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/profile/my_team/dummy_my_team_model.dart';

class ProfileMyTeamController extends GetxController {
  TextEditingController searchE = TextEditingController();

  RxList<DummyMyTeam> filteredList = <DummyMyTeam>[].obs;

  List<DummyMyTeam> listDummyMyTeam = <DummyMyTeam>[
    DummyMyTeam(
      name: "Lautaro Martinez",
      profilePicture: imgProfileTeam1,
      lastActivity: "06/03/2024 12:49 PM",
      locationVisit: "INTER MILAN",
    ),
    DummyMyTeam(
      name: "Rodri",
      profilePicture: imgProfileTeam2,
      lastActivity: "22/02/2024 11:50 PM",
      locationVisit: "MAN CITY",
    ),
    DummyMyTeam(
      name: "Vinicius Jr",
      profilePicture: imgProfileTeam3,
      lastActivity: "01/03/2024 08:29 PM",
      locationVisit: "REAL MADRID",
    ),
    DummyMyTeam(
      name: "Kevin De Bruyne",
      profilePicture: imgProfileTeam4,
      lastActivity: "29/02/2024 15:19 PM",
      locationVisit: "MAN CITY",
    ),
    DummyMyTeam(
      name: "Jude Bellingham",
      profilePicture: imgProfileTeam5,
      lastActivity: "04/03/2024 12:22 PM",
      locationVisit: "REAL MADRID",
    ),
    DummyMyTeam(
      name: "Mohamed Salah",
      profilePicture: imgProfileTeam6,
      lastActivity: "06/02/2024 16:40 PM",
      locationVisit: "LIVERPOOL",
    ),
    DummyMyTeam(
      name: "Erling Haaland",
      profilePicture: imgProfileTeam7,
      lastActivity: "21/02/2024 10:00 PM",
      locationVisit: "MAN CITY",
    ),
    DummyMyTeam(
      name: "Harry Kane",
      profilePicture: imgProfileTeam8,
      lastActivity: "28/02/2024 11:23 PM",
      locationVisit: "BAYERN MUNICH",
    ),
    DummyMyTeam(
      name: "Kylian Mbappe",
      profilePicture: "",
      lastActivity: "02/03/2024 08:14 PM",
      locationVisit: "PSG",
    ),
    DummyMyTeam(
      name: "Cristiano Ronaldo",
      profilePicture: imgProfileTeam10,
      lastActivity: "03/03/2024 15:15 PM",
      locationVisit: "AL-NASSR",
    ),
    DummyMyTeam(
      name: "Lionel Messi",
      profilePicture: imgProfileTeam11,
      lastActivity: "04/03/2024 13:57 PM",
      locationVisit: "INTER MIAMI",
    ),
  ];

  @override
  void onInit() {
    filteredList.value = listDummyMyTeam;
    super.onInit();
  }

  void onChanged(String value) {
    List<DummyMyTeam> result = <DummyMyTeam>[];
    if (value.isEmpty) {
      result = listDummyMyTeam;
    } else {
      result = listDummyMyTeam
          .where((e) => e.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    filteredList.value = result;
  }

  String generateInitials(String name) {
    List<String> nameSplit = name.split(" ");
    String firstNameInitial = nameSplit.first.substring(0, 1).toUpperCase();
    String lastNameInitial = nameSplit.last.substring(0, 1).toUpperCase();
    return "$firstNameInitial$lastNameInitial";
  }
}
