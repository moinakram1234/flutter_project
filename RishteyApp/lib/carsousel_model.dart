// ignore: camel_case_types
class carsousel_model {
  String image;
  carsousel_model(this.image);
}

List<carsousel_model> carousels =
    carouselsdata.map((item) => carsousel_model('image')).toList();
var carouselsdata = [
  {"image": "assets/images/account.png"},
  {"image": "assets/images/ads.png"},
  {"image": "assets/images/chat.png"}
];
