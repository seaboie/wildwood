//
//  ContentView.swift
//  wildwood
//
//  Created by krit on 3/7/2566 BE.
//

import SwiftUI

struct ContentView: View {
    
    let columnLayout = Array(repeating: GridItem(.flexible()), count: 3)
    var body: some View {
        
        VStack {
            
            VStack {
                HStack {
                    Spacer()
                    Image("logo")
                        .resizable()
                        .frame(width: 70, height: 70)
                    
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("WILD WOOD HANSA")
                            .font(.title2)
                        
                        
                        Text("BEACH FITNESS")
                            .font(.subheadline)
                    }
                    Spacer()
                }
                
                Image("main")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                
            }
            
            .fontWeight(.bold)
            .foregroundColor(.red)
            .background(.black)
            
            ScrollView {
                LazyVGrid(columns: columnLayout, content: {
                    
                    ForEach(1...12, id: \.self) { image in
                        NavigationLink {
                            DetailView(image: image)
                        } label: {
                            Image("image\(image)")
                                .resizable()
                                .aspectRatio(1, contentMode: .fit)
                        }
                        
                    }
                })
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text("52 BAN TAI, KOH PHAGAN")
                .font(.headline)
            
            
        }
        .background(.green.opacity(0.2))
    }
    
    
}

#Preview {
    ContentView()
}
