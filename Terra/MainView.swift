//
//  ContentView.swift
//  Terra
//
//  Created by Michelle Pricilla on 27/07/22.
//

import SwiftUI

struct MainView: View {
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        
    }
    
    var taskHistory: [TaskHistory] = TaskHistoryList.data
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Image("Background").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
                VStack(spacing: 8.0) {
                    
                    Image("Terrarium").resizable().aspectRatio(contentMode: .fit).padding(.vertical).frame(width: 250.0)
                    
                    
                    Text("Task History")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading).frame(width: 350, alignment: .leading)
                    
                    
                    List(taskHistory, id: \.id) { task in
                        NavigationLink(destination: TaskHistoryDetail(task: task), label: {
                            
                            Button(action: {
                                print ("clicked")
                            }, label: {
                                HStack {
                                    Text(task.taskName).foregroundColor(.black).lineLimit(1).frame(width: 180.0, alignment: .leading)
                                    Text(String(task.totalTime))
                                        .foregroundColor(.black).lineLimit(1).frame(width: 80.0, alignment: .trailing)
                                }
                            }).frame(width: 280.0, height: 50.0,alignment: .center).cornerRadius(10)
                        })
                        
                    }.frame(width: 360, height: 250).cornerRadius(15).colorMultiply(Color.init(red: 207/255, green: 218/255, blue: 137/255))
                    
                    NavigationLink(destination: {
                        AddTaskView()
                    }, label: {
                        Text("New Task").foregroundColor(.white).frame(width: 350.0, height: 50.0).background(Color.init(red: 33/255, green: 120/255, blue: 99/255) ).cornerRadius(10)
                    })
                
                }
                .padding(6.0)
            }.navigationBarTitle(Text("My Terrarium"), displayMode: .large).toolbar {
                NavigationLink(destination: PlantCollection(), label: {
                    Label("Collection", systemImage: "square.grid.2x2").foregroundColor(.white)
                })
                
            }
        }.accentColor(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .preferredColorScheme(.light)
    }
}
