//
//  ContentView.swift
//  Shared
//
//  Created by Luke on 7/7/22.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.20, green: 0.60, blue: 0.86, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center) {
                Image("myFace")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Luke Switzer")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .fontWeight(.bold)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Text("Mobile Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                Divider()
                InfoView(text: "lukeswitz", imageName: "at.circle")
                InfoView(text: "luke@rootdowndigital.com", imageName: "phone.fill")

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


