//
//  TabBavScreenView.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 29/09/22.
//

//import SwiftUI
//
//struct TabBavScreenView: View {
//    let selctedImage = ["profile_selected","clubs_selected","golf_tab_icon","record_selected","device_tab_icon_selected"]
//    let unSelectedImage = ["profile","clubs","golf_tab_icon","record","device_tab_icon"]
//    let names = ["STATS","CLUB","GOLF","RCORD","DEVICE"]
//    @Binding var selectedIndex : Int
//    var body: some View {
//        ForEach(0..<5) { num in
//            if num == 2 {
//                Button {
//                    selectedIndex = num
//                }label: {
//                    ZStack{
//                        VStack(spacing:10) {
//                                Image("golf_tab_icon")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 50, height: 50)
//                                Text("GOLF")
//                                    .frame(width: 50, height: 1)
//                                    .foregroundColor(selectedIndex != num ? CustomColor.tabViewColor : CustomColor.ColorNastyGreen)
//                                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: 0.04))
//                                    .padding([.bottom],39)
//                            }
//                        if selectedIndex == num {
//                            Image("tab_highlight_indicator")
//                                .frame(width: 30, height: 2)
//                                .padding([.top],41)
//                        }
//                    }
//
//                    .frame(width: UIScreen.main.bounds.width*0.256, height: 160)
//                        .background(Image("golf_tab_background"))
//                }
//            } else {
//                Button {
//                    selectedIndex = num
//                }label: {
//                    ZStack{
//                        VStack {
//                            Image(selectedIndex != num ? unSelectedImage[num] : selctedImage[num])
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 30, height: 30)
////                                .padding([.bottom])
//                            
//                            Text("STATS")
//                                .frame(width: 50, height: 1)
//                                .foregroundColor(selectedIndex != num ? CustomColor.tabViewColor : CustomColor.ColorNastyGreen)
//                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: 0.04))
//                                .padding([.bottom])
//                        }
//                        if selectedIndex == num {
//                            Image("tab_highlight_indicator")
//                                .frame(width: 30, height: 2)
//                                .padding([.top],41)
//                        }
//                    }
//                        
//                    .frame(width: UIScreen.main.bounds.width*0.186, height: 160)
//                        .background(Image("tab_bar_background"))
//                    
//                    
//                        
//                }
//            }
//        }
//    }
//}
//
