import SwiftUI

@main
struct CrashTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Crash Tracker")
                    .font(.largeTitle)
                    .padding()
                Text("Tracking the latest crash data")
                    .font(.subheadline)
                    .padding()
                // Additional UI components would go here
            }
        }
    }
}