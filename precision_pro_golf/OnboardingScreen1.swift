//
//  OnboardingScreen1.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 24/09/22.
//

import SwiftUI

struct OnboardingScreen1: View {
    var body: some View {
        VStack{
            GeometryReader { geo in
                Image("onboarding_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width * 0.55, height: geo.size.height * 0.30, alignment: .center)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.2)
                
                Text("Welcome to Precision Pro Golf")
                    .multilineTextAlignment(.center)
                    .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.05))
                    .foregroundColor(CustomColor.textColor)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.55)
                    .frame(width: geo.size.width*0.8,height: geo.size.height*0.2)
                   

                Text("View detailed course information, learn club distances, and measure progress so you can Hit More Greens.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(CustomColor.detailColor)
                    .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.04))
                    .frame(width: geo.size.width*0.76,height: geo.size.height*0.15)
                    .position(x: geo.size.width*0.5, y: geo.size.height*0.75)
            }
        }
        
    }
}

struct OnboardingScreen1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen1()
    }
}
