//
//  GolfScreenView.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 25/09/22.
//

import SwiftUI

struct GolfScreenView: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Text("WHERE ARE YOU PLAYING?")
                    .foregroundColor(CustomColor.textColor)
                    .frame(width: geo.size.width, height: geo.size.height*0.03, alignment: .center)
                    .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.025))
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.2)
                // seerach bar
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.white)
                        .shadow(color: CustomColor.ShadowColor, radius: 10, x: 0, y: 0)
                        .frame(width: geo.size.width*0.8, height: geo.size.height*0.08, alignment: .center)
                    HStack(spacing: 50) {
                        Text("Avon Fields Golf Course")
                            .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.04))
                            .foregroundColor(CustomColor.textColor)
                            .frame(width: geo.size.width*0.45, height: geo.size.height*0.03, alignment: .leading)
                        Image("search_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width*0.07, height: geo.size.height*0.03 ,alignment: .center)
                    }
                }
                .position(x: geo.size.width*0.5, y: geo.size.height*0.3)
                // devices
                HStack {
                    Image("bluetooth_icon")
                        .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.04))
                        .frame(width: geo.size.width*0.07, height: geo.size.height*0.05 ,alignment: .center)
                    Text("Devices")
                        .frame(width: geo.size.width*0.15, height: geo.size.height*0.02, alignment: .center)
                        .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.04))
                        .foregroundColor(CustomColor.caption_color)
                }
                .position(x: geo.size.width*0.22, y: geo.size.height*0.39)
                // R1 smart
                ZStack {
                    RectangularCard
                    GolfScreenCardViewContents(ImageName: "r_1_graphic", DeviceName: "R1 Smart")

                }
                .position(x: geo.size.width*0.5, y: geo.size.height*0.49)
                // s1 smart
                ZStack {
                    RectangularCard
                    GolfScreenCardViewContents(ImageName: "s_1_graphic", DeviceName: "S1 Smart")
                }
                .position(x: geo.size.width*0.5, y: geo.size.height*0.62)
                // button
                Group {
                  createButton
                }
                .position(x: geo.size.width*0.50, y: geo.size.height*0.75)
            }
        }
     .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height, alignment: .top)
    }
}
struct GolfScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GolfScreenView()
    }
}
private extension GolfScreenView {
    var RectangularCard: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.white)
            .shadow(color: CustomColor.ShadowColor, radius: 10, x: 0, y: 0)
            .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.11, alignment: .center)
    }    
    var createButton: some View {
        Button {
            // more code to come
        }label: {
            Text("START ROUND")
                .frame(width: UIScreen.main.bounds.width*0.71, height: UIScreen.main.bounds.height*0.04)
                .font(.custom(CustomFonts.priximaNovaBold ,size: UIScreen.main.bounds.width*0.034))
                .padding()
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.white, lineWidth: 1)
            )
        }
        .background(CustomColor.ColorNastyGreen)
        .cornerRadius(15)
    }
}
