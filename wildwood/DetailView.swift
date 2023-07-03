//
//  DetailView.swift
//  wildwood
//
//  Created by krit on 3/7/2566 BE.
//

import SwiftUI

struct DetailView: View {
    
    let image: Int
    
    var body: some View {
        
        VStack(spacing: 0) {
            
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
                .foregroundColor(.red)
                
                Spacer()
            }
            .padding(.bottom, 20)
            .frame(maxWidth: .infinity)
            .background(.black)
            
            
            Image("image\(image)")
                .resizable()
                .frame(idealWidth: .infinity)
                .aspectRatio(1.2, contentMode: .fit)
            Text("Hey")
            
            Spacer()
            
            
        }
        .background(.green.opacity(0.2))
        
    }
    
    
    
    
}


#Preview {
    DetailView(image: 1)
}
