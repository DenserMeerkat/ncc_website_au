class Link {
  final String title;
  final String date;
  final String link;

  Link({
    required this.title,
    required this.date,
    required this.link,
  });
}

class LinkBrain {
  static List<Link> linksList = [
    Link(
      title: "EBSB Phase VII",
      date: "2021-04-19",
      link:
          "https://drive.google.com/drive/folders/1opQqBDQCw0Ik27zFDqQW8rJth7WrYVwg?usp=sharing",
    ),
    Link(
      title: "Plog Run",
      date: "2021-04-13",
      link:
          "https://drive.google.com/drive/folders/1Z_fhCowxmO5kl0a_6eG7KeouUd1E1iB8?usp=sharing",
    ),
    Link(
      title: "Statue cleaning",
      date: "2021-03-12",
      link:
          "https://drive.google.com/drive/folders/1xcKbcpekXg4MPzli7vNKJB4tHyS1wz4p?usp=sharing",
    ),
  ];
}
