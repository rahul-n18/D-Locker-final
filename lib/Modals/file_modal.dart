import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FileModel {
  late String id;
  late String url;
  late String name;
  late Timestamp dateUplaoded;
  late String fileType;
  late String fileExtension;
  late String foldername;
  late int size;
  FileModel(this.id, this.url, this.name, this.dateUplaoded, this.fileType,
      this.fileExtension, this.foldername, this.size);
  FileModel.fromDocumentSnapshot(QueryDocumentSnapshot<Object?> doc) {
    id = doc.id;
    url = doc['fileUrl'];
    name = doc['fileName'];
    dateUplaoded = doc['dateUploaded'];
    fileType = doc['fileType'];
    fileExtension = doc['fileExtenstion'];
    foldername = doc['folder'];
    size = doc['size'];
  }
}
