## SEECINE FLUTTER APP
## 모바일 환경에서도 선택한 예매 정보가 전달될 수 있도록 쿼리 파라미터를 변형해서 구현
#### 최종 예매를 위해서는 로그인이 필요하므로 사용자들에게 자동 로그인 권고
#### 비로그인 상태에서도 예매 정보 및 잔여 좌석 정보는 확인 가능
#### 3사마다 movieCd가 달라서 크롤링이 필요할 것으로 추정, MEGABOX의 경우 (순서)정보가 필요

#### CGV
```dart
/* CGV */

final Uri cgvDetail = Uri(
  scheme: 'https',
  host: 'm.cgv.co.kr',
  path: 'WebApp/Reservation/QuickResult.aspx',
  queryParameters:{
    "mgc" : "(movieCd)",
    "tc" : "(theaterCd)",
    "ymd" : "(date: YYMMDD)"
		--- 추가로 필요한 parameter ---
		"rt" : "MOVIE",
  },
);
```

#### MEGABOX
```dart
/* MEGABOX */

final Uri megaboxdetail = Uri(
  scheme: 'https',
  host: 'www.megabox.co.kr',
  path: 'bookingByPlaySchdlNo',
  queryParameters: {
    "playSchdlNo" : "(date: YYMMDD)(cinemaCd)(movieOr)", 
  }
);
```

#### LOTTECINEMA
```dart
/* LOTTECINEMA */

final Uri lottecinemadetail = Uri(
  scheme: 'https',
  host: 'www.lottecinema.co.kr',
  path: 'NLCMW/ticketing',
  queryParameters: {
		"movieCd" : "(movieCd)",
    "link_cinemaCode" : "(cinemaCd)",
    "link_date" : "(date: YYYY-MM-DD)",
		--- 추가로 필요한 parameter ---
		"filter" : "movie",
    "movieName" : "(movieNm)",
    "link_channelCode" : "naver",
  }
);
```

## 선택한 영화관까지의 길찾기 서비스 제공
#### 생각하지 못한 변수로 인해 갑자기 서비스를 제공할 수 없는 상황에 대비해서 동일 서비스를 제공할 수 있는 제2, 제3의 루트 마련

#### 네이버 맵
```dart
/* NAVER */

final Uri naverRoute = Uri(
  scheme: 'https',
  host: 'map.naver.com',
  path: 'index.nhn',
  queryParameters: {
    "slng" : "(출발지점 경도)",
		"slat" : "(출발지점 위도)", 
		"stext" : "(출발지점)", 
		"elng" : "(도착지점 경도)",
		"elat" : "(도착지점 위도)", 
		"etext" : "(도착지점)",
		"menu" : "route",
		"pathType" : "(타입)"   
  }
);
```
#### 구글 맵
```dart
/* NAVER */

final Uri naverRoute = Uri(
  scheme: 'https',
  host: 'map.naver.com',
  path: 'index.nhn',
  queryParameters: {
    "slng" : "(출발지점 경도)",
		"slat" : "(출발지점 위도)", 
		"stext" : "(출발지점)", 
		"elng" : "(도착지점 경도)",
		"elat" : "(도착지점 위도)", 
		"etext" : "(도착지점)",
		"menu" : "route",
		"pathType" : "(타입)"   
  }
);
```






## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
