import Foundation
import Alamofire
import SwiftyJSON

class NewsService{
	let url = "https://newsapi.org/v2/everything?q=apple&language=en&sortBy=publishedAt&apiKey=61305b31f71d45d78f3dc1c67cc65d8f"
	func fetch(completion: @escaping ([Article]) -> Void){
		AF.request(url).responseDecodable(of: Response.self) { response in
			//debugPrint("Response: \(response)")
			guard let articles = response.value else{
				print("article download error")
				return
			}
			completion(articles.articles)
		}
	}
}
