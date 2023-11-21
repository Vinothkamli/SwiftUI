//
//  DatePickerBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by TechnoTackle on 03/09/23.
//

import SwiftUI

struct DatePickerBootCamp: View {
    
    @State var selectDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack {
            DatePicker("Select date", selection: $selectDate, in: startingDate...endingDate, displayedComponents: [.date])
                .accentColor(.red)
                .datePickerStyle(.automatic)
            Text(dateFormatter.string(from: selectDate))
        }
    }
}

struct DatePickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootCamp()
    }
}
