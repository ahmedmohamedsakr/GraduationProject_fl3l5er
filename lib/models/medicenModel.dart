

import 'package:cloud_firestore/cloud_firestore.dart';

class MedicineModel{
  String name;
  int amount;
  int phone;
  String location;
  String owner;
  String imageUrl;
  String state;

  MedicineModel({this.name,this.amount,this.imageUrl,this.location,this.owner,this.phone,this.state});

  factory MedicineModel.fromJison(DocumentSnapshot snapshot){
    var data = snapshot.data;
    return MedicineModel(
        name: data['name'],
      amount: data['amount'],
      location: data['location'],
      imageUrl: data['image'],
      owner: data['owner'],
      phone: data['phone'],
      state: data['state']
    );



}
}


class MedicineModelSearch{
  String name;
  int amount;
  int phone;
  String location;
  String owner;
  String imageUrl;
  String state;
  List<String> searchKey;

  MedicineModelSearch({this.name,this.amount,this.imageUrl,this.location,this.owner,this.phone,this.state,this.searchKey});

  factory MedicineModelSearch.fromJison(DocumentSnapshot snapshot){
    var data = snapshot.data;
    return MedicineModelSearch(
        name: data['name'],
        amount: data['amount'],
        location: data['location'],
        imageUrl: data['image'],
        owner: data['owner'],
        phone: data['phone'],
        state: data['state'],
        searchKey: data['sarchkey']
    );



  }
}