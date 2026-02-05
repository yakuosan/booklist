import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            LibraryView()
            Text("読みたい本画面")
                .tabItem{
                    Label("読みたい本",systemImage:"book.fill")
                }
            
            SearchView()
            Text("さがす画面")
                .tabItem{
                    Label("さがす",systemImage: "magnifyingglass")
                }
        }
    }
}


#Preview {
    ContentView()
}
