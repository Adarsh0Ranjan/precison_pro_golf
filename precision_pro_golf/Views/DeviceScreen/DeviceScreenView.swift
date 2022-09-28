//
//  DeviceScreenView.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 25/09/22.
//

import SwiftUI

struct DeviceScreenView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Text("DEVICES")
                    .foregroundColor(CustomColor.textColor)
                    .frame(width: geo.size.width, height: geo.size.height*0.03, alignment: .center)
                    .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.025))
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.15)
                // R1 smart
                ZStack {
                    RectangularCard    // background for device
                    DeviceScreenCardViewContents(imageName: "r_1_graphic", deviceName: "R1 Smart Rangefinder")  // contents on the card
                }
                .position(x: geo.size.width*0.5, y: geo.size.height*0.35)
                ZStack {
                    RectangularCard   // background for device
                    DeviceScreenCardViewContents(imageName: "s_1_graphic", deviceName: "S1 Smart Speaker")   // contents on the card
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
private extension DeviceScreenView {
    var RectangularCard: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .shadow(color: CustomColor.ShadowColor, radius: 10, x: 0, y: 0)
            .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.3, alignment: .center)
    }
}
