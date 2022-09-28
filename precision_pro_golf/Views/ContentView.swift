//
//  ContentView.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 24/09/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        if viewModel.isShowingTabView {
            TabViewScreens(selectedIndex: 2)
        } else if viewModel.isActive {
            NavigationView {
                GeometryReader { geo in
                    VStack {
                        TabView {
                            ForEach(0..<5) { num in
                                OnboardingViewScreen(imageText: viewModel.imageText[num], titleText: viewModel.titleText[num], detailText: viewModel.detailText[num])
                            }
                        }
                        .frame(width: geo.size.width, height: geo.size.height*0.68)
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .onAppear {
                              setupAppearance()
                        }
                        Button {
                            viewModel.isShowingTabView = true
                        }label: {
                            Text("GET STARTED")
                                .frame(width: geo.size.width*0.70, height: geo.size.height*0.05)
                                .font(.custom(CustomFonts.priximaNovaBold ,size: geo.size.width*0.034))
                                .padding()
                                .foregroundColor(.white)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.white, lineWidth: 1)
                            )
                        }
                        .background(CustomColor.ColorNastyGreen)
                        .cornerRadius(15)
                        Text("No Email Requried")
                            .foregroundColor(.gray)
                            .bold()
                            .font(.caption.italic())
                        Button {
                            print("Boutton worked")
                        }label: {
                            Text("LOG IN")
                                .foregroundColor(.gray)
                                .underline()
                                .font(.caption)
                                .padding()
                         }
                    }
                }
            }
        } else {
            ZStack {
                CustomColor.ColorNastyGreen
                VStack {
                    GeometryReader { geo in
                        // gif
                        SplashScreenView("splash.gif")
                            .frame(width: geo.size.width*0.3947, height: geo.size.width*0.3947, alignment: .center)
                            .position(x: UIScreen.main.bounds.width*0.5, y: UIScreen.main.bounds.height*0.5)
                         // loading bar
                        ProgressView("",value: viewModel.downladAmoount,total: 100)
                            .accentColor(.white)
                            .frame(width: geo.size.width*0.5947, height: geo.size.width*0.08)
                            .position(x: geo.size.width*0.5, y: geo.size.height*0.7)

                        // Text
                        Text("APP IN BETA MODE")
                            .frame(width: geo.size.width*0.8, height: geo.size.width*0.05, alignment: .center)
                            .font(.custom(CustomFonts.priximaNovaBold, size: geo.size.height*0.02))
                            .position(x: geo.size.width*0.5, y: geo.size.height*0.85)
                            .foregroundColor(.white)
                    }
                }
            }
            .ignoresSafeArea()
            .onReceive(viewModel.timer) { _ in
                viewModel.downladAmoount += 2
            }
// spalsh view active time
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 4.0 ) {
                    withAnimation {
                        self.viewModel.isActive = true
                    }
                }
            }
        }
    }
// INDEX PAGE COLOUR FOR TAB VIEW
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(CustomColor.ColorNastyGreen).withAlphaComponent(1)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
