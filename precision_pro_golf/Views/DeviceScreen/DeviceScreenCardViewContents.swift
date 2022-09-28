//
//  CardViewContents.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 28/09/22.
//

import SwiftUI

struct DeviceScreenCardViewContents: View {
    let imageName: String
    let deviceName: String
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("bluetooth_green")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width*0.09, height: UIScreen.main.bounds.width*0.09, alignment: .center)
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.height*0.19, alignment: .center)
                VStack(spacing: 0) {
                    Text("100%")
                        .foregroundColor(CustomColor.ColorNastyGreen)
                        .font(.custom(CustomFonts.proximaNovaSemiBold, size: UIScreen.main.bounds.width*0.0292))
                        .frame(width: UIScreen.main.bounds.width*0.07, height: UIScreen.main.bounds.width*0.05, alignment: .center)
                    ZStack {
                        Image("battery_connected")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width*0.07, height: UIScreen.main.bounds.width*0.05, alignment: .center)
                    }
                }
            }
            VStack {
                Text(deviceName )
                    .foregroundColor(CustomColor.textColor)
                    .frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.height*0.03, alignment: .center)
                    .font(.custom(CustomFonts.priximaNovaBold, size: UIScreen.main.bounds.height*0.023))
                Text("Connected")
                    .foregroundColor(CustomColor.ColorNastyGreen)
                    .frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.height*0.03, alignment: .center)
                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: UIScreen.main.bounds.height*0.02))
            }
        }
    }
}

struct DeviceScreenCardViewContents_Previews: PreviewProvider {
    static var previews: some View {
        DeviceScreenCardViewContents(imageName: "r_1_graphic", deviceName: "R1 Smart Rangefinder")
    }
}
