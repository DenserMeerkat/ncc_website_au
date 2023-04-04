class Cadet {
  final String plat;
  final String name;
  final String? img;
  final String desc;
  Cadet({
    required this.plat,
    required this.name,
    this.img,
    required this.desc,
  });
}

class Batch {
  final String year;
  final Cadet csuo;
  final Cadet cuo1;
  final Cadet cuo2;
  final Cadet cuo3;
  final Cadet cqms;
  final Cadet csm;
  Batch({
    required this.year,
    required this.csuo,
    required this.cuo1,
    required this.cuo2,
    required this.cuo3,
    required this.cqms,
    required this.csm,
  });
}

class BatchBrains {
  static Batch currentBatch = Batch(
    year: "2022-2023",
    csuo: Cadet(
      desc: '',
      img: '',
      name: "CSUO Pramoth Kumar A",
      plat: "Signals Platoon",
    ),
    cuo1: Cadet(
      desc: '',
      img: '',
      name: "CUO Karen Jerusha J",
      plat: "Engineers Platoon",
    ),
    cuo2: Cadet(
      desc: '',
      img: '',
      name: "CUO Reshma S",
      plat: "EME Platoon",
    ),
    cuo3: Cadet(
      desc: '',
      img: '',
      name: "CUO Elasukumaran E",
      plat: "Signals Platoon",
    ),
    cqms: Cadet(
      desc: '',
      img: '',
      name: "CQMS Pearlina Marie Rein K",
      plat: "Signals Platoon",
    ),
    csm: Cadet(
      desc: '',
      img: '',
      name: "CSM Jayaharish M R",
      plat: "Engineers Platoon",
    ),
  );
  static List<Batch> batches = [
    Batch(
      year: "2018-2021",
      csuo: Cadet(
        desc: '',
        img: 'assets/images/2018-CSUO.jpg',
        name: "CSUO Arunachalaeswar R",
        plat: "Signals Platoon",
      ),
      cuo1: Cadet(
        desc: '',
        img: 'assets/images/2018-CUO-1.jpg',
        name: "CUO Chandru K",
        plat: "Engineers Platoon",
      ),
      cuo2: Cadet(
        desc: '',
        img: 'assets/images/2018-CUO-2.jpg',
        name: "CUO Kirupa S",
        plat: "EME Platoon",
      ),
      cuo3: Cadet(
        desc: '',
        img: 'assets/images/2018-CUO-3.jpg',
        name: "CUO Sri Dharini D T",
        plat: "Signals Platoon",
      ),
      csm: Cadet(
        desc: '',
        img: 'assets/images/2018-CSM.jpg',
        name: "CSM Raj Thilak R",
        plat: "EME Platoon",
      ),
      cqms: Cadet(
        desc: '',
        img: 'assets/images/2018-CQMS.jpg',
        name: "CQMS Sanjana R",
        plat: "Engineers Platoon",
      ),
    ),
    Batch(
      year: "2017-2020",
      csuo: Cadet(
        desc: '',
        img: 'assets/images/2017-CSUO.jpg',
        name: "CSUO Giri Sakthi A",
        plat: "Engineers Platoon",
      ),
      cuo1: Cadet(
        desc: '',
        img: 'assets/images/2017-CUO-1.jpg',
        name: "CUO Vanmathi K",
        plat: "Engineers Platoon",
      ),
      cuo2: Cadet(
        desc: '',
        img: 'assets/images/2017-CUO-2.jpg',
        name: "CUO Jaikiran D",
        plat: "EME Platoon",
      ),
      cuo3: Cadet(
        desc: '',
        img: 'assets/images/2017-CUO-3.jpg',
        name: "CUO Naina Mohmed M",
        plat: "Signals Platoon",
      ),
      csm: Cadet(
        desc: '',
        img: 'assets/images/2017-CSM.jpg',
        name: "CSM Arthy L",
        plat: "Signals Platoon",
      ),
      cqms: Cadet(
        desc: '',
        img: 'assets/images/2017-CQMS.jpg',
        name: "CQMS Harisuthan V R",
        plat: "EME Platoon",
      ),
    ),
    Batch(
      year: "2016-2019",
      csuo: Cadet(
        desc: '',
        img: 'assets/images/2016-CSUO.jpg',
        name: "CSUO Ragavendran K",
        plat: "Signals Platoon",
      ),
      cuo1: Cadet(
        desc: '',
        img: 'assets/images/2016-CUO-1.jpg',
        name: "CUO Arivunithi V",
        plat: "Engineers Platoon",
      ),
      cuo2: Cadet(
        desc: '',
        //img: 'assets/images/2016-CUO-2.jpg',
        name: "CUO Narenthiran P",
        plat: "EME Platoon",
      ),
      cuo3: Cadet(
        desc: '',
        //img: 'assets/images/2016-CUO-3.jpg',
        name: "CUO Nikil Murugan K",
        plat: "Signals Platoon",
      ),
      csm: Cadet(
        desc: '',
        img: 'assets/images/2016-CSM.jpg',
        name: "CSM Deepakrajan V",
        plat: "Signals Platoon",
      ),
      cqms: Cadet(
        desc: '',
        img: 'assets/images/2016-CQMS.jpg',
        name: "CQMS Saravanan K",
        plat: "EME Platoon",
      ),
    ),
  ];
}
