//
//  SplashScreen.swift
//  LoginWithBiometrics
//
//  Created by Rahul Nimje on 09/04/23.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        
        ZStack{
            Color("Pink")
                .edgesIgnoringSafeArea(.all)
            
            Title()
        }
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

