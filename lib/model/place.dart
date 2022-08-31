class Place {
  int index;
  String name;
  String province;
  String nation;
  String description;
  String rating;
  String imgUrl;
  bool isFavorite;

  Place(
      {required this.name,
      required this.index,
      required this.province,
      required this.nation,
      required this.description,
      required this.rating,
      required this.imgUrl,
      this.isFavorite = false});
  Place copyWith({
    String? name,
    String? province,
    int? index,
    String? nation,
    String? description,
    String? rating,
    String? imgUrl,
    bool? isFavorite,
  }) {
    return Place(
        name: name ?? this.name,
        province: province ?? this.province,
        index: index ?? this.index,
        nation: nation ?? this.nation,
        description: description ?? this.description,
        rating: rating ?? this.rating,
        imgUrl: imgUrl ?? this.imgUrl);
  }
}

var placeList = [
  Place(
    index: 0,
    name: "Karimun",
    province: "Jawa",
    nation: "Indonesia",
    description:
        "Tidak perlu jauh-jauh ke Maladewa, Hawaii, atau Karibia, Anda bisa dengan mudah menemukan pantai indah dengan panorama alam yang memukau di Indonesia. Di utara Pulau Jawa, contohnya, ada gugusan pulau cantik bernama Karimunjawa yang berada dalam wilayah Kabupaten Jepara. Karimunjawa memiliki 27 pulau yang 22 di antaranya tidak berpenghuni. Dengan jarak antarpulau yang tidak terlalu jauh, Anda bisa mengunjungi pulau satu dan lainnya menggunakan kapal-kapal yang banyak tersedia di sana. Anda juga tidak perlu khawatir mengenai akomodasi. Di sana, Anda bisa menemukan berbagai jenis hotel dan resor yang menawarkan kenyamanan saat menginap di antara keindahan alam.",
    rating: "4.9",
    imgUrl: "lib/assets/image/karimun.jpg",
  ),
  Place(
    index: 1,
    name: "Taj Mahal",
    province: "Agra",
    nation: "India",
    description:
        "Taj Mahal (bahasa Urdu: تاج محل, Hindi: ताज महल) adalah sebuah monumen yang terletak di Agra, India. Dibangun atas keinginan Kaisar Mughal Shāh Jahān, anak Jahangir, sebagai sebuah mausoleum untuk istri Persianya, Arjumand Banu Begum, juga dikenal sebagai Mumtaz-ul-Zamani atau Mumtaz Mahal. Taj Mahal merupakan sebuah adi karya dari arsitektur Mughal. Shah Jahan, kaisar dari Kekaisaran Mughal memiliki kekayaan yang besar selama masa kejayaannya. Pada 1631 istri ketiganya dan merupakan istri yang paling dicintainya wafat sewaktu melahirkan putrinya Gauhara Begum, anak ke-14 mereka.",
    rating: "4.5",
    imgUrl: "lib/assets/image/taj_mahal.jpg",
  ),
  Place(
      index: 2,
      name: "Niagara",
      province: "Ontario",
      nation: "Kanada",
      description:
          "Air Terjun Niagara adalah kumpulan dari tiga air terjun yang terletak di Ngarai Niagara yang berlokasi di perbatasan antara Ontario, Kanada, dan negara bagian New York, Amerika Serikat. Air terjun yang terbesar adalah Air Terjun Kanada, yang menjadi perbatasan antara kedua negara tersebut. Yang lebih kecil, Air Terjun Amerika dan Bridal Veil berlokasi di Amerika Serikat. Air Terjun Bridal Veil dipisahkan dari Air Terjun Kanada oleh Pulau Goat dan Air Terjun Amerika oleh Pulau Luna, keduanya terletak di negara bagian New York. Mengalir ke utara sebagai bagian dari Sungai Niagara, yang mengalirkan airnya dari Danau Erie menuju Danau Ontario, ketiga-tiganya memiliki debit air terbesar di Amerika Utara yang memiliki tinggi lebih dari 50 m (160 ft). Selama jam puncak wisatawan siang hari, lebih dari 168.000 m3 air mengalir per menit. Air Terjun Kanada adalah air terjun terkuat di Amerika Utara menurut debit airnya. Air Terjun Niagara sangat terkenal dan menjadi sumber utama dari pembangkit listrik tenaga air. Nilai pariwisata, komersial, dan industrinya telah menjadi tantangan sejak abad ke-19",
      rating: "4.6",
      imgUrl: "lib/assets/image/niagara.jpg"),
  Place(
      index: 3,
      name: "Rovaniemi",
      province: "Laplandia",
      nation: "Finlandia",
      description:
          "Rovaniemi adalah kota yang terletak di sebelah utara Finlandia. Kota ini terletak di provinsi Laplandia. Luasnya 8.016 km² dengan memiliki populasi sebesar 58.500 jiwa (2006) dengan memiliki kepadatan penduduk sebesar 7,6 jiwa/km². Kota ini juga dikenal sebagai 'Kota Es' karena musim dinginnya yang panjang dan dingin.",
      rating: "4.4",
      imgUrl: "lib/assets/image/rovaniemi.jpg"),
  Place(
      index: 4,
      name: "Hagia Sophia",
      province: "Istanbul",
      nation: "Turki",
      description:
          "Hagia Sophia atau Aya Sofya adalah sebuah tempat ibadah di Istanbul, Republik Turki. Dari masa pembangunannya pada tahun 537 M sampai 1453 M, bangunan ini merupakan Katedral Ortodoks dan tempat kedudukan Patriark Ekumenis Konstantinopel, kecuali pada tahun 1204 sampai 1261, ketika tempat ini diubah oleh Pasukan Salib Keempat menjadi Katedral Katolik Roma di bawah kekuasaan Kekaisaran Latin Konstantinopel. Bangunan ini menjadi masjid mulai 29 Mei 1453 sampai 1931 pada masa kekuasaan Kesultanan Utsmani. Kemudian bangunan ini disekulerkan dan dibuka sebagai museum pada 1 Februari 1935 oleh Republik Turki. Kemudian menjadi masjid kembali pada Jumat, 10 Juli 2020 setelah pengadilan Turki memutuskan bahwa konversi Hagia Sophia pada tahun 1934 menjadi museum adalah ilegal. Keputusan ini membuka jalan untuk kembali mengubah monumen tersebut menjadi masjid. Terkenal akan kubah besarnya, Hagia Sophia dipandang sebagai lambang arsitektur Bizantium dan dikatakan 'telah mengubah sejarah arsitektur.' Bangunan ini tetap menjadi katedral terbesar di dunia selama hampir seribu tahun sampai Katedral Sevilla diselesaikan pada tahun 1520.",
      rating: "4.6",
      imgUrl: "lib/assets/image/hagia_sophia.jpg"),
  Place(
      index: 5,
      name: "Fuji",
      province: "Honshu",
      nation: "Jepang",
      description:
          "Gunung Fuji (富士山 Fujisan, bahasa Jepang: [ɸɯꜜ(d)ʑisaɴ] ( simak)), terletak di pulau Honshu, adalah gunung tertinggi di Jepang, dengan ketinggian 3.776,24 m (12.389,2 kaki). Gunung ini adalah gunung berapi tertinggi kedua yang terletak di sebuah pulau di benua Asia (setelah Gunung Kerinci di pulau Sumatera), dan puncak tertinggi ketujuh dari sebuah pulau di Bumi. Gunung Fuji adalah gunung berapi aktif yang terakhir meletus pada tahun 1707 hingga 1708. Gunung ini terletak sekitar 100 km (62 mil) barat daya Tokyo dan dapat terlihat dari sana pada hari-hari cerah. Kerucut Gunung Fuji berbentuk sangat simetris, dan tertutup salju selama sekitar lima bulan dalam setahun. Gunung ini biasanya digunakan sebagai ikon budaya Jepang dan sering digambarkan dalam karya seni dan fotografi, serta dikunjungi oleh banyak wisatawan dan pendaki.",
      rating: "4.7",
      imgUrl: "lib/assets/image/fuji.jpg"),
  Place(
      index: 6,
      name: "Menara Eiffel",
      province: "Paris",
      nation: "Perancis",
      description:
          "Menara Eiffel sebelumnya bernama Menara Paris (bahasa Prancis: Tour Eiffel, /tuʀ ɛfɛl/) merupakan sebuah menara besi yang dibangun di Champ de Mars di tepi Sungai Seine, Paris. Menara ini telah menjadi ikon global Prancis dan salah satu struktur terkenal di dunia. Dinamai sesuai nama perancangnya, Gustave Eiffel, Menara Eiffel adalah bangunan tertinggi di Paris dan salah satu struktur terkenal di dunia. Lebih dari 200.000.000 orang telah mengunjungi menara ini sejak pembangunannya tahun 1889, termasuk 6.719.200 orang tahun 2006, menjadikannya monumen berbayar yang paling banyak dikunjungi di dunia. Termasuk antena setinggi 24 m (79 kaki), struktur ini memiliki tinggi 325 m (1.063 kaki) sejak 2000, yang sama dengan bangunan konvensional bertingkat 81.",
      rating: "4.8",
      imgUrl: "lib/assets/image/eiffel.jpg"),
  Place(
      index: 7,
      name: "Kastil Chillon",
      province: "Jenewa",
      nation: "Swiss",
      description:
          "Bertengger di pulau kecil Lake Geneva juga dikenal sebagai Danau Jenewa, dekat kota Montreux, Chillon Castle adalah tontonan yang tidak boleh dilewatkan selama kunjungan ke Swiss. Berlokasi ideal dengan pemandangan Alpen sekitarnya yang menakjubkan, tempat ini memiliki status yang patut ditiru sebagai bangunan bersejarah yang paling banyak dikunjungi di negara ini, dengan pengunjung 350,000 setiap tahun. Kehidupan di petak pulau kecil yang merupakan rumah bagi Chillon berasal dari zaman Perunggu, tetapi penyebutan pertama dari penyelesaian sebenarnya tidak muncul dalam catatan tertulis sampai 1150. Pada saat itu, area itu berada di bawah kendali Counts of Savoy. Saat itu, itu mungkin menjadi kelompok struktur yang seiring waktu bergabung bersama untuk membentuk kastil modern.",
      rating: "4.9",
      imgUrl: "lib/assets/image/chillon_castle.jpg"),
  Place(
      index: 8,
      name: "Big Ben",
      province: "London",
      nation: "Inggris",
      description:
          "Big Ben adalah nama sebuah lonceng besar di tengah menara jam yang terletak di sebelah utara Istana Westminster, London, Britania Raya. Tetapi nama tersebut sering dipakai untuk menyebut menara jam itu secara menyeluruh. Secara resmi menara ini diberi nama Elizabeth Tower (Menara Elizabeth), bertepatan dengan pesta 60 tahun Ratu Elizabeth II memimpin Britania Raya dan Wilayah Persemakmuran. Big Ben selesai dibangun pada tahun 1858, dan pada tanggal 31 Mei 2009 menara ini tepat berusia 150 tahun.",
      rating: "4.7",
      imgUrl: "lib/assets/image/big_ben.jpg"),
  Place(
      index: 9,
      name: "Alhambra",
      province: "Granada",
      nation: "Spanyol",
      description:
          "Alhambra (bahasa Arab: الحمراء = Al-Ħamrā'; berarti 'merah') adalah nama sebuah kompleks istana sekaligus benteng yang megah dari kekhalifahan bani ummayyah di Granada, Spanyol bagian selatan (dikenal dengan sebutan Al-Andalus ketika benteng ini didirikan), yang mencakup wilayah perbukitan di batas kota Granada. Istana ini dibangun sebagai tempat tinggal khalifah beserta para pembesarnya.",
      rating: "4.6",
      imgUrl: "lib/assets/image/alhambra.jpg"),
];
