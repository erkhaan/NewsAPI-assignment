import SwiftUI

struct CellView: View{
	let article: Article
	var body: some View{
		Link(destination: URL(string: article.url ?? "")!, label: {
			HStack(){
				VStack(alignment: .leading,spacing:5){
					Text(article.title ?? "")
						.bold()
						.font(.system(size: 18))
					Text(article.content ?? "")
						.font(.footnote)
						.lineLimit(2)
				}
				.foregroundColor(.black)

				Spacer()
				ImageView(urlToImage: article.urlToImage)
			}
			.padding()
		})

	}
}
