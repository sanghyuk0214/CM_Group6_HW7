//
//  CMHW7App.swift
//  CMHW7
//
//  Created by snlcom on 2023/05/09.
//

import SwiftUI

@main
struct CMHW7App: App {
    @StateObject var structures = Structures()
    var body: some Scene {
        WindowGroup {
            TabView {
                ScrollView {
                    ForEach(structures.structures, id: \.self) { structure in
                        ContentView(structure: structure)
                        Divider()
                    }
                }
                .padding(.top, 1)
                .tabItem {
                    Image(systemName: "paperplane")
                    Text("Engineering Marvels")
                }
                NavigationView {
                    MapView()
                }
                .tabItem {
                    Image(systemName: "camera")
                    Text("Global Map")
                }
            }
            .environmentObject(structures)
        }
    }
}
