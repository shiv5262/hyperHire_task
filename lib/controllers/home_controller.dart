import 'package:get/get.dart';
import 'package:hyper_hire_assignment/models/product_model.dart';
import 'package:hyper_hire_assignment/models/profile_model.dart';

class HomeController extends GetxController {
  List<ProductModel> productList = [
    ProductModel(
      title: 'LG전자 스탠바이미 27ART10AKPL (스탠',
      crownImage: 'assets/images/crown images/crown-1.png',
      detail1:
          '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
      detail2: '스탠바이미는 사랑입니다!️',
      productImage: 'assets/images/product images/product-1.png',
      rating: 4.89,
      ratingCount: 216,
      tags: [
        'LG전자',
        '편리성',
      ],
    ),
    ProductModel(
      title: 'LG전자  울트라HD 75UP8300KNA (스탠드)',
      crownImage: 'assets/images/crown images/crown-2.png',
      detail1: '화면 잘 나오고... 리모컨 기능 좋습니다.',
      detail2:
          '넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!',
      productImage: 'assets/images/product images/product-2.png',
      rating: 4.36,
      ratingCount: 136,
      tags: [
        'LG전자',
        '고화질',
      ],
    ),
    ProductModel(
      title: '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
      crownImage: 'assets/images/crown images/crown-3.png',
      detail1: '반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다',
      detail2:
          '중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고',
      productImage: 'assets/images/product images/product-3.png',
      rating: 3.98,
      ratingCount: 98,
      tags: [
        '라익미',
        '가성비',
      ],
    ),
  ];

  List<ProfileModel> profileList = [
    ProfileModel(
      imageUrl: 'assets/images/profile images/name01.png',
      name: 'Name01',
    ),
    ProfileModel(
      imageUrl: 'assets/images/profile images/name02.png',
      name: 'Name02',
    ),
    ProfileModel(
      imageUrl: 'assets/images/profile images/name03.png',
      name: 'Name03',
    ),
    ProfileModel(
      imageUrl: 'assets/images/profile images/name04.png',
      name: 'Name04',
    ),
    ProfileModel(
      imageUrl: 'assets/images/profile images/name05.png',
      name: 'Name05',
    ),
    ProfileModel(
      imageUrl: 'assets/images/profile images/name06.png',
      name: 'Name06',
    ),
    ProfileModel(
      imageUrl: 'assets/images/profile images/name07.png',
      name: 'Name07',
    ),
    ProfileModel(
      imageUrl: 'assets/images/profile images/name08.png',
      name: 'Name08',
    ),
    ProfileModel(
      imageUrl: 'assets/images/profile images/name09.png',
      name: 'Name09',
    ),
    ProfileModel(
      imageUrl: 'assets/images/profile images/name10.png',
      name: 'Name10',
    ),
  ];

  List<String> carouselImageList = [
    'assets/images/carousel images/image-1.png',
    'assets/images/carousel images/image-2.png',
    'assets/images/carousel images/image-3.png',
    'assets/images/carousel images/image-4.png',
  ];
  int currentCarouselIndex = 0;

  void getCarouselIndex(int index) {
    currentCarouselIndex = index;
    update();
  }
}
