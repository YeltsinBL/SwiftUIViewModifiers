//
//  MascarasController.swift
//  ViewModifiers
//
//  Created by YeltsinMacPro13 on 28/02/23.
//

import SwiftUI

struct MascarasController: View {
    
    @State var offSetY = 0.0
    let gradient = Gradient(colors: [.blue, .black])
    var body: some View {
        ZStack {
            Text("Mascara")
                .foregroundColor(.red)
                .background(.red)

            ScrollView {
                VStack(spacing: 0) {
                    Image("descarga")
                        .resizable()
                    Image("descarga")
                        .resizable()
                }
                .scaledToFit()
                .frame(width: 800, height: 800)
                .offset(y: offSetY)
            }
            .mask({
                Text("Máscara")
                    .font(.system(size: 120,
                                  weight: .bold,
                                  design: .monospaced))
            })
            .background {
                //Agregar un fondo con color difuminado
                RadialGradient(gradient: gradient, center: .center, startRadius: 100, endRadius: 470)
            }
            .onAppear {
//                Agregar animacion con efecto infinito
                withAnimation(.linear(duration: 4)
                    .repeatForever(autoreverses: false)) {
                        offSetY = -300
                    }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct MascarasController_Previews: PreviewProvider {
    static var previews: some View {
        MascarasController()
    }
}
