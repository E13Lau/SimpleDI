//
//  ContentView.swift
//  Demo
//
//  Created by Jay Lau on 2024/4/15.
//

import SwiftUI
import SampleInjected

struct ContentView: View {
    @Injected var container: DIContainer
    @Injected var useCases: AnyUseCases

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(container.title)
            Button("Action") {
                useCases.tapTip()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
