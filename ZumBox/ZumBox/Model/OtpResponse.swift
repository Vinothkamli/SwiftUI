//
//  OtpResponse.swift
//  ZumBox
//
//  Created by apple on 08/01/23.
//

import SwiftUI

// MARK: - OtpResponse
struct OtpResponse: Codable {
    let success: Bool
    let message: String
    let parameters: OtpParameters?
}

// MARK: - Parameters
struct OtpParameters: Codable {
    let customer_id: String

}
