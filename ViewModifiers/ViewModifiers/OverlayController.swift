//
//  OverlayController.swift
//  ViewModifiers
//
//  Created by YeltsinMacPro13 on 28/02/23.
//

import SwiftUI

struct OverlayController: View {
    var body: some View {
        VStack {
            Text("Uso de Overlay y ZStack para la Card View")
                .font(.title2)
                .foregroundColor(.red)
            ZStack {
                RoundedRectangle(cornerRadius: 4)
                    .fill(.blue)
                    .overlay(alignment: .bottomTrailing) {
                        Image(systemName: "figure.run")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 230)
                            .offset(x: -40)
                    }
                HStack {
                    VStack(alignment: .leading) {
                        Text("SwiftUI")
                            .fontWidth(.compressed)
                            .foregroundColor(.white)
                            .font(.system(size: 80, weight: .bold))
                            .padding(.bottom, -40)
                        Text("Suscribete al\n canal de SwiftBeta!")
                            .multilineTextAlignment(.center)
                            .fontWidth(.compressed)
                            .foregroundColor(.orange)
                            .font(.system(size: 26, weight: .bold))
                            .frame(width: 200, height: 100)
                        Spacer()
                        Text("SwiftBeta")
                            .fontWidth(.standard)
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                        HStack(alignment: .lastTextBaseline) {
                            Image(systemName: "applelogo")
                                .font(.footnote)
                                .foregroundColor(.white)
                            Text("Mobile Developer")
                                .foregroundColor(.white)
                                .fontWidth(.standard)
                                .font(.system(size: 14, weight: .regular))
                        }
                        .padding(.bottom, 12)
                    }
                    .padding(.leading, 12)
                    .padding(.top, 6)
                    Spacer()
                }
            }
            .frame(height: 230)
            .padding(.horizontal, 12)
            Spacer()
        }
    }
        
}

struct OverlayController_Previews: PreviewProvider {
    static var previews: some View {
        OverlayController()
    }
}
