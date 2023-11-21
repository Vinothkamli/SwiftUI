//
//  ProgressBar.swift
//  Quiz
//
//  Created by Apple - 1 on 18/12/22.
//

import SwiftUI

struct ProgressBar: View {
    var progressBar: CGFloat
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color("BgColor"))
                .cornerRadius(10)
            Rectangle()
                .frame(width: progressBar, height: 4)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
            
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progressBar: 100)
    }
}
