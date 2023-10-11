import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_classroom/extras/constants.dart';
import 'package:the_classroom/routes.dart';
import 'package:the_classroom/screens/splash_screen/splash_screen.dart';

Future<void> main() async {
  runApp(const MyApp());

  /// Menjalankan aplikasi Flutter dengan widget MyApp sebagai tampilan utama
  await Firebase.initializeApp();

  /// Menginisialisasi Firebase (perlu diperhatikan bahwa Anda perlu mengimpor Firebase di file Anda).
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Deklarasi kelas MyApp yang merupakan widget.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// Menonaktifkan banner debug di mode pengembangan.
      title: 'The Classroom',

      /// Menentukan judul aplikasi.
      theme: ThemeData.dark().copyWith(
        /// Mengatur tema aplikasi dengan berbagai properti seperti warna latar belakang, warna utama, dan lainnya.
        scaffoldBackgroundColor: kPrimaryColor,

        /// Warna latar belakang halaman.
        primaryColor: kPrimaryColor,

        /// Warna utama aplikasi.
        appBarTheme: const AppBarTheme(
            color: kPrimaryColor,

            /// Warna latar belakang bilah aplikasi.
            elevation: 0

            /// Menghapus bayangan pada bilah aplikasi.
            ),
        textTheme: GoogleFonts.sourceSans3TextTheme(
          /// Menyesuaikan teks dalam aplikasi dengan font Google Fonts dan properti-properti seperti warna, ukuran font, dll.
          Theme.of(context).textTheme.apply().copyWith(
                bodyLarge: const TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 40.0,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 1.5),
              ),
        ),

        /// Mengatur tampilan input dalam aplikasi seperti label, teks hint, dan garis bawah.
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: kTextLightColor, fontSize: 20),
          hintStyle:
              TextStyle(fontSize: 18.0, color: kTextLightColor, height: .8),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kTextLightColor, width: .7),
          ),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: kTextLightColor)),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kTextLightColor, width: .7),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kSecondaryColor,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kErrorBorderColor, width: 1.2),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kErrorBorderColor, width: 1.2),
          ),
        ),
      ),
      // initial route
      initialRoute: SplashScreen.routeName,

      /// Mengatur rute awal aplikasi.
      routes: routes,

      /// Mendefinisikan daftar rute yang akan digunakan dalam aplikasi.
    );
  }
}
