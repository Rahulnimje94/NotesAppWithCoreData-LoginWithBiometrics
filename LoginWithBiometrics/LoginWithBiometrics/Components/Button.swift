//
//  Button.swift
//  LoginWithBiometrics
//
//  Created by Rahul Nimje on 09/04/23.
//

import SwiftUI

struct Button: View {
    
    var image: String?
    var showImage = true
    var text: String
    
    var body: some View {
        
        HStack{
            if showImage {
                Image(systemName: image ?? "person.fill")
            }
            
            Text(text)
                .font(.body)
                .fontWeight(.bold)
        }
        .padding()
        .background(Color("Red"))
        .cornerRadius(30)
        .foregroundColor(.white)
        
    }
    
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button(image: "faceid", text: "Log in with FaceID")
    }
}

