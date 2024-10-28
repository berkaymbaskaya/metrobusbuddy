class HelperOperation {
  List<Map<String, dynamic>> filterDataByKeyword(
      List<Map<String, dynamic>> data, String keyword) {
    return data.where((item) => item['name'].contains(keyword)).toList();
  }

  // Örnek: Veriyi dönüştürme işlevi
  List<String> extractTitles(List<Map<String, dynamic>> data) {
    return data.map((item) => item['title'].toString()).toList();
  }

  // Örnek: İstatistiksel hesaplama (ör. ortalama hesaplama)
  double calculateAverage(List<int> numbers) {
    if (numbers.isEmpty) return 0;
    int sum = numbers.reduce((a, b) => a + b);
    return sum / numbers.length;
  }
}
