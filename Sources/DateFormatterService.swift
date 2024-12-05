//
//  DateFormatterService.swift
//  FormattingModule
//
//  Created by Apple on 10.11.24.
//

import Foundation


public enum DateFormats: String {
    case shortDate = "dd.MM.yyyy"
    case mediumDate = "dd MMM yyyy"
    case longDate = "dd MMMM yyyy"
    case dayMonthYear = "EEEE, MMM d, yyyy"
    case hourMinute = "HH:mm"
    case hourMinuteAMPM = "hh:mm a"
    case fullDateTime = "yyyy-MM-dd HH:mm:ss"
    case iso8601 = "yyyy-MM-dd'T'HH:mm:ssZ"
    case detailedDate = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    
    public var format: String {
        return self.rawValue
    }
}



public final class DateFormatterService: DateFormatterServiceProtocol {
    
    public init() { }
    
    public func convertDate(from string: String, currentFormat: String, to format: DateFormats) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = currentFormat
        
        guard let date = dateFormatter.date(from: string) else {
            return "Invalid Date"
        }
        
        dateFormatter.dateFormat = format.format
        return dateFormatter.string(from: date)
    }
}

