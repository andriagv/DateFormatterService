//
//  DateFormatting.swift
//  DateFormatterServiceProtocol
//
//  Created by Apple on 10.11.24.
//

import Foundation

public protocol DateFormatterServiceProtocol {
    func convertDate(from string: String, currentFormat: String, to format: DateFormats) -> String
}
