//
//  ContentView.swift
//  ViewModifiers
//
//  Created by YeltsinMacPro13 on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isLoading: Bool = false
    var body: some View {
        VStack {
            List {
                ForEach(1...10, id: \.self) { _ in
                    VStack(alignment: .center) {
                        Text("Bienvenido al ejemplo practico")
                            .font(.title)
                        Text("Aprende a crear aplicaciones moviles")
                        Text("SwiftUI, Swift, Xcode, Combine, UIKit, etc")
                        HStack {
                            Image(systemName: "hand.thumbsup.circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                            Image(systemName: "heart.circle.fill")
                                .imageScale(.large)
                                .foregroundColor(.red)
                        }
                        .font(.largeTitle)
                        .padding(.top, 10)
                    }
                }
            }
    //      indicamos si esta cargando para que se muestre el esqueleto, sino se muestra los vista normal
            .redacted(reason: isLoading ? .placeholder : [] )
            
            Button {
                isLoading.toggle()
            } label: {
                Text(isLoading ? "isLoading":"Refresh")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
