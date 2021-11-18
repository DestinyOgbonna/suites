import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suites/app/app.logger.dart';

class FireStoreAuth{

   final log = getLogger('FireStore service');
  static FireStoreAuth? _instance;
  static FirebaseFirestore? _fireStore;

  static Future<FireStoreAuth> getInstance() async {
    _instance ??= FireStoreAuth();
    _fireStore ??= FirebaseFirestore.instance;
    return _instance!;
  }

  final CollectionReference productsRef =
      FirebaseFirestore.instance.collection('hotels');

}