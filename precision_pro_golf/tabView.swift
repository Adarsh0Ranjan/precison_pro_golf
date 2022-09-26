//
//  tabView.swift
//  precision_pro_golf
//
//  Created by Roro Solutions on 26/09/22.
//

import SwiftUI

struct tabView: View {
    @State private var selectedIndex = 2
    let selctedImage = ["profile_selected","clubs_selected","golf_tab_icon","record_selected","device_tab_icon_selected"]
    let unSelectedImage = ["profile","clubs","golf_tab_icon","record","device_tab_icon"]
    let names = ["STATS","CLUB","GOLF","RCORD","DEVICE"]
    

    var body: some View {
       GeometryReader{ geo in
           Section{
               switch selectedIndex{
               case 0:
                   StatsScreenView()
               case 1:
                   ClubScreenView()
               case 2:
                   GolfScreenView()
               case 3:
                   RecordScrenView()
               case 4:
                   DeviceScreenView()
               default:
                   GolfScreenView()
                   
               }
           }
           .frame(width: geo.size.width, height: geo.size.height*0.85, alignment: .center)
           ZStack{
         
//                       Image("tab_bar_background")
//                           .resizable()
//                           .scaledToFit()
//                           .shadow(color: CustomColor.ShadowColor, radius: 10, x: 0, y: 0)
//                           .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                   
            HStack{
               ForEach(0..<5) { num in
                   Spacer()
                   if num == 2{
                       Button{
                           selectedIndex = num
                       }label: {
                           VStack(spacing: 0){
                               if(selectedIndex == num){
                                 
                                       Image(unSelectedImage[num])
                                           .resizable()
                                           .scaledToFit()
                                           .frame(width: geo.size.width*0.13, height: geo.size.width*0.13)
                                       Text(names[num])
                                           .foregroundColor(CustomColor.ColorNastyGreen)
                                           .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.027))
                                  

                                   Image("tab_highlight_indicator")
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: geo.size.width*0.075, height: geo.size.height*0.009)
                               }else{
                                   
                                       Image(unSelectedImage[num])
                                           .resizable()
                                           .scaledToFit()
                                           .frame(width: geo.size.width*0.13, height: geo.size.width*0.13)
                                           
                                       Text(names[num])
                                           .foregroundColor(CustomColor.tabViewColor)
                                           .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.027))
                                   
                                   
                               }
                           }
                           .padding([.bottom],31)
//                           .background(Image("tab_bar_background"))
                          
                       }
                   }else{
                       Button{
                           selectedIndex = num
                       }label: {
                           VStack(spacing: 0){
                               
                               
                               if(selectedIndex == num){
                                   Image(selctedImage[num])
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: geo.size.width*0.06, height: geo.size.width*0.06)
                                   Text(names[num])
                                       .foregroundColor(CustomColor.ColorNastyGreen)
                                       .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.027))
                                  
                                   Image("tab_highlight_indicator")
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: geo.size.width*0.075, height: geo.size.height*0.009)
                                                      
                                               
                               }else{
                                   Image(unSelectedImage[num])
                                       .resizable()
                                       .scaledToFit()
                                       .frame(width: geo.size.width*0.06, height: geo.size.width*0.06)
                                   Text(names[num])
                                       .foregroundColor(CustomColor.tabViewColor)
                                       .font(.custom(CustomFonts.proximaNovaSemiBold, size: geo.size.width*0.027))
                               }
                          }
                       }
                   }
                   Spacer()
                   }
               }
               .frame(width: geo.size.width, height: geo.size.height*0.05, alignment: .bottom)
               .position(x: geo.size.width*0.5, y: geo.size.height)
           }
               
                
                
                
            
        }
        
        
    }
}

struct tabView_Previews: PreviewProvider {
    static var previews: some View {
        tabView()
    }
}
