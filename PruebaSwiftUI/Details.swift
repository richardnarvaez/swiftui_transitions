//
//  Details.swift
//  PruebaSwiftUI
//
//  Created by Richard Narvaez on 3/3/21.
//


import SwiftUI

struct DetailsView: View {
    var namespace: Namespace.ID
    
    var body: some View {
        VStack{
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
                
            }.frame(maxWidth:.infinity, maxHeight: 500)
            .background(Color.blue)
            .cornerRadius(0)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .matchedGeometryEffect(id: "card", in: namespace)
            
            Text("Esto es un texto de ejemplo para la descripcion")
            
            Spacer()
           
            
        }.ignoresSafeArea()
    }
}

struct DetailsView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        DetailsView(namespace: namespace)
            .previewDevice("iPhone 11 Pro Max")
    }
}
