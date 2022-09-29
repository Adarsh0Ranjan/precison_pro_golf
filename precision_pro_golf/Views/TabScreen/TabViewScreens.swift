//
//  TabViewScreens.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 27/09/22.
//

import SwiftUI

struct TabViewScreens: View {
    @State var selectedIndex : Int = 0
    var body: some View {
       GeometryReader { geo in
           Section {
               switch selectedIndex {
               case 0:
                   StatsScreenView()
               case 1:
                   ClubScreenView()
               case 2:
                   GolfScreenView()
               case 3:
                   RecordScrenView()
               case 4:
                   DeviceScreenView()
               default:
                   GolfScreenView()
               }
           }
           .position(x: geo.size.width*0.5, y: geo.size.height*0.45)
           HStack(spacing: 0) {
               Spacer()
               TabBarView(selectedIndex: $selectedIndex)
               Spacer()
           }
           .frame(width: geo.size.width, height: 150, alignment: .center)
           .position(x: geo.size.width*0.5, y: geo.size.height*0.95)
            }
       .ignoresSafeArea()
        }
    }
