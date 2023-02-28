//
//  ContentView.swift
//  ViewModifiers
//
//  Created by YeltsinMacPro13 on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("View Modifiers")
                .font(.largeTitle)
            Divider()
            TabView {
                EsqueletosController()
                .tabItem {
                    Label("Esqueleto", systemImage: "circle.lefthalf.filled")
                }
                NewStyleFontController()
                .tabItem {
                    Label("Nueva Fuente", systemImage: "square.text.square")
                }
                MascarasController()
                    .rotationEffect(Angle(degrees: -90))
                    .tabItem {
                        Label("Máscara", systemImage: "theatermasks")
                    }
                OverlayController()
                    .tabItem {
                        Label("Overlay", systemImage: "person.crop.rectangle")
                    }
                ToolBarController()
                    .tabItem {
                        Label("Toolbar", systemImage: "list.bullet.rectangle.portrait")
                    }
            }
            .padding(.top, 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
