//
//  SideBarView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct SideBarView: View {
    @EnvironmentObject var users: Users
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 2) {
                Button(
                    action: {
                        self.users.showingMyProfileView.toggle()
                        
                        self.users.showingSidebar = false
                        self.users.showingNewContact = false
                        self.users.showingChats = false
                        self.users.showingGroups = false
                    }) {
                    SideBarRow(image: "person.crop.circle", text: "My Profile")
                }
                Divider()
                    .padding(.horizontal, 20)
                Button(
                    action: {
                        self.users.showingChats.toggle()
                        
                        self.users.showingSidebar = false
                        self.users.showingNewContact = false
                        self.users.showingMyProfileView = false
                        self.users.showingGroups = false
                    }
                ) {
                    SideBarRow(image: "message", text: "Chats")
                }
                Divider()
                    .padding(.horizontal, 20)
                Button(
                    action: {
                        self.users.showingGroups.toggle()
                        
                        self.users.showingSidebar = false
                        self.users.showingNewContact = false
                        self.users.showingMyProfileView = false
                        self.users.showingChats = false
                    }
                ) {
                    SideBarRow(image: "rectangle.stack.person.crop", text: "Groups")
                }
                Divider()
                    .padding(.horizontal, 20)
                
                Spacer()
                Button(action: {
                    self.users.showingSidebar.toggle()
                }) {
                    Image("Cancel")
                        .resizable()
                        .frame(width: 70, height: 70)
                }
            }
            .frame(width: UIScreen.main.bounds.size.width - 100, alignment: .center)
            .background(Color.gray.opacity(0.2))
            
        }
        .padding(.trailing, 100)
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView().environmentObject(Users())
    }
}
