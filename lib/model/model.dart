class CarData {
  final String title;
  final String subtitle;
  final String model;
  final String image;
  const CarData(
      {required this.title,
      required this.subtitle,
      required this.model,
      required this.image});
  static const data = [
    CarData(
        title: 'Centenario',
        subtitle: 'Lamborghini',
        model: 'AWZ-879',
        image: 'assets\images\car2.png'),
    CarData(
        title: 'Centenario',
        subtitle: 'Lamborghini',
        model: 'AWZ-879',
        image: 'assets\images\car2.png')
  ];
}
