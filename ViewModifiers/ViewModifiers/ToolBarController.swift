//
//  ToolBarController.swift
//  ViewModifiers
//
//  Created by YeltsinMacPro13 on 28/02/23.
//

import SwiftUI

struct ToolBarController: View {

    var body: some View {
        NavigationStack {
            List(1..<20) { value in
                HStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("SwiftUI - \(value)")
                }
            }
            .toolbar {
        /**Especificar las posiciones de los botones**/
//                ToolbarItem(placement: .destructiveAction) {
//                    Button("Destruc") { }
//                        .tint(.black)
//                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Confirma") { }
                        .tint(.black)
                }
//                ToolbarItem(placement: .principal) {
//                    Button("Principal") { }
//                        .tint(.black)
//                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { }
                        .tint(.black)
                }
//                ToolbarItem(placement: .primaryAction) {
//                    Button("PriAct") { }
//                }
//                ToolbarItem(placement: .secondaryAction) {
//                    Button("SecAct") { }
//                }
                

//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button("Derecho") {
//
//                    }
//                }
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button("Izquierd") {
//
//                    }
//                }
//                ToolbarItem(placement: .navigation) {
//                    Button("Navi") { }
//                }
                
                ToolbarItem(placement: .bottomBar) {
                    Button("Inferior") {

                    }
                }
                ToolbarItem(placement: .status) {
                    Button("Status") { }
                }
            }
            .toolbarBackground(.gray, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Uso del ToolBar")
        }
    }
}

struct ToolBarController_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarController()
    }
}
