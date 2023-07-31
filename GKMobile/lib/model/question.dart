class Question {
  final String title;
  final String imageUrl;
  final bool answer;
  final String explication;

  Question({
    required this.title,
    required this.imageUrl,
    required this.answer,
    required this.explication,
  });
}

class QuestionData {

  List<Question> questions = [
    Question(
      title: 'Lá cờ Mỹ có 13 sọc.',
      imageUrl: 'https://t2.uc.ltmcdn.com/fr/posts/3/4/0/le_drapeau_americain_et_sa_signification_14043_600.jpg',
      answer: true,
      explication: 'có hiệu lực',
    ),
    Question(
      title: 'L\'con nhện là\'động vật quốc gia\'Châu Úc.',
      imageUrl: 'https://i.vietgiaitri.com/2019/11/16/nhung-ly-do-loai-nhen-dang-so-nhung-thu-vi-phan-2-259016.jpg',
      answer: true,
      explication: 'C\'là con chuột túi',
    ),
    Question(
      title: 'Trái đất quay quanh mặt trời hết 365 ngày.',
      imageUrl: 'https://static.le-systeme-solaire.net/ressources/syssol/sun_title.jpg',
      answer: true,
      explication: 'Reo hò',
    ),
    Question(
      title: 'Lá cờ Mỹ có 13 sọc.',
      imageUrl: 'https://t2.uc.ltmcdn.com/fr/posts/3/4/0/le_drapeau_americain_et_sa_signification_14043_600.jpg',
      answer: true,
      explication: 'có hiệu lực',
    ),
    Question(
      title: 'L\'con nhện là\'động vật quốc gia\'Châu Úc.',
      imageUrl: 'https://i.vietgiaitri.com/2019/11/16/nhung-ly-do-loai-nhen-dang-so-nhung-thu-vi-phan-2-259016.jpg',
      answer: true,
      explication: 'C\'est lecon chuột túi',
    ),
    Question(
      title: 'Trái đất quay quanh mặt trời hết 365 ngày.',
      imageUrl: 'https://static.le-systeme-solaire.net/ressources/syssol/sun_title.jpg',
      answer: true,
      explication: 'Reo hò',
    ),
    Question(
      title: 'Lá cờ Mỹ có 13 sọc.',
      imageUrl: 'https://t2.uc.ltmcdn.com/fr/posts/3/4/0/le_drapeau_americain_et_sa_signification_14043_600.jpg',
      answer: true,
      explication: 'có hiệu lực',
    ),
  ];
}