import 'package:covidapp/News/news_details.dart';
import 'package:flutter/material.dart';

class NewsHome extends StatelessWidget {
  final List news = [
    {
      'topic': 'बैशाख ३ सम्म लकडाउन लम्ब्याउने सरकारको निर्णय',
      'body':
          '२४ चैत, काठमाडौं । सरकारले लकडाउन ८ दिन थप गरेको छ । सोमबार अपराह्न सकिएको मन्त्रिपरिषद्को बैठकले बैशाख ३ सम्म लकडाउन लम्ब्याउने निर्णय गरेको हो ।लकडाउनको अवधि दोस्रो पटक थपिएको हो । कोरोना भाइरस (कोभिड-१९)को दोस्रो संक्रमित भेटिएपछि सरकारले चैत ११ बाट १८ गते बिहान छ बजेसम्मका लागि लकडाउन घोषणा गरेको थियो । साथै, कोरोना रोकथामसम्बन्धी उच्चस्तरीय समितिको आइतबार बसेको बैठकले लकडाउनको अवधि थप गर्न सिफारिस गरेको थियो ।बालुवाटारमा बसेको मन्त्रिपरिषद् बैठकमा प्रधानमन्त्री केपी शर्मा ओलीले पनि लकडाउन लम्ब्याएर कडाईका साथ पालना गराउनुपर्नेमा जोड दिएका थिए । ‘लकडाउनसँगै र्‍यापिड टेष्टलाई तीव्रता दिनुपर्छ भन्ने उहाँको जोड थियो’, एक मन्त्रीले भने ।',
      'date': '२०७६ चैत २४ गते २१:०१ मा प्रकाशित'
    },
    {
      'topic': 'सबैलाई क्वारेन्टाइनमा राख्न सक्दैनौं, होम क्वारेन्टाइनमा बस्नुस् : मुख्यमन्त्री भट्ट',
      'body': '२४ चैत, धनगढी । नेपालमा पुष्टि भएका कोभिड–१९ का नौं संक्रमितमध्ये चार सुदूरपश्चिम प्रदेशका छन्  ।  शनिबार एकसाथ सुदूरपश्चिमका कैलाली र कञ्चनपुरका दुई पुरुष र एक महिलामा कोरोना भएको पुष्टि भएपछि रोगको रोकथाम र निगरानीमा चुनौती थपिएको छ ।अहिलेसम्म विदेशवाट स्वदेश फर्किएकामा यो रोगको संक्रमण भएको देखिएकामा फर्किएका संक्रमित व्यक्तिमार्फत धनगढीका ३४ वर्षीया एक महिलामा सरेको देखिएको छ । संक्रमित व्यक्तिमार्फत स्थानीयवासीमा कोरोना सरेको घटना यो नेपालमा पहिलो भएको चिकित्सकले बताएका छन् ।',
      'date': '२०७६ चैत २४ गते १४:१७ मा प्रकाशित'
    },
    {
      'topic': 'संसदको लकडाउन : न खुल्छ, न बन्द हुन्छ !',
      'body': '२४ चैत, काठमाडौं । गत वर्ष चैत १० गते संसदको हिउँदे अधिवेशन अन्त्य भएको थियो । यस वर्ष पनि संसद सचिवालयले राष्ट्रपतिबाट अधिवेशन अन्त्यसम्बन्धी पत्र आउला कि भनेर कुरेको एक महिना हुन लाग्यो । तर, संसद न चल्न सकेको छ, न त औपचारिक रुपमा बन्द नै हुन सकेको छ ।कोरोना भाइरसको त्रासका कारण २९ फागुन यता प्रतिनिधिसभाको बैठक बस्न सकेको छैन । यस बीचमा तीनपटक सूचना टाँसेर बैठक सरिसकेको छ । अर्को बैठक यही चैत ३० गतेका लागि बोलाइएको छ । तर, लकडाउन खुल्ने छाँट छैन ।',
      'date': '२०७६ चैत २४ गते १३:४८ मा प्रकाशित'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('मुख्य समाचार:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          ListView.separated(
            separatorBuilder: (context,i){
              return SizedBox(height: 10,);
            },
            shrinkWrap: true,
              itemCount: news.length,
              itemBuilder: (context, i) {
                return NewsCard(
                  news: news[i],
                );
              }),
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final Map news;

  const NewsCard({this.news});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: 
        (context)=>NewsDetail(
          news: news,
        )));
      },
          child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${news['topic']}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  '${news['body']}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.black87),
                ),
                Text(
                  '${news['date']}',
                  style: TextStyle(color: Colors.black38, fontSize: 12),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: (news['image'] != null)
                  ? Image.asset('${news['image']}')
                  : Image.asset(
                      'images/tiger.jfif',
                    ),
            ),
          ),
        ],
      ),
    );
    // Container(
    //   margin: EdgeInsets.all(10),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[

    //     ],
    //   ),
    // );
  }
}
