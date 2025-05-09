//
//  DetaySayfa.swift
//  listeleme
//
//  Created by  on 9.05.2025.
//

import SwiftUI

struct DetaySayfa: View {
    
    @State var listItem = Data()
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.navigationTitle("İlan")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetaySayfa()
}
