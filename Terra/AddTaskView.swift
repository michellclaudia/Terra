//
//  AddTaskView.swift
//  Terra
//
//  Created by Michelle Pricilla on 28/07/22.
//

import SwiftUI

struct AddTaskView: View {
    @State private var taskName = ""
    @State private var timerSelection:String = "Pomodoro"
    
    
    var timerOptions: [String] = [
        "Pomodoro", "Short Break", "Long Break"
    ]
    
    
    
    var body: some View {
        
        VStack {
            Text("New Task")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 330.0, alignment: .leading)
            TextField("Enter your task..", text: $taskName).frame(width: 330, height: 50, alignment: .center).cornerRadius(10)
            HStack{
                Button(action: {
                    
                }, label: {
                    Text("Technical").foregroundColor(.white).frame(width: 90.0, height: 30.0).background(Color.init(red: 33/255, green: 120/255, blue: 99/255)).cornerRadius(10
                    )
                })
                
                Button(action: {
                    
                }, label: {
                    Text("Design").foregroundColor(.white).frame(width: 90.0, height: 30.0).background(Color.init(red: 33/255, green: 120/255, blue: 99/255)).cornerRadius(10
                    )
                })
                
                Button(action: {
                    
                }, label: {
                    Text("Product").foregroundColor(.white).frame(width: 90.0, height: 30.0).background(Color.init(red: 33/255, green: 120/255, blue: 99/255)).cornerRadius(10
                    )
                })
                Button(action: {
                    
                }, label: {
                    Text("+").foregroundColor(.white).frame(width: 40.0, height: 30.0).background(Color.init(red: 33/255, green: 120/255, blue: 99/255)).cornerRadius(10
                    )
                })
            }
            
            Spacer().frame(height: 50)
            
            Text("Set Timer")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 330.0, alignment: .leading)
            
            Picker(selection: $timerSelection,label: Text("Picker"),content: {
                ForEach(timerOptions.indices){
                    index in Text(timerOptions[index]).tag(timerOptions[index])
                }
            }).frame(width: 330.0).pickerStyle(SegmentedPickerStyle())
        
            
            Picker(selection: .constant(25), label: Text("Picker"), content: {
                
                Text("1 minute").tag(1)
                Text("5 minutes").tag(5)
                Text("10 minutes").tag(10)
                Text("15 minutes").tag(15)
                Text("20 minutes").tag(20)
                Text("25 minutes").tag(25)
                Text("30 minutes").tag(30)
                Text("50 minutes").tag(50)
                
                
            }).frame(width: 330.0).pickerStyle(WheelPickerStyle())
            Spacer().frame(height: 50)
            
            NavigationLink(destination: {
                MainView()
            }, label: {
                Text("Start Task").foregroundColor(.white).frame(width: 350.0, height: 50.0).background(Color.init(red: 33/255, green: 120/255, blue: 99/255) ).cornerRadius(10)
            })
            
        }.navigationBarTitle(Text("New Task"), displayMode: .inline)
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
    }
}
