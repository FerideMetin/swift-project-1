//
//  ContentView.swift
//  FirstProject_29Jan
//
//  Created by Feride Metin on 29.01.2024.
//


//


import SwiftUI

struct ContentView: View {
    
    @State var kg = "" // Textfield değişken vermek için.
    @State var sonuc = ""
    
    var body: some View {
        VStack {

            Text("Aydaki Tartı").font(.title).fontWeight(.bold).foregroundColor(.gray).padding(20)
        
            Text("Dünyada kaç kilosunuz ?").foregroundColor(.gray).padding(20)
            
            TextField("Kilogram", text: $kg).foregroundColor(.white).padding(10).border(Color.gray).cornerRadius(10).frame(width: 200)
            
            
            Button("Hesapla") {
                if var weight = Double(kg) {
                                    var result = weight / 6.0
                                    sonuc = String(result)
                }
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.gray).padding(50)
            
            Text("\(sonuc)")
            .padding()
            
            Image("moon")
                .resizable() // yeniden boyutlandırma modu
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .topLeading)

        }
        
    }
}

#Preview {
    ContentView()
}
