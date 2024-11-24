//
//  DateFormatting.swift
//  DateFormatterService
//
//  Created by Apple on 10.11.24.
//

import Foundation

public protocol CustomDateFormatterProtocol {
    func formattedDate(from: String, inputFormat: String, outputFormat: String) -> String
}
