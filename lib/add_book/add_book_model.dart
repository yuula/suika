import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:suika/book.dart';

class AddBookModel extends ChangeNotifier {
  String bookTitle = '';

  Future addBookToFirebase() async {
    if (bookTitle.isEmpty) {
      throw ('タイトルを入力してください');
    }
    Firestore.instance.collection('books').add(
      {
        'title': bookTitle,
        'createdAt': Timestamp.now(),
      },
    );
  }

  Future updatebook(Book book) async {
    final document =
        Firestore.instance.collection('books').document(book.documentID);
    await document.updateData(
      {
        'title': bookTitle,
        'updateAt': Timestamp.now(),
      },
    );
  }
}
