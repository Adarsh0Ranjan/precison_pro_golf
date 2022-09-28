//
//  TabBarView.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 27/09/22.
//

import SwiftUI

struct TabBarView: View {
    let selctedImage = ["profile_selected","clubs_selected","golf_tab_icon","record_selected","device_tab_icon_selected"]
    let unSelectedImage = ["profile","clubs","golf_tab_icon","record","device_tab_icon"]
    let names = ["STATS","CLUB","GOLF","RCORD","DEVICE"]
    @Binding var selectedIndex : Int
    var body: some View {
        ForEach(0..<5) { num in
            if num == 2 {
                Button {
                    selectedIndex = num
                }label: {
                    ZStack {
                        VStack {
                            Image("golf_tab_background")
                                .frame(width: 15, height: 50)
                            Image("tab_bar_background")
                        }
                        VStack(spacing: 12) {
                            Image("golf_tab_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            Text("GOLF")
                                .frame(width: 50, height: 1)
                                .foregroundColor(selectedIndex != num ? CustomColor.tabViewColor : CustomColor.ColorNastyGreen)
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: 0.04))
                        }
                        .padding([.bottom],40)
                        if selectedIndex == num {
                            Image("tab_highlight_indicator")
                                .frame(width: 30, height: 2)
                                .padding([.top],41)
                        }
                    }
                }
            } else {
                Button {
                    selectedIndex = num
                }label: {
                    ZStack {
                        Image("tab_bar_background")
                        VStack {
                            Image(selectedIndex != num ? unSelectedImage[num] : selctedImage[num])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("STATS")
                                .frame(width: 50, height: 1)
                                .foregroundColor(selectedIndex != num ? CustomColor.tabViewColor : CustomColor.ColorNastyGreen)
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: 0.04))
                        }
                        .padding([.bottom])
                        if selectedIndex == num {
                            Image("tab_highlight_indicator")
                                .frame(width: 30, height: 2)
                                .padding([.top],41)
                        }
                    }
                }
            }
        }
    }
}
