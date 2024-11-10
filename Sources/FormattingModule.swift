//
//  File.swift
//  FormattingModule
//
//  Created by Apple on 10.11.24.
//

import Foundation

// DateFormatting.swift
public protocol DateFormatting {
    func formatDate(_ dateString: String) -> String
}

// DateFormatterService.swift
public class DateFormatterService: DateFormatting {
    public init() {}
    
    public func formatDate(_ dateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        
        if let date = dateFormatter.date(from: dateString) {
            dateFormatter.dateFormat = "EEEE, d MMM yyyy"
            return dateFormatter.string(from: date)
        } else {
            return dateString
        }
    }
}
