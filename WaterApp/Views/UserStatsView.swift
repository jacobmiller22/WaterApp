//
//  UserStatsView.swift
//  WaterApp
//
//  Created by Jacob Miller on 1/3/20.
//  Copyright © 2020 Jacob Miller. All rights reserved.
//

import SwiftUI
import UserNotifications

struct UserStatsView : View {
    
    @EnvironmentObject var uStats: UserStats
    @EnvironmentObject var uNotifs: UserNotifications
    
    
    
    var body: some View {
        VStack(alignment: .leading){
        
            Text("Stats")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.label)
            VStack{
                HStack{
                    Text("Daily Goal: ")
                    Spacer()
                    Text("\(uStats.consumptionGoal) Oz.")
                }
                HStack{
                    Text("Progress to Goal: ")
                    Spacer()
                    Text("\(uStats.dailyProgress.roundToString(places: 2)) Oz.")
                }
                HStack{
                    Text("Smart Notifications: ")
                    Spacer()
                    if ( uNotifs.smartNotifications) { Text("Enabled") }
                    else { Text("Disabled") }
                }
                HStack{
                    Text("Notification Interval: ")
                    Spacer()
                    Text("\(uNotifs.notificationInterval.secondsToHoursMinutes())")
                }
                HStack{
                    Text("Lifestyle: ")
                    Spacer()
                    if ( uStats.isAthletic) { Text("Active") }
                    else { Text("Non-active") }
                }
                
                HStack{
                    Text("Bodyweight: ")
                    Spacer()
                    Text("\(uStats.bodyWeight) lbs.")
                }
                HStack{
                    Text("Smart Goal: ")
                    Spacer()
                    if(uStats.smartGoalEnabled){
                        Text("Enabled")
                    } else {
                        Text("Disabled")
                    }
                }
            }.padding()
            Spacer()
            }
        .foregroundColor(.secondaryLabel)
        .padding()
            
    }
    
    
    

    struct UserStatsView_Previews: PreviewProvider {
        
               
        static var previews: some View {
            UserStatsView()
        }
    }
}
