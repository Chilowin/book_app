import '../models/book.dart';
import '../models/review.dart';

class MockData {
  static List<Book> getBooks() {
    return [
      Book(
        id: 1,
        titre: "Le Petit Prince",
        auteur: "Antoine de Saint-Exupéry",
        genre: "Fiction",
        annee: 1943,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/9/9e/Le_Petit_Prince_cover.jpeg",
        resume:
            "Le Petit Prince est un conte poétique et philosophique qui raconte l'histoire d'un petit prince voyageant de planète en planète, rencontrant divers personnages et découvrant les complexités de la vie et de l'amour.",
      ),
      Book(
        id: 2,
        titre: "1984",
        auteur: "George Orwell",
        genre: "Dystopian",
        annee: 1949,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/c/c3/1984first.jpg",
        resume:
            "1984 est un roman dystopique qui explore les dangers de la surveillance gouvernementale, de la manipulation de l'information et de la perte de liberté individuelle dans une société totalitaire.",
      ),
      Book(
        id: 3,
        titre: "To Kill a Mockingbird",
        auteur: "Harper Lee",
        genre: "Fiction",
        annee: 1960,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/7/79/To_Kill_a_Mockingbird.JPG",
        resume:
            "To Kill a Mockingbird est un roman qui aborde les thèmes de la justice, de la moralité et des préjugés raciaux à travers les yeux d'une jeune fille dans le sud des États-Unis pendant les années 1930.",
      ),
      Book(
        id: 4,
        titre: "Pride and Prejudice",
        auteur: "Jane Austen",
        genre: "Romance",
        annee: 1813,
        couverture:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PrideAndPrejudiceTitlePage.jpg/800px-PrideAndPrejudiceTitlePage.jpg",
        resume:
            "Pride and Prejudice est un roman qui explore les thèmes de l'amour, du mariage et des classes sociales à travers l'histoire de la famille Bennet et de leurs interactions avec la société anglaise du début du XIXe siècle.",
      ),
      Book(
        id: 5,
        titre: "The Great Gatsby",
        auteur: "F. Scott Fitzgerald",
        genre: "Fiction",
        annee: 1925,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/f/f7/TheGreatGatsby_1925jacket.jpeg",
        resume:
            "The Great Gatsby est un roman qui explore les thèmes de l'illusion, de l'amour et de la décadence à travers l 'histoire de Jay Gatsby et de sa quête pour retrouver son amour perdu, Daisy Buchanan, dans le contexte de la société américaine des années 1920.",
      ),
      Book(
        id: 6,
        titre: "Jane Eyre",
        auteur: "Charlotte Brontë",
        genre: "Romance",
        annee: 1847,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/5/5e/Jane_Eyre_1847.jpeg",
        resume:
            "Jane Eyre est un roman qui raconte l'histoire d'une jeune gouvernante indépendante et sa relation complexe avec le riche et mystérieux Mr. Rochester.",
      ),
      Book(
        id: 7,
        titre: "Orgueil et Préjugés",
        auteur: "Jane Austen",
        genre: "Romance",
        annee: 1813,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/0/0b/Orguel_et_Prejuges.jpeg",
        resume:
            "Un classique intemporel qui explore l'amour, le mariage et les conventions sociales à travers les yeux d'Elizabeth Bennet et de monsieur Darcy.",
      ),
      Book(
        id: 8,
        titre: "Wuthering Heights",
        auteur: "Emily Brontë",
        genre: "Gothic",
        annee: 1847,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/3/3f/Wuthering_Heights_1847.jpeg",
        resume:
            "Un roman gothique intense qui raconte la passion destructrice entre Heathcliff et Catherine dans les landes sauvages du Yorkshire.",
      ),
      Book(
        id: 9,
        titre: "Le Seigneur des Anneaux",
        auteur: "J.R.R. Tolkien",
        genre: "Fantasy",
        annee: 1954,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/e/e9/Seigneur_des_anneaux.jpeg",
        resume:
            "Une épopée fantasy magistrale qui suit le voyage de Frodo Sacquet pour détruire l'Anneau Unique et sauver la Terre du Milieu du mal.",
      ),
      Book(
        id: 10,
        titre: "Les Misérables",
        auteur: "Victor Hugo",
        genre: "Historical Fiction",
        annee: 1862,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/2/2a/Les_Miserables.jpeg",
        resume:
            "Un chef-d'œuvre qui raconte l'histoire de Jean Valjean, de sa rédemption et de sa lutte contre la pauvreté et l'injustice dans la France du XIXe siècle.",
      ),
      Book(
        id: 11,
        titre: "Cent Ans de Solitude",
        auteur: "Gabriel García Márquez",
        genre: "Magical Realism",
        annee: 1967,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/3/3f/Cent_ans_de_solitude.jpeg",
        resume:
            "Un chef-d'œuvre du réalisme magique qui raconte les sept générations de la famille Buendía dans le village imaginaire de Macondo.",
      ),
      Book(
        id: 12,
        titre: "La Métamorphose",
        auteur: "Franz Kafka",
        genre: "Fiction",
        annee: 1915,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/a/a3/Metamorphose_Kafka.jpeg",
        resume:
            "Un conte philosophique sur la transformation d'un homme en insecte géant, explorant l'absurdité de l'existence et l'aliénation dans la société moderne.",
      ),
      Book(
        id: 13,
        titre: "Madame Bovary",
        auteur: "Gustave Flaubert",
        genre: "Realism",
        annee: 1856,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/f/f0/MadameBovary.jpeg",
        resume:
            "Chef-d'œuvre du réalisme qui peint le portrait d'Emma Bovary, une femme prisonnière de ses illusions romantiques dans une petite province française.",
      ),
      Book(
        id: 14,
        titre: "Les Frères Karamazov",
        auteur: "Fiodor Dostoïevski",
        genre: "Philosophical Fiction",
        annee: 1880,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/7/7c/Karamazov.jpeg",
        resume:
            "Un roman philosophique épique qui explore le bien et le mal, la foi et le doute, à travers les vies de trois frères et leur père dans la Russie du XIXe siècle.",
      ),
      Book(
        id: 15,
        titre: "Moby Dick",
        auteur: "Herman Melville",
        genre: "Adventure",
        annee: 1851,
        couverture:
            "https://upload.wikimedia.org/wikipedia/en/4/4e/MobyDick.jpeg",
        resume:
            "Une épopée maritime captivante qui suit le capitaine Achab dans sa quête obsessive de la baleine blanche, explorant les thèmes de l'ambition et de la destruction.",
      ),
    ];
  }

  static List<Review> getMockReviews() {
    return [
      Review(
        id: 1,
        bookId: 1,
        commentaire: "Un chef-d'œuvre intemporel qui touche le cœur.",
        note: 5.0,
      ),
      Review(
        id: 2,
        bookId: 1,
        commentaire: "Magnifique histoire avec des illustrations splendides.",
        note: 4.8,
      ),
      Review(
        id: 3,
        bookId: 1,
        commentaire: "Une fable philosophique qui inspire la réflexion.",
        note: 5.0,
      ),
      Review(
        id: 4,
        bookId: 2,
        commentaire:
            "Une lecture captivante qui explore les dangers de la surveillance.",
        note: 4.5,
      ),
      Review(
        id: 5,
        bookId: 2,
        commentaire: "Dystopie inquiétante et pertinente pour notre époque.",
        note: 4.7,
      ),
      Review(
        id: 6,
        bookId: 2,
        commentaire: "Oppressant mais absolument incontournable.",
        note: 4.6,
      ),
      Review(
        id: 7,
        bookId: 3,
        commentaire:
            "Un roman poignant qui aborde des thèmes importants avec sensibilité.",
        note: 4.0,
      ),
      Review(
        id: 8,
        bookId: 3,
        commentaire: "Justice, moralité et humanité brillamment explorées.",
        note: 4.9,
      ),
      Review(
        id: 9,
        bookId: 3,
        commentaire: "Un classique américain qui reste relevant aujourd'hui.",
        note: 4.7,
      ),
      Review(
        id: 10,
        bookId: 4,
        commentaire: "L'amour et les préjugés avec elegance et esprit.",
        note: 4.8,
      ),
      Review(
        id: 11,
        bookId: 4,
        commentaire: "Jane Austen à son meilleur, pure perfection.",
        note: 5.0,
      ),
      Review(
        id: 12,
        bookId: 4,
        commentaire: "Divertissant et profondément attachant.",
        note: 4.6,
      ),
      Review(
        id: 13,
        bookId: 5,
        commentaire: "Le rêve américain exploré avec nuances et critique.",
        note: 4.7,
      ),
      Review(
        id: 14,
        bookId: 5,
        commentaire: "Prose magnifique et personnages mémorables.",
        note: 4.9,
      ),
      Review(
        id: 15,
        bookId: 5,
        commentaire: "Une fresque brillante sur l'Amérique des années 1920.",
        note: 4.8,
      ),
      Review(
        id: 16,
        bookId: 6,
        commentaire: "Romance appassionnante avec une héroïne indépendante.",
        note: 4.7,
      ),
      Review(
        id: 17,
        bookId: 6,
        commentaire: "Féminisme avant la lettre, histoire captivante.",
        note: 4.9,
      ),
      Review(
        id: 18,
        bookId: 6,
        commentaire: "Charlotte Brontë peint l'amour avec intensité.",
        note: 4.8,
      ),
      Review(
        id: 19,
        bookId: 7,
        commentaire: "Version française tout aussi charmante que l'original.",
        note: 4.8,
      ),
      Review(
        id: 20,
        bookId: 7,
        commentaire: "Les intrigues et dialogues sont absolument délicieux.",
        note: 4.7,
      ),
      Review(
        id: 21,
        bookId: 7,
        commentaire: "Darcy et Elizabeth, une paire d'amoureux inoubliables.",
        note: 4.9,
      ),
      Review(
        id: 22,
        bookId: 8,
        commentaire: "Atmosphère sombre et passions tumultueuses.",
        note: 4.6,
      ),
      Review(
        id: 23,
        bookId: 8,
        commentaire: "Gothic roman de premier ordre, troublant et fascinant.",
        note: 4.8,
      ),
      Review(
        id: 24,
        bookId: 8,
        commentaire: "Heathcliff et Catherine : amour maudit éternel.",
        note: 4.5,
      ),
      Review(
        id: 25,
        bookId: 9,
        commentaire: "Épopée époustouflante, univers richement construit.",
        note: 5.0,
      ),
      Review(
        id: 26,
        bookId: 9,
        commentaire: "L'aventure ultime dans un monde fantastique inoubliable.",
        note: 4.9,
      ),
      Review(
        id: 27,
        bookId: 9,
        commentaire: "Tolkien est un génie, cette trilogie change la vie.",
        note: 5.0,
      ),
      Review(
        id: 28,
        bookId: 10,
        commentaire:
            "L'histoire de Jean Valjean reste puissante et pertinente.",
        note: 4.8,
      ),
      Review(
        id: 29,
        bookId: 10,
        commentaire: "Chef-d'œuvre d'humanité et de rédemption.",
        note: 4.9,
      ),
      Review(
        id: 30,
        bookId: 10,
        commentaire: "Victor Hugo capture l'essence de la lutte humaine.",
        note: 4.7,
      ),
      Review(
        id: 31,
        bookId: 11,
        commentaire: "Réalisme magique à son apogée, histoire envoûtante.",
        note: 4.9,
      ),
      Review(
        id: 32,
        bookId: 11,
        commentaire: "Générations de Buendía, cycles éternels et poésie.",
        note: 5.0,
      ),
      Review(
        id: 33,
        bookId: 11,
        commentaire: "Macondo est un monde qui vit en nous à jamais.",
        note: 4.8,
      ),
      Review(
        id: 34,
        bookId: 1,
        commentaire: "Illustrations exquises qui subliment le texte.",
        note: 4.9,
      ),
      Review(
        id: 35,
        bookId: 2,
        commentaire:
            "Un thriller politique dystopique d'une actualité troublante.",
        note: 4.8,
      ),
      Review(
        id: 36,
        bookId: 3,
        commentaire: "Atticus Finch incarne la justice et la droiture.",
        note: 4.8,
      ),
      Review(
        id: 37,
        bookId: 4,
        commentaire: "Austen maîtrise l'art de la satire sociale avec grâce.",
        note: 4.7,
      ),
      Review(
        id: 38,
        bookId: 5,
        commentaire: "Les personnages sont complexes, les émotions brutes.",
        note: 4.6,
      ),
      Review(
        id: 39,
        bookId: 6,
        commentaire: "Rochester et Jane, un couple littéraire iconique.",
        note: 4.7,
      ),
      Review(
        id: 40,
        bookId: 7,
        commentaire:
            "Elizabeth Bennet est une héroïne féministe avant-gardiste.",
        note: 4.8,
      ),
      Review(
        id: 41,
        bookId: 8,
        commentaire: "L'amour destructeur jamais exploré aussi magistralement.",
        note: 4.7,
      ),
      Review(
        id: 42,
        bookId: 9,
        commentaire: "Frodo mérite notre admiration pour son courage.",
        note: 4.9,
      ),
      Review(
        id: 43,
        bookId: 10,
        commentaire: "Les Misérables est un hymne à la justice sociale.",
        note: 4.9,
      ),
      Review(
        id: 44,
        bookId: 11,
        commentaire:
            "L'imagination débordante de García Márquez nous enchante.",
        note: 4.8,
      ),
      Review(
        id: 45,
        bookId: 1,
        commentaire: "Philosophie enfantine qui touche les adultes aussi.",
        note: 4.7,
      ),
      Review(
        id: 46,
        bookId: 2,
        commentaire: "Big Brother nous observe toujours, hélas très pertinent.",
        note: 4.7,
      ),
      Review(
        id: 47,
        bookId: 3,
        commentaire: "Scout Finch grandit avec grâce et intelligence.",
        note: 4.6,
      ),
      Review(
        id: 48,
        bookId: 4,
        commentaire:
            "Chaque relecture révèle de nouvelles nuances dans le dialogue.",
        note: 4.8,
      ),
      Review(
        id: 49,
        bookId: 5,
        commentaire: "Gatsby reste le symbole de nos rêves impossibles.",
        note: 4.7,
      ),
      Review(
        id: 50,
        bookId: 6,
        commentaire: "Jane refuse de compromette son intégrité, admirablement.",
        note: 4.8,
      ),
      Review(
        id: 51,
        bookId: 7,
        commentaire: "La danse et le flirt sont décrits avec délice.",
        note: 4.7,
      ),
      Review(
        id: 52,
        bookId: 8,
        commentaire: "Intensité émotionnelle qui dérange et fascine.",
        note: 4.6,
      ),
      Review(
        id: 53,
        bookId: 9,
        commentaire: "Sam et Frodo incarnent une amitié pure et profonde.",
        note: 4.9,
      ),
      Review(
        id: 54,
        bookId: 10,
        commentaire: "Épopée morale sur le bien et le mal.",
        note: 4.8,
      ),
      Review(
        id: 55,
        bookId: 11,
        commentaire: "Le temps circulaire de Macondo fascine les lecteurs.",
        note: 4.7,
      ),
      Review(
        id: 56,
        bookId: 1,
        commentaire: "Simplicité de la forme, profondeur du message.",
        note: 4.8,
      ),
      Review(
        id: 57,
        bookId: 2,
        commentaire:
            "Contrôle mental et manipulation informationnelle terrifiants.",
        note: 4.6,
      ),
      Review(
        id: 58,
        bookId: 3,
        commentaire: "Racisme et injustice exposés avec courage.",
        note: 4.7,
      ),
      Review(
        id: 59,
        bookId: 4,
        commentaire:
            "Bal et scandales, une toile parfaite d'interactions sociales.",
        note: 4.7,
      ),
      Review(
        id: 60,
        bookId: 5,
        commentaire: "Luxe et désenchantement dans l'Amérique prospère.",
        note: 4.6,
      ),
      Review(
        id: 61,
        bookId: 6,
        commentaire: "Gouvernante ordinaire, destinée extraordinaire.",
        note: 4.7,
      ),
      Review(
        id: 62,
        bookId: 7,
        commentaire: "Humour pétillant mêlé de sagesse sociale.",
        note: 4.8,
      ),
      Review(
        id: 63,
        bookId: 8,
        commentaire: "Landes sauvages reflètent les cœurs tourmentés.",
        note: 4.7,
      ),
      Review(
        id: 64,
        bookId: 9,
        commentaire: "Quête épique avec enjeux apocalyptiques grandioses.",
        note: 5.0,
      ),
      Review(
        id: 65,
        bookId: 10,
        commentaire: "Misère et grandeur humaines dans toute leur splendeur.",
        note: 4.8,
      ),
      Review(
        id: 66,
        bookId: 11,
        commentaire: "Poésie et magie tissées dans chaque page du récit.",
        note: 4.9,
      ),
      Review(
        id: 67,
        bookId: 12,
        commentaire: "Kafka capture l'angoisse existentielle avec génie.",
        note: 4.7,
      ),
      Review(
        id: 68,
        bookId: 12,
        commentaire:
            "La transformation de Gregor est profondément dérangeante.",
        note: 4.8,
      ),
      Review(
        id: 69,
        bookId: 12,
        commentaire:
            "Absurde et philosophique, une méditation sur l'aliénation.",
        note: 4.6,
      ),
      Review(
        id: 70,
        bookId: 13,
        commentaire:
            "Emma Bovary reste le personnage féminin le plus complexe.",
        note: 4.8,
      ),
      Review(
        id: 71,
        bookId: 13,
        commentaire: "Flaubert maîtrise l'art de la critique sociale subtile.",
        note: 4.7,
      ),
      Review(
        id: 72,
        bookId: 13,
        commentaire: "Prose impeccable, tragédie d'une femme prisonnière.",
        note: 4.9,
      ),
      Review(
        id: 73,
        bookId: 14,
        commentaire: "Les Karamazov explorent les mystères du cœur humain.",
        note: 4.9,
      ),
      Review(
        id: 74,
        bookId: 14,
        commentaire:
            "Dostoïevski interroge la foi et la morale sans réponses faciles.",
        note: 4.8,
      ),
      Review(
        id: 75,
        bookId: 14,
        commentaire: "Épopée psychologique qui marque les générations.",
        note: 4.7,
      ),
      Review(
        id: 76,
        bookId: 15,
        commentaire: "Moby Dick captive avec son ambition folle et tragique.",
        note: 4.8,
      ),
      Review(
        id: 77,
        bookId: 15,
        commentaire:
            "Aventure maritime grandiose, Achab incarne l'hubris humain.",
        note: 4.7,
      ),
      Review(
        id: 78,
        bookId: 15,
        commentaire: "Symboles profonds et narration époustouflante.",
        note: 4.9,
      ),
    ];
  }
}
