import Foundation

struct Response: Decodable {
	let articles: [Article]
}

struct Article: Decodable, Hashable {
	let source: Source
	let author: String?
	let title: String?
	let description: String?
	let url: String?
	let urlToImage: String?
	let publishedAt: String?
	let content: String?
}

struct Source: Decodable, Hashable {
	let name: String?
}

/*
"source": {
			   "id": null,
			   "name": "Leganerd.com"
		   },
		   "author": "Umberto Stentella",
		   "title": "Elon Musk viaggerà nello Spazio a bordo dello spazioplano della Virgin Galactic",
		   "description": "Anche Elon Musk presto raggiungerà i confini tra atmosfera e Spazio e lo farà proprio a bordo dello spazioplano della Virgin Galactic, lo stesso su cui, nella giornata di ieri, ha volato il fondatore dell’azienda Richard Branson, entrando a far parte della St…",
		   "url": "https://leganerd.com/2021/07/12/elon-musk-viaggera-nello-spazio-a-bordo-dello-spazioplano-della-virgin-galactic/",
		   "urlToImage": "https://leganerd.com/wp-content/uploads/2021/04/elon-musk-pollici-in-su.jpg",
		   "publishedAt": "2021-07-12T13:32:38Z",
		   "content": "Anche Elon Musk presto raggiungerà i confini tra atmosfera e Spazio e lo farà proprio a bordo dello spazioplano della Virgin Galactic, lo stesso su cui, nella giornata di ieri, ha volato il fondatore… [+1099 chars]"
*/
