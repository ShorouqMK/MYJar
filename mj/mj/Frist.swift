//
//  Frist.swift
//  mj
//
//  Created by shorouq khallaf on 17/06/1444 AH.
//

import SwiftUI
struct Frist: View {
    @State var grateful : String = ""
    @State var best : String = ""
    @State private var go = false
    
    var body: some View {
        
        NavigationView{
            
            ZStack {
                Color("backg")
                    .frame(width: 400, height: 900)
                    .ignoresSafeArea()
                Image("stars")
                    .resizable()
                    .frame(width: 800, height: 1200)
                    .padding(.bottom, 200.0)
                    .opacity(0.50)
                
                VStack{
                    Text("check")
                        .font(.title)
                        .accessibilityLabel(Text("check"))
                        .foregroundColor(.white)
                    //                    .font(.system(size: 24)
                    //                        .weight (.bold))
                    //
                    
                    Button(action: {go = true}) {
                        Image("jar")
                            .resizable()
                            .frame(width: 190,height: 270)
                    }
                    NavigationLink(" ",destination: second() ,isActive: $go)
                    VStack{
                        Text("grateful")
                        
                            .font(.title3)
                            .foregroundColor(.white)
                            .foregroundColor(.white)
                            .accessibilityLabel(Text("grateful"))
                        //                    .font(.system(size: 18)
                        //                        .weight (.bold))
                        TextField("  type", text: $grateful)
                            .frame(width: 300, height: 35)
                            .foregroundColor(Color("font"))
                            .background(Color("backg2"))
                            .cornerRadius(8)
                        Text("the best")
                            .font(.title3)
                            .foregroundColor(.white)
                            .accessibilityLabel(Text("the best"))
                        //                    .font(.system(size: 18)
                        //                        .weight (.bold))
                        TextField("  type", text: $best)
                            .frame(width: 300, height: 35)
                            .foregroundColor(Color("font"))
                            .background(Color("backg2"))
                            .cornerRadius(8)
                    }.padding(.top, 50.0)
                }.padding()
            }
            
        }
    }
}

struct Frist_Previews: PreviewProvider {
    static var previews: some View {
        Frist()
    }
}
