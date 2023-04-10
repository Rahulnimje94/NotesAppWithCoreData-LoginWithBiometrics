//
//  Title.swift
//  LoginWithBiometrics
//
//  Created by Rahul Nimje on 09/04/23.
//

import SwiftUI

struct Title: View {
    var body: some View {
        Text("Login with Biometrics")
            .font(Font.system(size: 40, weight: .regular))
            .foregroundColor(Color("Red"))
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title()
    }
}

