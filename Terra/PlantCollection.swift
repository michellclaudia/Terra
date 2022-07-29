//
//  CollectionView.swift
//  Terra
//
//  Created by Michelle Pricilla on 28/07/22.
//

import SwiftUI

struct PlantCollection: View {
    var body: some View {
        ZStack {
            Image("Background").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
            
            VStack(spacing: 8.0) {

                Image("Terrarium").resizable().aspectRatio(contentMode: .fit).padding(.vertical).frame(width: 250.0)
                Spacer().frame(height: 30)
                Text("Plants")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(width: 350.0, alignment: .leading)
                VStack{
                    
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Image("Plant2").resizable().frame(width: 80, height: 80, alignment: .leading).background(Color.white).cornerRadius(10)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image("Plant3").resizable().frame(width: 80, height: 80, alignment: .leading).background(Color.white).cornerRadius(10)
                        })
                        Button(action: {
                            
                        }, label: {
                            Image("Plant1").resizable().frame(width: 80, height: 80, alignment: .leading).background(Color.white).cornerRadius(10)
                        })
                        Image("TaskHistoryBackground").resizable().frame(width: 80, height: 80, alignment: .leading).cornerRadius(10)
                        
                    }
                    
                    HStack{
                        Image("TaskHistoryBackground").resizable().frame(width: 80, height: 80, alignment: .leading).cornerRadius(10)
                        Image("TaskHistoryBackground").resizable().frame(width: 80, height: 80, alignment: .leading).cornerRadius(10)
                        Image("TaskHistoryBackground").resizable().frame(width: 80, height: 80, alignment: .leading).cornerRadius(10)
                        Image("TaskHistoryBackground").resizable().frame(width: 80, height: 80, alignment: .leading).cornerRadius(10)
                    }
                    
                    HStack{
                        Image("TaskHistoryBackground").resizable().frame(width: 80, height: 80, alignment: .leading).cornerRadius(10)
                        Image("TaskHistoryBackground").resizable().frame(width: 80, height: 80, alignment: .leading).cornerRadius(10)
                        Image("TaskHistoryBackground").resizable().frame(width: 80, height: 80, alignment: .leading).cornerRadius(10)
                        Image("TaskHistoryBackground").resizable().frame(width: 80, height: 80, alignment: .leading).cornerRadius(10)
                        
                    }
                    
                }
                
                
            }
        }.navigationBarTitle(Text("Collection"), displayMode: .inline)
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        PlantCollection()
    }
}
