//
//  TaskHistoryDetail.swift
//  Terra
//
//  Created by Michelle Pricilla on 27/07/22.
//

import SwiftUI

struct TaskHistoryDetail: View {
    
    var task: TaskHistory
    
    var body: some View {
            ZStack{
                Image("Background").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
                Image("TaskDetailBackground-1").resizable().frame(width: 350, height: 650).opacity(0.6).cornerRadius(20)
                VStack(spacing: 10.0){
                    HStack(spacing: 30.0) {

                        Text(task.taskName)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .lineLimit(2)
                            .frame(width: 200.0, alignment: .leading)
                        
                        
                        Text(task.tag).foregroundColor(Color.white).frame(width: 100.0, height: 30.0, alignment: .center).background(Color.init(red: 33/255, green: 120/255, blue: 99/255)).cornerRadius(10)

                    }.frame(width: 350.0, height: 60, alignment: .top)
            
                    HStack {
                        VStack(alignment: .leading){
                            Text("Total Time")
                                .fontWeight(.semibold)
                            HStack {
                                Image(systemName: "timer")
                                Text(task.totalTime)
                            }
                        }
                        Spacer().frame(width: 230)
                    }
                    Spacer().frame(height: 10)
                    
                    HStack{
                        
                        VStack(alignment: .leading){
                            Text("Working Time")
                                .fontWeight(.semibold)
                            HStack {
                                Image(systemName: "timer")
                                Text(task.workingTime)
                            }
                            
                        }
                        Spacer().frame(width: 120)
                        VStack(alignment: .leading){
                            Text("Break Time")
                                .fontWeight(.semibold)
                            HStack {
                                Image(systemName: "timer")
                                Text(task.breakTime)
                            }
                        }
                        
                    }
                    Spacer().frame(height: 10)
                    Text("Plant Collected").fontWeight(.semibold).frame(width: 330,alignment: .leading)
                    Spacer().frame(height: 10)
                    Image(task.plant).resizable().frame(width: 250, height: 250, alignment: .center).background(Color.white).cornerRadius(10)
                    NavigationLink(destination: {
                        PlantCollection()
                    }, label: {
                        Text("Go To Collection").foregroundColor(.white)
                    }).frame(width: 250.0, height: 50.0).background(Color.init(red: 33/255, green: 120/255, blue: 99/255) ).cornerRadius(10)

                }
            }.navigationBarTitle(Text("Task History"), displayMode: .inline)
        
    }
}

struct TaskHistoryDetail_Previews: PreviewProvider {
    static var previews: some View {
        TaskHistoryDetail(task: TaskHistoryList.data.first!)
    }
}
