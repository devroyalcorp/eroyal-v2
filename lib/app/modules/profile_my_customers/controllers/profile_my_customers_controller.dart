import 'package:eroyal/app/data/profile/my_customers/dummy_my_customers_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/assets.dart';

class ProfileMyCustomersController extends GetxController {
  TextEditingController searchE = TextEditingController();

  RxList<DummyMyCustomers> filteredList = <DummyMyCustomers>[].obs;

  List<DummyMyCustomers> listMyCustomers = <DummyMyCustomers>[
    DummyMyCustomers(
      name: "FC Barcelona",
      profilePicture: "",
      address: "Lluís Companys Olympic Stadium",
    ),
    DummyMyCustomers(
      name: "FC Bayern Munich",
      profilePicture: imgProfileCustomer7,
      address: "Allianz Arena",
    ),
    DummyMyCustomers(
      name: "Manchester City",
      profilePicture: imgProfileCustomer2,
      address: "Etihad Stadium",
    ),
    DummyMyCustomers(
      name: "Real Madrid",
      profilePicture: imgProfileCustomer3,
      address: "Santiago Bernabéu Stadium",
    ),
    DummyMyCustomers(
      name: "Paris Saint-Germain F.C.",
      profilePicture: imgProfileCustomer4,
      address: "Princes Park",
    ),
    DummyMyCustomers(
      name: "Inter Milan",
      profilePicture: imgProfileCustomer5,
      address: "San Siro Stadium",
    ),
    DummyMyCustomers(
      name: "Liverpool F.C.",
      profilePicture: "",
      address: "Anfield",
    ),
  ];

  @override
  void onInit() {
    filteredList.value = listMyCustomers;
    super.onInit();
  }

  void onChanged(String value) {
    List<DummyMyCustomers> result = <DummyMyCustomers>[];
    if (value.isEmpty) {
      result = listMyCustomers;
    } else {
      result = listMyCustomers
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
