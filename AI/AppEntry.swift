//
//  AIApp.swift
//  AI
//
//  Created by Rakhyun Kim on 8/22/23.
//

import SwiftUI

@main
struct AppEntry: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    Task {
                        let sample = GenerationInput(prompt: "Man in a rowboat in the ocean in a storm similar to work by Van Gogh")
                        if let data = sample.encodedData {
                            try await APIService().fetchImages(with: data)
                        }
                    }
                }
        }
    }
}
