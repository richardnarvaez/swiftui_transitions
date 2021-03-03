//
//  ContentView.swift
//  PruebaSwiftUI
//
//  Created by Richard Narvaez on 3/3/21.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack{
            if (!show) {
                VStack{
                Text("Today").font(.largeTitle).bold()
                    .frame(maxWidth:.infinity, alignment: .leading)
                
                VStack{
                    Text("App off the day".uppercased())
                        .font(.largeTitle).bold()
                        .frame(maxWidth: 160, maxHeight: .infinity, alignment: .bottomLeading)
                        .frame(maxWidth: .infinity, alignment: .leading).padding()
                        .matchedGeometryEffect(id: "title", in: namespace)
                   
                    Spacer()
                    HStack{
                        
                        Image("https://cdn.logo.com/hotlink-ok/logo-social.png")
                            .frame(width: 36, height: 36)
                            .background(Color.white)
                            .cornerRadius(28)
            
                        VStack(alignment: .leading){
                            Text("Esto es un titulo").font(.body).bold()
                            Text("Hello, world!").font(.caption)
                        }
                        .foregroundColor(.white)
                        Spacer()
                        
                    }.frame(maxWidth: .infinity).padding(12)
                    .background(Color.black.opacity(0.6))
                    
                }.frame(maxWidth:.infinity, maxHeight: 335)
                .background(Color.blue)
                .cornerRadius(28)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .matchedGeometryEffect(id: "card", in: namespace)
                    
                Spacer()
                    
                }.padding(16)
            }else{
                DetailsView(namespace: namespace)
            }
           
            
        }.animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/)
        .onTapGesture {
            show.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro Max")
    }
}
