//
//  Siralama.swift
//  listeleme
//
//  Created by  on 9.05.2025.
//

import SwiftUI

struct Siralama: View {
    
    @State private var liste = [Data()]
    
    var body: some View {
        
        List {
            ForEach (liste) { item in
                NavigationLink(destination: DetaySayfa(listItem: item)) {
                    Satir(title: item)
                }
            }
            
            .onAppear {
                var liste2 = [Data]()
                
                let l1 = Data(id: 1, title: "Emlak", picture: "house.circle.fill")
                let l2 = Data(id: 2, title: "Vasıta", picture: "steeringwheel.circle")
                let l3 = Data(id: 3, title: "Yedek parça", picture: "car.badge.gearshape.fill")
                let l4 = Data(id: 4, title: "İkince El Ve Sıfır Alışveriş", picture: "cart.circle")
                let l5 = Data(id: 5, title: "Yepy", picture: "chevron.forward.dotted.chevron.forward")
                let l6 = Data(id: 6, title: "Ustalar Ve Hizmetler", picture: "paintbrush.fill")
                let l7 = Data(id: 7, title: "İş Makineleri & Sanayi ", picture: "truck.box.fill")
                let l8 = Data(id: 8, title: "Özel Ders Verenler", picture: "text.book.closed")
                let l9 = Data(id: 9, title: "İş İlanları", picture: "doc.text.viewfinder")
                let l10 = Data(id: 10, title: "Hayvanlar Alemi", picture: "pawprint.circle.fill")
                let l11 = Data(id: 11, title: "Yardımcı Arayanlar", picture: "stroller.fill")
                
                liste2.append(contentsOf: [l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11])
                self.liste = liste2
            }
            
        }.listStyle(.plain)
    }
}

#Preview {
    Siralama()
}
