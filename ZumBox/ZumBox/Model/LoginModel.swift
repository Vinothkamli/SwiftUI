//
//  LoginModel.swift
//  ZumBox
//
//  Created by apple on 08/01/23.
//

import Foundation
import SwiftUI


// MARK: - LoginResponse
struct LoginResponse: Codable {
    let success: Bool
    let message: String
    let parameters: Parameters
}

// MARK: - Parameters
struct Parameters: Codable {
    let is_new_user: Int
    let customer_details_id: Int
    let message: String
}

