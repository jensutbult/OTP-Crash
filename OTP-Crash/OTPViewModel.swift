//
//  OTPViewModel.swift
//  OTP-Crash
//
//  Created by Jens Utbult on 2021-12-01.
//

import Foundation
import YubiKit


class OTPViewModel: ObservableObject {
    
    @Published private(set) var errorMessage: String?
    @Published private(set) var token: String?

    func startOTP() {
        YubiKitManager.shared.otpSession.requestOTPToken { token, error in
            self.errorMessage = error?.localizedDescription
            self.token = token?.value
        }
    }
    
}
