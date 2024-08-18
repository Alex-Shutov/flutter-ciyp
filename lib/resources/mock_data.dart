// mock_data.dart
const mockTypes = {
  'restaurants_pin':'assets/images/pin_restaraunts.png',
  'restaurants_pin_clicked':'assets/images/pin_clicked.png',
  'bars_pin':'assets/images/pin_restaraunts.png',
  'bars_pin_clicked':'assets/images/pin_clicked.png',
  'parks_pin':'assets/images/pin_restaraunts.png',
  'parks_pin_clicked':'assets/images/pin_clicked.png',
};
const mockData = {
  'restaurants': [
    {
      'id': 0,
      'image': 'assets/images/mock.png',
      'lat': 56.837716,
      'long':60.596828,
      'label': 'Мятный трюфель',
      'task':'Чизкейк в подарок за 5 посещений',
      'startDate': '19.09',
      'endDate': '30.09',
      'startTime':'09:00',
      'endTime':'22:00',
      'address':'Ломоносова, 23',
      'phone':'+7 (3412) 36‒66‒39',
      'description': 'Посетите наше заведение 5 раз, сделайте заказ из акционного меню и при следующем посещение получите в подарок чизкей при заказе от 100 рублей.'
    },
    // Добавьте больше ресторанов
  ],
  'bars': [
    {
      'id': 1,
      'image': 'assets/images/bar1.png',
      'lat': 30.748823,
      'long': 32.985408,
      'label': 'Бар "Печенька"',
      'description': 'Первый напиток бесплатно'
    },
    // Добавьте больше баров
  ],
  'parks': [
    {
      'id': 2,
      'image': 'assets/images/park1.png',
      'lat': 40.748813,
      'long': 73.985429,
      'label': 'Центральный парк',
      'description': 'Бесплатный вход'
    },
    // Добавьте больше парков
  ]
};
