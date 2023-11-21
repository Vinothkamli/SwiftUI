//
//  Extension.swift
//  Quiz
//
//  Created by Apple - 1 on 18/12/22.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
