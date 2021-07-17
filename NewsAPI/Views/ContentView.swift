import SwiftUI

struct ContentView: View {
	@State var isShowing = false
	@ObservedObject var viewModel = NewsViewModel()
    var body: some View {
		NavigationView{
			VStack(){
				ScrollView(){
					Divider()
					ForEach(viewModel.news, id: \.self){ news in
						CellView(article: news)
						Divider()
					}
				}
				.toolbar{
					Button("Update"){
						viewModel.fetchNews()
					}
				}

			}
			.navigationTitle("News")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
