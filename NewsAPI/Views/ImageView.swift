import SwiftUI
import URLImage

struct ImageView: View{
	let urlToImage: String?

	var body: some View{
		if let url = urlToImage{
			URLImage(URL(string: url)!,
			   empty: {
				  EmptyView()
			   },
			   inProgress: { progress in
				  Image(systemName: "photo")
			   },
			   failure: { error, retry in
					EmptyImageView()
			   },
			   content: { image, info in
				  image
					  .resizable()
					.aspectRatio(contentMode: .fill)
			   })
				.frame(width: 100, height: 100)
				.cornerRadius(10)
		}else{
			EmptyImageView()
		}
	}
}

struct EmptyImageView: View{
	var body: some View{
		Image(systemName: "photo.fill")
			.foregroundColor(.white)
			.background(Color.gray)
			.frame(width: 100, height: 100)
	}
}
