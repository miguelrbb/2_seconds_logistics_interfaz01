import 'package:cloud_firestore/cloud_firestore.dart';

class Menus
{
  String? menuID;
  String? menuInfo;
  String? menuTitle;
  Timestamp? publishedDate;
  String? sellersUID;
  String? status;
  String? thumbnnailUrl;


  Menus({
    this.menuID,
    this.menuInfo,
    this.menuTitle,
    this.publishedDate,
    this.sellersUID,
    this.status,
    this.thumbnnailUrl,
  });
  //guardamos los datos del json del firebase a nuestras propiedades
   Menus.fromJson(Map<String, dynamic> json)
   {
     menuID = json["menuID"];
     menuInfo =json["menuInfo"];
     menuTitle = json["menuTitle"];
     publishedDate =json["publishedDate"];
     sellersUID =json["sellersUID"];
     status = json["status"];
     thumbnnailUrl =json["thumbnnailUrl"];
   }

   //metodo que devuelve un nuevo json con nuestros valores de
  //las variables

   Map<String, dynamic> tojson()
   {
     //creamos un nuevo fichero json
     final Map<String, dynamic> data = Map<String, dynamic>();
     data["menuID"] = this.menuID;
     data["menuInfo"] = this.menuInfo;
     data["menuTitle"] = this.menuTitle;
     data["publishedDate"] =this.publishedDate;
     data["sellersUID"] = this.sellersUID;
     data["status"] = this.status;
     data["thumbnnailUrl"] = this.thumbnnailUrl;
     return data;
   }
}