//
//  DeviceScreenView.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 25/09/22.
//

import SwiftUI

struct DeviceScreenView: View {
    var body: some View {
        VStack{
            GeometryReader{ geo in
                Text("DEVICES")
                    .foregroundColor(CustomColor.textColor)
                    .frame(width: geo.size.width, height: geo.size.height*0.03, alignment: .center)
                    .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.025))
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.12)
                
                
                //R1 smart
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .shadow(color: CustomColor.ShadowColor, radius: 10, x: 0, y: 0)
                        .frame(width: geo.size.width*0.8, height: geo.size.height*0.3, alignment: .center)
                    VStack{
                        HStack(alignment: .top){
                            Image("bluetooth_green")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.09, height: geo.size.width*0.09, alignment: .center)
                            

                                Image("r_1_graphic")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.19, alignment: .center)
    //
                            VStack(spacing: 0){
                                Text("100%")
                                    
                                    .foregroundColor(CustomColor.ColorNastyGreen)
                                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.0292))
                                    .frame(width: geo.size.width*0.07, height: geo.size.width*0.05, alignment: .center)
                                    
                                Image("battery_connected")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geo.size.width*0.07, height: geo.size.width*0.05, alignment: .center)
                            }
                        }
                        VStack{
                            Text("R1 Smart Rangefinder")
                                .foregroundColor(CustomColor.textColor)
                                .frame(width: geo.size.width*0.5, height: geo.size.height*0.03, alignment: .center)
                                .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.023))
                            Text("Connected")
                                .foregroundColor(CustomColor.ColorNastyGreen)
                                .frame(width: geo.size.width*0.5, height: geo.size.height*0.03, alignment: .center)
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.height*0.02))
                        }
                    }
                }
                .position(x: geo.size.width*0.5, y: geo.size.height*0.35)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .shadow(color: CustomColor.ShadowColor, radius: 10, x: 0, y: 0)
                        .frame(width: geo.size.width*0.8, height: geo.size.height*0.3, alignment: .center)
                    VStack{
                        HStack(alignment: .top){
                            Image("bluetooth_green")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width*0.09, height: geo.size.width*0.09, alignment: .center)
                                Image("s_1_graphic")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geo.size.width*0.5, height: geo.size.height*0.19, alignment: .center)
                            VStack(spacing: 0){
                                Text("100%")
                                    .foregroundColor(CustomColor.ColorNastyGreen)
                                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.0292))
                                    .frame(width: geo.size.width*0.07, height: geo.size.width*0.05, alignment: .center)
                                    
                                Image("battery_connected")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: geo.size.width*0.07, height: geo.size.width*0.05, alignment: .center)
                            }
                        }
                        VStack{
                            Text("S1 Smart Speaker")
                                .foregroundColor(CustomColor.textColor)
                                .frame(width: geo.size.width*0.5, height: geo.size.height*0.03, alignment: .center)
                                .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.023))
                            Text("Connected")
                                .foregroundColor(CustomColor.ColorNastyGreen)
                                .frame(width: geo.size.width*0.5, height: geo.size.height*0.03, alignment: .center)
                                .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.height*0.02))
                        }
                    }
                }
                
                .position(x: geo.size.width*0.50, y: geo.size.height*0.68)

           }
            
        }
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height, alignment: .top)
    }
}

struct DeviceScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceScreenView()
    }
}
