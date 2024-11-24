//
//  DateFormatterService.swift
//  FormattingModule
//
//  Created by Apple on 10.11.24.
//

import Foundation
  
public final class CustomDateFormatter: CustomDateFormatterProtocol {
    public init() {}
    public func formattedDate(from dateString: String, inputFormat: String = "yyyy-MM-dd'T'HH:mm:ssZ", outputFormat: String = "EEEE, d MMMM yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = inputFormat
        guard let date = dateFormatter.date(from: dateString) else {
            return "Unknown Date"
        }
        dateFormatter.dateFormat = outputFormat
        return dateFormatter.string(from: date)
    }
}
