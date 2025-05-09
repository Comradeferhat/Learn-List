//
//  Satir.swift
//  listeleme
//
//  Created by  on 9.05.2025.
//

import SwiftUI

struct Satir: View {
    
    @State var title = Data()
    
    var body: some View {
        HStack{
            
            Image(systemName: title.picture)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .foregroundColor(.blue)
                .padding(.trailing, 8)
            
            Text(title.title)
                .font(.headline)
                
            Spacer()
        }
        .padding(.vertical, 8)
        .background(RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .shadow(color: .gray.opacity(0.3), radius: 4, x: 0, y: 2))
        .padding(.horizontal, 10)
    }
        
}

#Preview {
    Satir()
}
