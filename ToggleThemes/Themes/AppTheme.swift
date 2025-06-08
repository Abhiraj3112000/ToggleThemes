//
//  AppTheme.swift
//  ToggleThemes
//
//  Created by Abhiraj Chatterjee on 08/06/25.
//

import SwiftUI

protocol AppTheme {
    var primary: Color { get }
    var background: Color { get }
    var surface: Color { get }
}
