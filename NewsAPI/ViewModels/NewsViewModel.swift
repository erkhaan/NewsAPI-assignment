import Foundation

class NewsViewModel: ObservableObject{
	@Published var news: [Article] = []
	let service = NewsService()
	init(){
		//self.news = sample
		fetchNews()
	}

	func fetchNews(){
		service.fetch{news in
			self.news = news
		}
	}
}
