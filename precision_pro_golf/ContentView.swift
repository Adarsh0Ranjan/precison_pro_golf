//
//  ContentView.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 24/09/22.
//

import SwiftUI

struct ContentView: View {
    // progress view state properties
    @State private var downladAmoount = 0.0
    let timer = Timer.publish(every: 0.1  , on: .main, in: .common).autoconnect()

    @State private var isActive = false
    var body: some View {
        if isActive{
            NavigationView{
                GeometryReader{ geo in
                    VStack{
                        TabView{
                           OnboardingScreen1()
                        }
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .onAppear {
                              setupAppearance()
                        }
                    
                        Button{
    //                        showingGolfView.toggle()
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
                        Button(){
                            //
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

        }else{
            ZStack{
                CustomColor.ColorNastyGreen
                VStack{
                    GeometryReader { geo in
                        // gif
                        SplashScreenView("splash.gif")
                            .frame(width: geo.size.width*0.3947, height: geo.size.width*0.3947, alignment: .center)
                            .position(x: UIScreen.main.bounds.width*0.5, y: UIScreen.main.bounds.height*0.5)
                        
                        // loading bar
                        ProgressView("",value: downladAmoount,total: 100)
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
            .onReceive(timer){ _ in
                downladAmoount += .random(in: 1...4)
            }
            //spalsh view active time
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 4.0 ){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .green
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
