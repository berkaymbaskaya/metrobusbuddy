import 'package:workspace/core/model/station.dart';

const List<Map<String, dynamic>> metrobusStations = [
  {"id": 0, "station": "Söğütlüçeşme", "lat": 40.991442, "long": 29.037863},
  {"id": 1, "station": "Fikirtepe", "lat": 40.993656, "long": 29.047085},
  {"id": 2, "station": "Uzunçayır", "lat": 40.998883, "long": 29.056412},
  {"id": 3, "station": "Acıbadem", "lat": 41.015031, "long": 29.05657},
  {"id": 4, "station": "Altunizade", "lat": 41.021126, "long": 29.048928},
  {"id": 5, "station": "Burhaniye", "lat": 41.031934, "long": 29.046852},
  {"id": 6, "station": "Boğaziçi Köprüsü", "lat": 41.03675, "long": 29.043541},
  {"id": 7, "station": "Zincirlikuyu", "lat": 41.067505, "long": 29.013945},
  {"id": 8, "station": "Mecidiyeköy", "lat": 41.066822, "long": 28.992503},
  {"id": 9, "station": "Çağlayan", "lat": 41.06732, "long": 28.981552},
  {
    "id": 10,
    "station": "Okmeydanı Hastane",
    "lat": 41.067358,
    "long": 28.975802
  },
  {"id": 11, "station": "Darülaceze-Perpa", "lat": 41.063086, "long": 28.96834},
  {"id": 12, "station": "Okmeydanı", "lat": 41.056704, "long": 28.961473},
  {"id": 13, "station": "Halıcıoğlu", "lat": 41.048658, "long": 28.946185},
  {"id": 14, "station": "Ayvansaray-Eyüp", "lat": 41.038476, "long": 28.937238},
  {"id": 15, "station": "Edirnekapı", "lat": 41.032933, "long": 28.928614},
  {
    "id": 16,
    "station": "Adnan Menderes Bulvarı",
    "lat": 41.030035,
    "long": 28.924704
  },
  {
    "id": 17,
    "station": "Bayrampaşa-Maltepe",
    "lat": 41.023933,
    "long": 28.921484
  },
  {"id": 18, "station": "Topkapı", "lat": 41.020432, "long": 28.917463},
  {"id": 19, "station": "Cevizlibağ", "lat": 41.016555, "long": 28.911123},
  {"id": 20, "station": "Merter", "lat": 41.007522, "long": 28.897266},
  {"id": 21, "station": "Zeytinburnu", "lat": 41.003521, "long": 28.891227},
  {"id": 22, "station": "İncirli", "lat": 40.997877, "long": 28.872609},
  {"id": 23, "station": "Bahçelievler", "lat": 40.995186, "long": 28.863941},
  {
    "id": 24,
    "station": "Ataköy-Şirievler",
    "lat": 40.991741,
    "long": 28.845778
  },
  {"id": 25, "station": "Yenibosna", "lat": 40.992316, "long": 28.834746},
  {"id": 26, "station": "Sefaköy", "lat": 40.998818, "long": 28.798906},
  {"id": 27, "station": "Beşyol", "lat": 40.994992, "long": 28.795078},
  {"id": 28, "station": "Florya-Bağlar", "lat": 40.987586, "long": 28.790428},
  {
    "id": 29,
    "station": "Cennet Mahallesi",
    "lat": 40.985346,
    "long": 28.782645
  },
  {"id": 30, "station": "Küçükçekmece", "lat": 40.986372, "long": 28.76942},
  {
    "id": 31,
    "station": "İBB Sosyal Tesisleri",
    "lat": 40.978088,
    "long": 28.745463
  },
  {"id": 32, "station": "Şükrübey", "lat": 40.980358, "long": 28.731326},
  {
    "id": 33,
    "station": "Avcılar Merk. Ünv. Kamp.",
    "lat": 40.983601,
    "long": 28.725913
  },
  {
    "id": 34,
    "station": "Cihangir Üniversite Mah.",
    "lat": 40.990706,
    "long": 28.713657
  },
  {
    "id": 35,
    "station": "Mustafa Kemal Paşa",
    "lat": 40.994998,
    "long": 28.706146
  },
  {"id": 36, "station": "Saadetdere Mah.", "lat": 40.999715, "long": 28.693001},
  {
    "id": 37,
    "station": "Haramidere Sanayi",
    "lat": 41.00423,
    "long": 28.685371
  },
  {"id": 38, "station": "Haramidere", "lat": 41.005981, "long": 28.673016},
  {"id": 39, "station": "Güzelyurt", "lat": 41.006637, "long": 28.665256},
  {"id": 40, "station": "Beylikdüzü", "lat": 41.009508, "long": 28.657147},
  {
    "id": 41,
    "station": "Beylikdüzü Belediye",
    "lat": 41.012418,
    "long": 28.649437
  },
  {
    "id": 42,
    "station": "Cumhuriyet Mahallesi",
    "lat": 41.015463,
    "long": 28.641471
  },
  {"id": 43, "station": "Hadımköy", "lat": 41.019286, "long": 28.631496},
  {"id": 44, "station": "Tüyap", "lat": 41.022058, "long": 28.623512}
];
final List<IStation> stationList = metrobusStations
    .map((stationData) => Station.fromMap(stationData))
    .toList();
