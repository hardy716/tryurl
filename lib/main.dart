import 'package:flutter/material.dart';
import 'package:tryurl/constants.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("\n\n\n\n\n\n"),
            ElevatedButton(
                onPressed: _naverRoute, 
                child: Text("NAVER"),
              ),
            ElevatedButton(
                onPressed: _kakaoRoute,
                child: Text("KAKAO"),
              ),
            ElevatedButton(
                onPressed: _googleRoute,
                child: Text("GOOGLE"),
              ),
            ElevatedButton(
                onPressed: _cgvDetail, 
                child: Text("CGV"),
              ), 
            ElevatedButton(
                onPressed: _lottecinemaDetail, 
                child: Text("LOTTECINEMA"),
              ),
            ElevatedButton(
                onPressed: _megaboxDetail,
                child: Text("MEGABOX"),
              ),
            ElevatedButton(
                onPressed: _youtubeTrailer,
                child: Text("TRAILER"),
              ),
          ],
        )
      )
    );
  }
}


///// 영화 3사 상영스케쥴표 /////

Future<void> _cgvDetail() async {
  if (!await launchUrl(cgvDetail)) {
    throw 'Could not launch $cgvDetail';
  }
}

Future<void> _lottecinemaDetail() async {
  if (!await launchUrl(lottecinemaDetail)) {
    throw 'Could not launch $lottecinemaDetail';
  } 
}

Future<void> _megaboxDetail() async {
  if (!await launchUrl(megaboxDetail)) {
    throw 'Could not launch $megaboxDetail';
  }
}


///// 길찾기 url scheme /////

Future<void> _naverRoute() async {
  if (!await launchUrl(naverRoute)) {
    throw 'Could not launch $naverRoute';
  }
}

Future<void> _kakaoRoute() async {
  if (!await launchUrl(kakaoRoute)) {
    throw 'Could not launch $kakaoRoute';
  }
}

Future<void> _googleRoute() async {
  if (!await launchUrl(googleRoute)) {
    throw 'Could not launch $googleRoute';
  }
}


///// 영화 트레일러 및 영상자료 /////

Future<void> _youtubeTrailer() async {
  if (!await launchUrl(youtubeTrailer)) {
    throw 'Could not launch $youtubeTrailer';
  }
}