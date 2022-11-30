/* 영화관 3사 robots.txt
1. CGV robots.txt 
  https://www.cgv.co.kr/robots.txt
  User-agent: Yeti
  Allow: /
  User-agent: Googlebot
  Allow: /
2. LotteCinema robots.txt
  https://www.lottecinema.co.kr/robots.txt
  User-agent: *
  Disallow: /
3. MegaBox robots.txt
  https://www.megabox.co.kr/robots.txt
  설정x(점검중... )
*/


///// 영화 3사 상영스케쥴표 /////

final Uri cgvDetail = Uri(
  scheme: 'https',
  host: 'm.cgv.co.kr',
  path: 'WebApp/Reservation/QuickResult.aspx',
  queryParameters: {
    "mgc" : "20031106", // movieCD
    "tc" : "0056", // theaterCD
    "rt" : "MOVIE", // filter
    "ymd" : "20221126" // date
  },
);

final Uri lottecinemaDetail = Uri(
  scheme: 'https',
  host: 'www.lottecinema.co.kr',
  path: 'NLCMW/ticketing',
  queryParameters: {
    "filter" : "movie", // filter
    "link_cinemaCode" : "3017", //cinemaCD ~= theaterCD
    "movieCd" : "19162", // movieCD
    "movieName" : "올빼미", //+ movieNAME
    "link_date" : "2022-11-25", // date
    "link_channelCode" : "naver", //+ naverLink
  }
);

final Uri megaboxDetail = Uri(
  scheme: 'https',
  host: 'www.megabox.co.kr',
  path: 'bookingByPlaySchdlNo',
  queryParameters: {
    "playSchdlNo" : "2211254431001", // date(YYMMDD) + cinemaCD(4) + 상영번호(3) 
  }
);
// 메가박스의 경우 영화 코드는 따로 넘기지 않고 상영번호를 001로 설정


///// 길찾기 url scheme /////

final Uri naverRoute = Uri(
  scheme: 'https',
  host: 'map.naver.com',
  path: 'index.nhn',
  queryParameters: {
    "slng" : "126.8966655",
		"slat" : "37.4830969", 
		"stext" : "출발지이름", 
		"elng" : "127.0276368",
		"elat" : "37.4979502", 
		"etext" : "도착지이름",
		"menu" : "route",
		"pathType" : "1"   
  }
);

final Uri kakaoRoute = Uri(
  scheme: 'https',
  host: 'map.kakao.com',
  path: '',
  queryParameters: {
    "map_type" : "TYPE_MAP",
    "target" : "car",
    "rt" : "%2C%2C523953%2C1084098",
    "rt1" : "갈뫼초등학교",
    "rt2" : "카카오판교오피스",
  }
);

final Uri googleRoute = Uri(
  scheme: 'https',
  host: 'www.google.com',
  path: 'maps/dir/갈뫼초등학교/인덕원역',
  queryParameters: {
    "hl" : "ko",
  }
);


///// 영화 트레일러 및 영상자료 /////

final Uri youtubeTrailer = Uri(
  scheme: 'https',
  host: 'www.youtube.com',
  path: 'results',
  queryParameters:{
    "search_query" : "(movieNm) 메인 예고편",
  },
);
// 크롤링으로 링크 따서 바로 보여주기
// final Uri youtubeTrailer = Uri(
//   scheme: 'https',
//   host: 'www.youtube.com',
//   path: 'watch',
//   queryParameters:{
//     "v" : "ku9l1fHo5XE",
//   },
// );