//
//  AddButton.swift
//  LoginWithBiometrics
//
//  Created by Rahul Nimje on 09/04/23.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20).fill(Color("Red")).frame(width: 70.0, height: 70.0)
            Image(systemName: "pencil")
                .foregroundColor(.white)
                .font(.system(size: 20))
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}

