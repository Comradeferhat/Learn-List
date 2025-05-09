//
//  ContentView.swift
//  listeleme
//
//  Created by on 7.05.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var aranankelime = ""
    @State private var showMenu = false
    
    var body: some View {
        
        NavigationStack {
            
            Siralama()
            
                .searchable(text: $aranankelime, prompt: "Kelime veya ilan No ile ara")
                .tint(.black)
                .onAppear {
                    UISearchBar.appearance().barTintColor = UIColor.white
                    UISearchBar.appearance().backgroundColor = UIColor.white
                    UISearchTextField.appearance().backgroundColor = UIColor.systemGray6
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            showMenu.toggle()
                        } label: {
                            Image(systemName: "line.3.horizontal.circle")
                                .foregroundColor(.white)
                        }
                    }
                    
                    ToolbarItem(placement: .topBarLeading) {
                        Text("Sahibinden")
                            .foregroundStyle(.white)
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            print("sayfa yükleniyor...")
                        } label: {
                            Image(systemName: "envelope.circle.fill")
                                .renderingMode(.original)
                        }
                        
                        Button {
                            print("sayfa yükleniyor...")
                        } label: {
                            Image(systemName: "person.circle.fill")
                                .renderingMode(.original)
                        }
                        
                        Button {
                            print("sayfa yükleniyor...")
                        } label: {
                            Image(systemName: "car.circle.fill")
                                .renderingMode(.original)
                        }
                    }
                    
                }.font(.title)
                .toolbarBackground(Color.cyan, for: .navigationBar)
                .toolbarBackgroundVisibility(.visible, for: .navigationBar)
                
                .sheet(isPresented: $showMenu){
                    VStack {
                        VStack {
                                Text("Menü")
                                    .font(.title)
                                    .padding()
                                
                                Divider()
                                
                                Button("Ayarlar") {
                                    print("Ayarlar seçildi")
                                }.padding()

                                Button("Profil") {
                                    print("Profil seçildi")
                                }.padding()

                                Button("Çıkış") {
                                    print("Çıkış yapıldı")
                                }.padding()

                                Spacer()
                            }
                            .presentationDetents([.height(250)])
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
