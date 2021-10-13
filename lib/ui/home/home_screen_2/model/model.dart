class CarData {
  final String title;
  final String subtitle;
  final String model;
  final String image;

  final String logo;
  const CarData({
    required this.logo,
    required this.title,
    required this.subtitle,
    required this.model,
    required this.image,
  });
  static const data = [
    CarData(
        title: 'Centenario',
        subtitle: 'Lamborghini',
        model: 'AWZ-879',
        image: 'assets/images/car2.png',
        logo: 'assets/images/logo2.png'),
    CarData(
        title: 'Juke',
        subtitle: 'Nissan',
        model: 'HSU-786',
        image: 'assets/images/juke.png',
        logo: 'assets/images/logo2.png')
  ];
}

class Services {
  final String name;
  final String icon;
  const Services({
    required this.name,
    required this.icon,
  });
  static const service = [
    Services(icon: 'assets/images/logo.png', name: 'Repair'),
    Services(icon: 'assets/images/logo.png', name: 'Insurance'),
    Services(icon: 'assets/images/logo.png', name: 'Parts'),
    Services(icon: 'assets/images/logo.png', name: 'Battery'),
  ];
}
