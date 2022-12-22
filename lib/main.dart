import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:diet_pdf_creator/app/diet_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const DietApp());
}
