//
//  InfoView.swift
//  LukeCard
//
//  Created by Luke on 7/7/22.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 45)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.20, green: 0.60, blue: 0.86, opacity: 1.00))
                Text(text)
                    .font(Font.custom("Pacifico-Regular", size: 18))
                    .foregroundColor(Color(red: 0.20, green: 0.60, blue: 0.86, opacity: 1.00))
                    .padding()
                
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
