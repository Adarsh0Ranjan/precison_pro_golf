//
//  OnboardingScreen2.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 24/09/22.
//

import SwiftUI

struct OnboardingScreen2: View {
    var body: some View {
        VStack{
            GeometryReader{ geo in
                Image("onboarding_2")
                  .resizable()
                  .scaledToFit()
                  .frame(width: geo.size.width * 0.85, height: geo.size.height * 0.50, alignment: .center)
                  .position(x: geo.size.width*0.5, y: geo.size.height*0.2)
                
                Text("View Detailed Course Information ")
                    .multilineTextAlignment(.center)
                    .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.05))
                    .foregroundColor(CustomColor.textColor)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.55)
                    .frame(width: geo.size.width*0.8,height: geo.size.height*0.2)
                
                Text("Front, center, and back of the green. With35,000+ golf courses, we’ve got you covered.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(CustomColor.detailColor)
                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.04))
                    .frame(width: geo.size.width*0.76,height: geo.size.height*0.15)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.75)
            }
        }
    }
}

struct OnboardingScreen2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen2()
    }
}
