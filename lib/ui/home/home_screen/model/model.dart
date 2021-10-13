class HomeScreen1CarData {
  final String? title;
  final String? subtitle;
  final String? model;
  final String? image;
  final String? logo;
  final String? arrivaldate;
  final String? task;
  final String? promisedate;
  final String? Insurance;
  final String? status;
  final String? deliverydate;
  final List<HomeScreen1CarData>? current;
  final List<HomeScreen1CarData>? last;

  const HomeScreen1CarData({
    this.deliverydate,
    this.Insurance,
    this.arrivaldate,
    this.promisedate,
    this.status,
    this.task,
    this.logo,
    this.title,
    this.subtitle,
    this.model,
    this.image,
    this.current,
    this.last,
  });
  static const data = [
    HomeScreen1CarData(
      title: 'Centenario',
      subtitle: 'Lamborghini',
      model: 'DUBAI D 477459',
      image: 'assets/images/car2.png',
      logo: 'assets/images/logo2.png',
      current: [
        HomeScreen1CarData(
            arrivaldate: '12 Sept 2021',
            Insurance: 'Al Buhaira',
            promisedate: '15 Sept 2021',
            status: 'Work in Progress',
            task: 'Accidental Repair')
      ],
      last: [
        HomeScreen1CarData(
            arrivaldate: '12 Sept 2021',
            deliverydate: '15 Sept 2021',
            Insurance: 'Al Buhaira',
            promisedate: '15 Sept 2021',
            status: 'Work in Progress',
            task: 'Accidental Repair')
      ],
    ),
    HomeScreen1CarData(
      title: 'Juke',
      subtitle: 'Nissan',
      model: 'HSU-786',
      image: 'assets/images/juke.png',
      logo: 'assets/images/logo2.png',
      current: [
        HomeScreen1CarData(
            arrivaldate: '12 Sept 2021',
            Insurance: 'Al Buhaira',
            promisedate: '15 Sept 2021',
            status: 'Work in Progress',
            task: 'Accidental Repair')
      ],
      last: [
        HomeScreen1CarData(
            arrivaldate: '12 Sept 2021',
            deliverydate: '15 Sept 2021',
            Insurance: 'Al Buhaira',
            promisedate: '15 Sept 2021',
            status: 'Work in Progress',
            task: 'Accidental Repair')
      ],
    )
  ];
}
