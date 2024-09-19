import SwiftUI

@main
struct Binary_Translating_2App: App {
    @AppStorage("selectedTab") var selectedTab = 0
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                ContentView()
                    .tabItem {
                        Label("Binary", systemImage: "globe")
                    }
                    .tag(0)
                
                HexaView()
                    .tabItem {
                        Label("HexaView", systemImage: "text.book.closed.fill")
                    }
                    .tag(1)
            }
            .tabViewStyle(.automatic)
        }
    }
}

