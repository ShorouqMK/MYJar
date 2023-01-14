//
//  ContentView.swift
//  mj
//
//  Created by shorouq khallaf on 17/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    @State private var size = 0.3
    @State private var opacity = 0.5
    var body: some View {
        if isActive{
            Frist()
        } else{
            ZStack {
                Color("backg")
                    .frame(width: 400, height: 900)
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Image("logo")
                            .resizable()
                            .frame(width: 168.4, height: 199)
                        Text("MyJar")
                            .foregroundColor(Color("font"))
                            .font(.system(size: 30))
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
