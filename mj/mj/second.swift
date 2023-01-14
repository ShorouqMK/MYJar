//
//  second.swift
//  mj
//
//  Created by shorouq khallaf on 17/06/1444 AH.
//

import SwiftUI
import UserNotifications
struct second: View {
    
    var body: some View {
        ZStack {
            Color("backg")
                .frame(width: 400, height: 900)
                .ignoresSafeArea()
            Image("stars")
                .resizable()
                .frame(width: 800, height: 1200)
                .padding(.bottom, 200.0)
                .opacity(0.50)
            Text("habits Jar")
                .accessibilityLabel(Text("habits Jar"))
                .foregroundColor(.white)
                .font(.title)
                .padding(.bottom, 700.0)
            VStack{
                HStack{
                    ZStack{
                        Image("jar")
                            .resizable()
                            .frame(width: 180, height: 280)
//                        Text("drink")
//                            .foregroundColor(Color("font"))
//                            .font(.system(size: 20))
//                            .padding(.top, 50.0)
                        Button("drink") {
                            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                                if success {
                                    print("All set!")
                                } else if let error = error {
                                    print(error.localizedDescription)
                                }
                            }
                            
                        }.foregroundColor(Color("font"))
                            .font(.title3)
                            .padding(.top, 50.0)
                            .accessibilityLabel(Text("drink"))
                        
                        Button("Alert me") {
                            let content = UNMutableNotificationContent()
                            content.title = "Drink"
                            content.subtitle = "Drink a cup of water 🚰"
                            content.sound = UNNotificationSound.default

                            // show this notification five seconds from now
                            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                            // choose a random identifier
                            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                            // add our notification request
                            UNUserNotificationCenter.current().add(request)

                        }.foregroundColor(Color("font"))
                            .font(.title3)
                            .padding(.top, 190)
                            .accessibilityLabel(Text("Alert me"))
                        

                    }
                    ZStack{
                        Image("jar")
                            .resizable()
                            .frame(width: 180, height: 280)
//                        Text("drink")
//                            .foregroundColor(Color("font"))
//                            .font(.system(size: 20))
//                            .padding(.top, 50.0)
                        Button("meditation") {
                            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                                if success {
                                    print("All set!")
                                } else if let error = error {
                                    print(error.localizedDescription)
                                }
                            }
                            
                        }.foregroundColor(Color("font"))
                            .font(.title3)
                            .padding(.top, 50.0)
                            .accessibilityLabel(Text("meditation"))
                        Button("Alert me") {
                            let content = UNMutableNotificationContent()
                            content.title = "Meditation"
                            content.subtitle = "Meditated for 10 minutes 🌌"
                            content.sound = UNNotificationSound.default

                            // show this notification five seconds from now
                            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                            // choose a random identifier
                            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                            // add our notification request
                            UNUserNotificationCenter.current().add(request)

                        }.foregroundColor(Color("font"))
                            .font(.title3)
                            .padding(.top, 190)
                            .accessibilityLabel(Text("Alert me"))

                    }
                        
                    
                }
                HStack{
                    ZStack{
                        Image("jar")
                            .resizable()
                            .frame(width: 180, height: 280)
//                        Text("drink")
//                            .foregroundColor(Color("font"))
//                            .font(.system(size: 20))
//                            .padding(.top, 50.0)
                        Button("walk") {
                            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                                if success {
                                    print("All set!")
                                } else if let error = error {
                                    print(error.localizedDescription)
                                }
                            }
                            
                        }.foregroundColor(Color("font"))
                            .font(.title3)
                            .padding(.top, 50.0)
                            .accessibilityLabel(Text("walk"))
                        Button("Alert me") {
                            let content = UNMutableNotificationContent()
                            content.title = "Walk"
                            content.subtitle = "Stand up and walk couple steps 👣"
                            content.sound = UNNotificationSound.default

                            // show this notification five seconds from now
                            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                            // choose a random identifier
                            let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                            // add our notification request
                            UNUserNotificationCenter.current().add(request)

                        }.foregroundColor(Color("font"))
                            .font(.title3)
                            .padding(.top, 190)
                            .accessibilityLabel(Text("Alert me"))

                    }
//                    ZStack{
//                        Image("jar")
//                            .resizable()
//                            .frame(width: 180, height: 280)
//                        Text("add")
//                            .foregroundColor(Color("font"))
//                            .font(.system(size: 20))
//                            .padding(.top, 50.0)
//                    }
                        
                    
                }
                
            }
        }
    }
    
    struct second_Previews: PreviewProvider {
        static var previews: some View {
            second()
        }
    }
}
