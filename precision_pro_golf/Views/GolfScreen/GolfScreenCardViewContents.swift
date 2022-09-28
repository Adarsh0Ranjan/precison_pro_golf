//
//  GolfScreenCardViewContents.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 28/09/22.
//

import SwiftUI

struct GolfScreenCardViewContents: View {
    let ImageName: String
    let DeviceName: String
    var body: some View {
        HStack {
            Image( "r_1_graphic" )
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width*0.2, height: UIScreen.main.bounds.height*0.09, alignment: .center)
            VStack(spacing:0) {
                Text("R1 Smart")
                    .font(.custom(CustomFonts.priximaNovaBold ,size: UIScreen.main.bounds.width*0.05))
                    .foregroundColor(CustomColor.textColor)
                    .frame(width:UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.height*0.03, alignment: .center)
                HStack {
                    Text("---")
                        .frame(width: UIScreen.main.bounds.width*0.05, height: UIScreen.main.bounds.height*0.02, alignment: .center)
                        .foregroundColor(CustomColor.caption_color)
                        .font(.custom(CustomFonts.proximaNovaSemiBold ,size: UIScreen.main.bounds.width*0.025))
                    Image("battery_not_connected")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.height*0.02, alignment: .center)
                }
            }
            VStack {
                Image("bluetooth_not_connected")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.width*0.1, alignment: .center)
                Text("No Connection")
                    .font(.custom(CustomFonts.proximaNovaSemiBold ,size: UIScreen.main.bounds.width*0.025))
                    .foregroundColor(CustomColor.caption_color)
                    .frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.height*0.02, alignment: .center)
            }
        }
    }
}

struct GolfScreenCardViewContents_Previews: PreviewProvider {
    static var previews: some View {
        GolfScreenCardViewContents(ImageName: "r_1_graphic", DeviceName: "R1 Smart")
    }
}
