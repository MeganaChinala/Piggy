//
//  NewCountMainPage.swift
//  Piggy
//
//  Created by Taylor Bauer on 12/2/19.
//  Copyright © 2019 Group 6. All rights reserved.
//

import SwiftUI

struct NewCountMainPage: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    
                    //For extensibilitiy's sake, everything in this menu can be eventually reduced down to objects of ItemRow
                    Section(header: Text("New Inventory Count").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                        .font(.title)){
                            HStack {
                                Image("liquor 3")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                NavigationLink(destination: TakeLiquorInventory()) {
                                    Text("Liquor / Spirits")
                                }
                            }
                            HStack {
                                Image("liquor 1")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                NavigationLink(destination: TakeLiquorInventory()) {
                                    Text("Beer")
                                }
                            }
                            HStack {
                                Image("toxic drank")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                NavigationLink(destination: TakeLiquorInventory()) {
                                    Text("Groceries")
                                }
                            }
                            HStack {
                                Image("angel")
                                    .resizable()
                                    .frame(width: 64, height: 64)
                                NavigationLink(destination: TakeLiquorInventory()) {
                                    Text("Glassware / Paper Goods")
                                }
                            }
                    }
                    Section(header: Text("Finished?").foregroundColor(Color(red: 0.88, green: 0.65, blue: 0.86, opacity: 1.0))
                    .font(.title)){
                        NavigationLink(destination: MainMenu()) {
                            Text("Save and Generate Orders")
                        }
                    }
                }
                Image("pointing mid")
                    .resizable()
                    .frame(width:256, height: 256)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        .listStyle(GroupedListStyle())
    }
}

struct NewCountMainPage_Previews: PreviewProvider {
    static var previews: some View {
        NewCountMainPage()
    }
}
