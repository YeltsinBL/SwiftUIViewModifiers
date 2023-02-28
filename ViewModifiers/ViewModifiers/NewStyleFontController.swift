//
//  NewStyleFontController.swift
//  ViewModifiers
//
//  Created by YeltsinMacPro13 on 28/02/23.
//

import SwiftUI

struct NewStyleFontController: View {
    var body: some View {
        VStack {
            Text("Modificador fontWidth y Width con los nuevos estilos de fuente")
                .multilineTextAlignment(.center)
                .font(.title2)
                .foregroundColor(.red)
            Grid {
                GridRow {
                    Text("Compressed")
                    Text("Nuevo estilo en SwiftUI")
    //                    .fontWidth(.compressed)
                        .font(.body.width(.compressed))
                        .padding(.bottom, 4)
                }
                Divider()
                GridRow {
                    Text("Condensed")
                    Text("Nuevo estilo en SwiftUI")
                        .fontWidth(.condensed)
                        .padding(.bottom, 4)
                }
                Divider()
                GridRow {
                    Text("Standard")
                    Text("Estilo Standar en SwiftUI")
                        .fontWidth(.standard)
                        .padding(.bottom, 4)
                }
                Divider()
                GridRow {
                    Text("Expanded")
                    Text("Nuevo estilo en SwiftUI")
                        .fontWidth(.expanded)
                        .padding(.bottom, 4)
                }
            }
            .padding(.top, 10)
            
            VStack(alignment: .leading) {
                Text("CURSO DE SWIFTUI")
                    .fontWidth(.expanded)
                    .bold()
                    .foregroundColor(.gray)
                    .padding(.bottom, 6)
                Text("Aprende a crear aplicaciones móviles con SwiftUI")
                    .font(.system(size: 30).width(.compressed))
                    .bold()
                Rectangle()
                    .frame(height: 1.5)
                Text("by SwiftBeta")
                    .font(.callout.width(.expanded))
                    .padding(.bottom, 8)
                Text("Crear aplicaciones móviles pueder ser un reto muy grande, pero con los videos de SwiftBeta del canal de Youtube puedes seguir un orden de menos a mayor complejidad.")
                    .foregroundColor(.gray)
            }
            .padding()
            .border(.blue)
            Spacer()
        }
    }
}

struct NewStyleFontController_Previews: PreviewProvider {
    static var previews: some View {
        NewStyleFontController()
    }
}
