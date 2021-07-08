import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeler/main.dart';
import 'package:projeler/product/layout.dart';

class Category extends StatefulWidget {
  late String title;
  late String image;
  late Color color;
  late int id;

  Category(this.title, this.image, this.color, this.id);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);

    final h = screen.size.height;
    final w = screen.size.width;

    var rowLimit = 2;
    if (w > 420) rowLimit = 4;

    List arr = [
      {
        {
          "id":0,
          "name": "Gömlek",
          "image": "images/products/gomlek.png",
          "price": 9.90,
          'content':
              "GÖMLEK ÜTÜLEME HİZMETLERİ Kimi kıyafetler yıkama işleminden hemen sonra daha iyi gözükebilmesi için ütüleme işlemine tabi tutulmaktadır. Pek çok kişi içinde ütüleme uygulaması bir zaman kaybı olarak görülmektedir. Kuru Temizleme Sepeti olarak gömlek ütüleme hizmetlerini sizlere sunmaktayız. Gömlek ütüleme işleminde dikkat ettiğimiz ilk şey ütü masasıdır. Ütü masasının olması kırışıklıkların tam anlamı ile giderilmesini sağlar. Aynı zamanda Kullanmış olduğumuz ütüde Yeterince su bulunmasına dikkat etmekteyiz. Bu sayede kumaşı kusursuz şekilde ütülemekteyiz. Gömlek ütüleme işleminde aynı zamanda kol ütülemelerini ve çizgilere dikkat etmekteyiz.Firmamız sizlere bu konuda en iyi hizmetleri sunmaktadır. Kuru Temizleme Sepeti olarak ütüleme hizmetlerini de kesintisiz uygun fiyat garantisi ile yanınızdayız."
        },
        {
          "id":1,
          "name": "Pantalon",
          "image": "images/products/pantolon.png",
          "price": 8.50,
          "content": "PANTOLON ÜTÜLEME HİZMETLERİ İÇİN KURU TEMİZLEME SEPETİ Günlük hayat ve iş yaşamında oldukça sık tercih edilen kıyafetlerden bir tanesi de pantolondur. Pantolonun modeli ve kumaşına göre ütüleme işlemi gerektirmektedir. Kot ya da keten pantolonlar için ütü uygulaması yapmak diğer pantolonlara göre daha basittir. Kumaş pantolon ütülemek ise oldukça büyük bir özen göstermektedir. Öncelikle pantolon ütülemenin ceplerden başlanmalıdır. Daha sonra bel kısmı ütülenecek bacakların çizgisi yapılmalıdır. Kuru Temizleme Sepeti olarak pantolon ütüleme hizmetlerini sizlere en uygun fiyat ve müşteri memnuniyeti garantisi ile sunmaktayız. Hem pantolonlarınızın güzel durması hem de zaman kaybetmemek için ütüleme hizmetlerimizden faydalanabilirsiniz."
        },
        {
          "id":2,
          "name": "Bluz",
          "image": "images/products/bluz.png",
          "price": 18.50,
          "content": "BLUZ ÜTÜLEME HİZMETİ Bluzlar kadın giyiminde şıklığı tamamlayan parçalar olarak bilinmektedir. Pek çok farklı kumaştan üretilen bu kıyafet türünde temizleme yönteminin önemli olduğu kadar ütüleme yöntemi de önemlidir. Bluzları çamaşır makinasında temizlemek hem bluzu deforme eder hem de uzun ömürlü olmasına engel olmaktadır. Ütüleme işlemi de yanlış yapıldığı takdirde bluzum deforme olmasına ve eski bir görüntüye sahip olmasına neden olur. Bu nedenle Kuru Temizleme Sepeti olarak sizlere en iyi ütüleme hizmetlerini sunmaktayız. Bluz ütüleme hizmetinin yanı sıra diğer pek çok kıyafette de ütüleme ve kuru temizleme hizmetleri vermekteyiz. Ütüleme hizmetlerinde Kullanmış olduğumuz ekipmanlar son teknoloji ile üretilmektedir. Çalışanlarımız ise profesyonel olarak işini yapan kişilerdir. Bizleri tercih ettiğiniz takdirde uygun fiyat ve müşteri memnuniyeti garantisi ne sizlere sunmaktayız."
        },
        {
          "id":3,
          "name": "Pileli Etek",
          "image": "images/products/etex.png",
          "price": 22.50,
          "content": "PİLELİ ETEK KURU TEMİZLEME Kadınların favori giysileri arasında yer alan etek yaz kış fark etmeden her mevsim tercih edilmektedir. Kumaşları farklı yapıda olduklarından dolayı temizleme konularında hassas olmaları gerekmektedir. Kumaş yapısına uygun yıkama imkanı yer alsa da en iyi temizliği kuru temizleme işlemi gerçekleştirmektedir. Kuru Temizleme Sepeti olarak en değerli giysilerinizi garanti altına alabilirsiniz, yeni gibi kullanma şansına sahip olabilirsiniz. Özellikle pileli etekler yanlış yıkama sebebiyle deforme olurlar. Bu da eski bir görüntüde olmasını sağlar. Aynı zamanda pileli etekleri ütülemek de oldukça zahmetlidir. Pileli etek kuru temizleme hizmetlerimizden faydalandığınız takdirde yalnızca temizliği değil kusursuz bir şekilde ütülenmesi de yapılacaktır. Sizde elbiselerinizin bu canlı görüntüsüyle en iyi zamanlarınızı geçirebilirsiniz."
        }
      },
      {
        {
          "id":4,
          "name": "Nubuk Ayakkabı",
          "image": "images/products/nabuk.png",
          "price": 60.00,
          "content": "NUBUK AYAKKABI BAKIMI Nubuk ayakkabı bakımında dikkat edilmesi gereken ilk şey nubuk ürünler için üretilen nubuk bakım losyonu ya da spreyi ve nubuk fırçasına gerek duyulmaktadır. Nubuk ayakkabılar öncelikle sprey şeklinde gününü nubuk losyonu ile ıslatılarak derinin yumuşaması sağlanır. Daha sonra ise üzerindeki tozlar nubuk ayakkabıdan arınması için nubuk silgisi ile silinir. Nubuk ayakkabılar oldukça hassas bir yapıda olduğu için kişiler kendi temizliğini yaptığı takdirde ayakkabılar rengini kaybedebilir, deforme olabilir ya da eski bir görüntüye neden olabilir. Bu nedenle nubuk ayakkabı bakımı ve temizliği için en iyi çözüm uzman bir firmaya başvurmaktır. Kuru Temizleme Sepeti olarak sizlere en iyi hizmeti sunmak için çalışmaktayız. Nubuk ayakkabı bakımı hizmetlerinde en kaliteli sonuçları almak için bizleri tercih edebilirsiniz. Aynı zamanda hem uygun fiyat hem de müşteri memnuniyeti ile sizlere hizmet vermekten gurur duyarız."
        },
        {

          "id":5,
          "name": "Deri Ayakkabı",
          "image": "images/products/deri.png",
          "price": 30.00,
          "content": "DERİ AYAKKABI BOYAMA HİZMETLERİ Özellikle bahar ve kış aylarının favori ayakkabıları arasında yer alan deri ayakkabılar oldukça kaliteli yapıya sahiplerdir. Bu kaliteli yapının korunması için oldukça dikkatli davranmak gerekir. Düzenli temizlikleri yapılan deri ayakkabılar hem uzun ömürlü hem de daha canlı bir görünüme sahip olurlar. Deri ayakkabı komple bakımında bir uzman yardımı alındığı gibi deri ayakkabı boyama işlemlerinde de profesyonel ellere başvurmak gerekmektedir. Kuru Temizleme Sepeti olarak deri ayakkabı boyama hizmetlerini sizlere en iyi kalitede sunmak için çalışmaktayız. Sizlere sağlamış olduğumuz tüm hizmetlerde müşteri memnuniyeti firmamızın kendisine belirlemiş olduğu ilk ilkedir. Bunun yanı sıra bir gereklilik haline gelen deri ayakkabı boyama hizmetleri için uygun fiyat garantisi de sizlere sunmaktayız."
        },
        {

          "id":6,
          "name": "Süet Ayakkabı",
          "image": "images/products/suet.png",
          "price": 45.00,
          "content": "SÜET AYAKKABI BAKIMI: KURU TEMİZLEME SEPETİ Süet ayakkabıların bakımı diğer pek çok ayakkabı türüne göre oldukça zordur. Evde yapılan süet ayakkabı bakımlarında ayakkabı deforme olarak eski bir görüntüye neden olabilir. Aynı zamanda süet ayakkabıların kumaşından dolayı oldukça kolay bir şekilde leke tutar ve yanlış yöntemler ile bakım uygulanarak temizlenmek istendiğinde bu lekelerin dağılmasına neden olur. Bu nedenle en iyi çözüm süet ayakkabı bakımı yapan uzman ellerden faydalanmaktır. Kuru Temizleme Sepeti olarak sizlere vermiş olduğumuz süet ayakkabı bakımı hizmetlerinde uygun fiyat ve müşteri memnuniyeti garantisi yer almaktadır. Hizmetlerimizin her birinde kumaşın özelliğini uygun olan temizlik ürünleri kullanılmakta ve yeni bir görüntüye kavuşması sağlanmaktadır."
        },
      },
      {
        {
          "id":7,
          "name": "Zebra Perde",
          "image": "images/products/zebra.png",
          "price": 11.25,
          "content": "ZEBRA STOR PERDE TEMİZLİĞİ Evde ya da ofislerde oldukça sık tercih edilen zebra stor perdeler, hem şık görünümü hem de kolay kullanımı ile günümüzde oldukça yaygın hale gelmiştir. Kuru Temizleme Sepeti olarak zebra stor perde temizleme hizmetlerini sizlere sunmaktayız. Sunmuş olduğumuz hizmetler uygun fiyat ve müşteri memnuniyeti garantisi ile buluşmaktadır. Firmamızda çalışan tüm personellerimiz zebra stor perde temizlik işlemlerinin her aşamasında büyük bir titizlikle çalışmaktadır. Kullanmış olduğunuz makineler son teknoloji iken tercih ettiğimiz tüm temizlik malzemeleri insan sağlığına ve çevreye zararı olmayan ürünlerdir. Ayrıntılı fiyat bilgisi için sitemizde yer alan iletişim numarasından bizlere ulaşabilirsiniz. Bizleri tercih ettiğiniz için teşekkür ederiz."
        },
        {
          "id":8,
          "name": "Stor Perde",
          "image": "images/products/stor.png",
          "price": 8.25,
          "content": "STOR PERDE TEMİZLİĞİNDE EN İYİ ADRES: KURU TEMİZLEME SEPETİ Stor perde günümüzde hem şık görüntüsü hem de kolay kullanımı sayesinde oldukça sık tercih edilen perde türleri arasında yer almaktadır. Kuru Temizleme Sepeti olarak hem stor perde hem de diğer tüm perde temizliklerine yeni bir boyut getirmekteyiz. Sizlere sunmuş olduğumuz stor perde temizliğinde kullanmış olduğumuz tüm ürünler son teknoloji uygundur. Aynı zamanda temizlik malzemeleri insan sağlığına zararı bulunmayan malzemelerdir. Stor perde temizliği ile birlikte hem hijyenik hem de daha canlı bir görünüme sahip olan perdelere erişebilirsiniz. Sağlamış olduğumuz stor perde temizliği ile evinizde mis gibi kokular yaratmaktayız."
        },
        {
          "id":9,
          "name": "Fon Perde",
          "image": "images/products/fon.png",
          "price": 6.25,
          "content": "FON PERDE TEMİZLEME HİZMETLERİ Fon perdeler kadife, ipek, saten ve tafta gibi pek çok çeşitte olabilir. Kumaş dokusunun bilinmesi ile birlikte dokuya hiçbir zarar vermeden temizleme işleminin yapılması önemlidir. Temizleme işlemi yapılırken özelle yapılmalı ve pamuklanma kırışıklık oluşturma yanma gibi sorunlarla karşılaşmamak adına dikkat edilmelidir. Fon perde temizleme işlemleri ile hem canlı bir görüntüye ulaşmasını sağlayacak hem de uzun süre hijyenik bir kullanım sağlayacaktır. Kuru Temizleme sepeti olarak firmamız fon perde temizleme hizmetlerini sizlere sunmaktadır. Kumaş yapılarını iyi tanıyarak kir ve yağ çözücüler ile yıkama tekniklerini gerçekleştirmekteyiz. Ayrıntılı fiyat bilgisi için iletişim numaramızdan bilgileri alabilirsiniz. En iyi hizmet kalitesi için firmamızı tercih edebilirsiniz."
        },
        {
          "id":10,
          "name": "Kafide Perde",
          "image": "images/products/kadife.png",
          "price": 13.50,
          "content": "KADİFE PERDE TEMİZLİĞİ Pek çok farklı renk ve tasarımda üretilen perdeler arasında kadife perdeler de yer almaktadır. Hem evin şıklığını hem de mobilyaların uyumunu tamamlamak için kullanılırken evim mahremiyetinde korumaktadır. Bir süre sonra perdeler ortamdaki toz ya da dış etmenlerden dolayı kirlenir. Aynı zamanda belirli dönemlerde temizlemek hem perde kumaşını kururken hem de perdenin daha uzun ömürlü olmasını sağlamaktadır. Kuru Temizleme Sepeti olarak sizlere kadife perde temizleme hizmetleri sunmaktayız. Sunmuş olduğumuz hizmetlerde kullandığımız ürünler son teknoloji ile üretilmektedir. Aynı zamanda perde temizliğinde kullanmış olduğumuz temizlik malzemeleri de insan sağlığına ve çevreye zararı olmayan maddelerden oluşmaktadır. Kadife perde ve diğer tüm perde türleri temizliğinde bilgileri tercih ederek perdenizin ömrünü uzatabilirsiniz."
        },
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
          ],
        ),
        backgroundColor: widget.color,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: w,
              height: h,
              color: HexColor('#e7eaf5'),
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: w,
                      child: Image.asset(widget.image),
                    )
                  ],
                ),
                Wrap(
                  children: [
                    if (!arr.asMap().containsKey(widget.id))
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Text(
                          "Bu kategoride ürün bulunamadı",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    else
                      for (var row in arr[widget.id])
                        ProductLayout(row['name'], row['price'], row['image'], row['content'], row['id'])
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
