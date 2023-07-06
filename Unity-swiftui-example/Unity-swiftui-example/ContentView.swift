//
//  ContentView.swift
//  Unity-swiftui-example
//
//  Created by 長政輝 on 2023/07/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                NavigationLink("Unity") {
                    UnityViewController()
                        .edgesIgnoringSafeArea(.all)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
