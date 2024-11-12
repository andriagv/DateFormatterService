//
//  DateFormatting.swift
//  DateFormatterService
//
//  Created by Apple on 10.11.24.
//

import Foundation

public protocol DateFormatting {
    func formatDate(_ dateString: String) -> String
}
