//
//  ContentView.swift
//  OTP-Crash
//
//  Created by Jens Utbult on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = OTPViewModel()
    
    var body: some View {
        Button("Start OTP") {
            viewModel.startOTP()
        }
        Text("\(viewModel.errorMessage ?? "")\(viewModel.token ?? "")")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
