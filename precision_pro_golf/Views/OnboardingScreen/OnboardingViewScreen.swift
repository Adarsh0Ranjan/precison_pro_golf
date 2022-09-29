//
//  OnboardingViewScreen.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 27/09/22.
//

import SwiftUI

struct OnboardingViewScreen: View {
    let imageText: String
    let titleText: String
    let detailText: String
    var body: some View {
        VStack {
            GeometryReader { geo in
                Image(imageText)
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width * 0.5, height: geo.size.height * 0.42, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.22)
                Text(titleText)
                    .multilineTextAlignment(.center)
                    .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.05))
                    .foregroundColor(CustomColor.textColor)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.55)
                    .frame(width: geo.size.width*0.8,height: geo.size.height*0.2)
                Text(detailText)
                    .multilineTextAlignment(.center)
                    .foregroundColor(CustomColor.detailColor)
                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.04))
                    .frame(width: geo.size.width*0.76,height: geo.size.height*0.20)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.75)
            }
        }
    }
}

struct OnboardingViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingViewScreen(imageText: "onboarding_1",titleText: "Welcome to Precision Pro Golf",detailText: "View detailed course information, learn club distances, and measure progress so you can Hit More Greens.")
    }
}
