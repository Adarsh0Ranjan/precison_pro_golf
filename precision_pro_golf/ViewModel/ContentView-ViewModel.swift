//
//  ContentView-ViewModel.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 28/09/22.
//

import Foundation
import SwiftUI
extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published  var downladAmoount = 0.0
        let timer = Timer.publish(every: 0.1  , on: .main, in: .common).autoconnect()
        let swiftColor = UIColor(red: 1, green: 165/255, blue: 0, alpha: 1)
        @Published  var isActive = false
        @Published   var isShowingTabView = false
        let imageText = ["onboarding_1","onboarding_2","onboarding_3","onboarding_4","onboarding_5"]
        let titleText = ["Welcome to Precision Pro Golf","View Detailed Course Information","Learn Club Distances","Analyze Progress","Connect a Device"]
        let detailText = ["View detailed course information, learn club distances, and measure progress so you can Hit More Greens.","Front, center, and back of the green. With 35,000+ golf courses, we’ve got you covered.","Looking to zero on your club lengths? Learn your distance for each club here.","See where you’re strong, where you’re weak, and what area you need to improve for lower scores.","Own one of our Smart RangeFinders or Speakers? Link ypur device to the app here."]
    }
}
