class FavouriteHospitalModel {
  FavouriteHospitalModel(
      {required this.image,
      required this.review,
      required this.title,
      required this.hospital,
      required this.name});

  final String name;
  final String review;
  final String title;
  final String hospital;
  final String image;
}

List<FavouriteHospitalModel> favouriteHospitals= [
  FavouriteHospitalModel(
      name: 'Hospital1',
      review: '4.9 (3821 reviews)',
      title: 'Cardio Specialist -',
      hospital: 'nNanyang Hospital',
      image: 'assets/images/hospital.jpeg'),
  FavouriteHospitalModel(
      name: 'Hospital1',
      review: '4.8 (3421 reviews)',
      title: 'Cardio Specialist - Bracket',
      hospital: 'Medical London Hospital',
      image: 'assets/images/hospital.jpeg'),
  FavouriteHospitalModel(
    name: 'Hospital1',
    review: '4.8 (2739 reviews)',
    title: 'Cardio Specialist -',
    hospital: 'Smithy London Hospital',
      image: 'assets/images/hospital.jpeg'
  ),
  FavouriteHospitalModel(
    name: 'Hospital1',
    review: '4.7 (4692 reviews)',
    title: 'Cardio Specialist -',
    hospital: ' Ramsey College Hospital',
      image: 'assets/images/hospital.jpeg'
  ),
  FavouriteHospitalModel(
    name: 'Hospital1',
    review: '4.9 (2913 reviews)',
    title: 'Cardio Specialist -',
    hospital: 'Porcini Spec Hospital',
      image: 'assets/images/hospital.jpeg'
  ),
];
