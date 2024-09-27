class Mathematician {
  final String name;
  final String biography;
  final String contributions;
  final String impact;
  final String historicalContext;
  final String funFacts;
  final String imageUrl;

  Mathematician({
    required this.name,
    required this.biography,
    required this.contributions,
    required this.impact,
    required this.historicalContext,
    required this.funFacts,
    required this.imageUrl,
  });
}

// Example dummy data
final Mathematician newton = Mathematician(
  name: 'Isaac Newton',
  biography:
      'Birth/Death: January 4, 1643 – March 31, 1727\nNationality: English\nCareer Highlights: Physicist, mathematician, astronomer, author. Professor at Cambridge University.',
  contributions:
      'Discoveries/Works:\n• Developed the laws of motion and universal gravitation.\n• Invented calculus.\n• Published "Philosophiæ Naturalis Principia Mathematica".',
  impact:
      '• Laid the foundation for classical mechanics.\n• Influenced the Enlightenment and modern science.',
  historicalContext:
      'Time Period: Late Renaissance & Enlightenment.\nGlobal Events: Scientific Revolution, Glorious Revolution.',
  funFacts:
      'Trivia:\n• Studied alchemy.\n• Often clashed with Robert Hooke and Leibniz.',
  imageUrl:
      'https://cdn.mos.cms.futurecdn.net/3buDqF4oZrEByNRVBgYwmm-1200-80.jpg',
);
