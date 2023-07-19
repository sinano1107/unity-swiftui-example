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
                    ZStack {
                        UnityViewController()
                            .edgesIgnoringSafeArea(.all)
                        VStack {
                            Spacer()
                            Button("メッセージ") {
#if WITH_Unity
                                Unity.shared.sendMessageToUnity(objectName: "APIEntryPoint", functionName: "ReceiveMessage", argument: "Hello I'm SwiftUI!")
#endif
                            }
                        }
                        
                    }
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
