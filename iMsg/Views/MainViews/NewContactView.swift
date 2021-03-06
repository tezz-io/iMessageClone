//
//  NewContactView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

// Main View to encapsulte the NewContactSubView and ColorMenu

struct NewContactView: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        ZStack {
            
            // We check whether the showingColorMenu flag is set or not
            
            // If showingColorMenu is set, show the ColorMenu
            if self.envObj.showingNewContactColorMenu {
                VStack {
                    ColorMenu(isNewContact: true)
                }
            }
            
            // If showingColorMenu is not set, show the NewContactSubview
            else {
                NewContactSubview()
                    .frame(height: 240)
                    .background(Color.blue.opacity(0.9))
                    .cornerRadius(30, corners: [.topLeft, .topRight])
            }
        }
    }
}


struct NewContactView_Previews: PreviewProvider {
    static var previews: some View {
        NewContactView()
            .environmentObject(EnvObj())
    }
}



