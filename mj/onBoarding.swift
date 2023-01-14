//
//  ContentView.swift
//  OnBoarding
//
//  Created by Atheer on 18/06/1444 AH.
//

import SwiftUI

struct OnBoardingStep {
    let image: String
    let title: String
    let description: String
}

private let onBoardingSteps = [
    OnBoardingStep(image: "onBoarding1", title: "Walk", description: "Try to walk 10.000 steps a day."),
    OnBoardingStep(image: "onBoarding2", title: "Meditate", description: "Meditate for 10 to 15 minutes."),
    OnBoardingStep(image: "onBoarding3", title: "Drink water", description: "Drink water about 2 liters, or half a gallon a day."),
    OnBoardingStep(image: "onBoarding4", title: "Be grateful", description: "Gratitude can overpower negative emotions")
]

struct onBoarding: View {
    @State private var currentstep = 0
   

//    init() {
//        UIScrollView.appearance().bounces = false
//    }
    
    var body: some View {
        NavigationView{
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    self.currentstep = onBoardingSteps.count - 1
                }){
                    Text("Skip")
                        .padding(16)
                        .foregroundColor(.gray)
                }
            }
            
            TabView(selection: $currentstep){
                ForEach(0..<onBoardingSteps.count) { it in
                    VStack {
                        Image(onBoardingSteps[it].image)
                            .resizable()
                            .frame(width: 350, height: 450)
                        
                        Text(onBoardingSteps[it].title)
                            .font(.title)
                            .bold()
                        
                        Text(onBoardingSteps[it].description)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 32)
                            .padding(.top, 16)
                    }
                    .tag(it)
                    
                }
            
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack {
                ForEach(0..<onBoardingSteps.count) { it in
                    if it == currentstep {
                        Rectangle()
                            .frame(width: 20, height: 10)
                            .cornerRadius(10)
                            .background(Color("bro"))
                    } else {
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.bottom, 24)
            Button(action:{
                if self.currentstep < onBoardingSteps.count - 1 {
                    self.currentstep += 1
                } else {
                    // GET STARTED LOGIC
                }
            }) {
                Text(currentstep < onBoardingSteps.count - 1 ? "Next" : "Get started")
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(Color("bro"))
                    .cornerRadius(16)
                    .padding(.horizontal, 16)
                    .foregroundColor(.black)
                
            }
            .buttonStyle(PlainButtonStyle())
            
        }
    }
    }
}



struct onBoarding_Previews: PreviewProvider {
    static var previews: some View {
        onBoarding()
    }
}

