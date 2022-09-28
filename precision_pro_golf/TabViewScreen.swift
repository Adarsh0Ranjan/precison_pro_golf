//
//  tabView.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 26/09/22.
//

import SwiftUI

struct TabViewScreen: View {
    @State private var selectedIndex = 2
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
           HStack {
               Spacer()
               TabBarView()
               Spacer()
           }
           .frame(width: .infinity, height: 200, alignment: .center)
           .position(x: geo.size.width*0.5, y: geo.size.height)
        }
    }
}
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
