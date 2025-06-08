//
//  ThemeProvider.swift
//  ToggleThemes
//
//  Created by Abhiraj Chatterjee on 08/06/25.
//

import SwiftUI

enum ThemeType {
    case light, dark, funky
}

class ThemeProvider: ObservableObject {
    @Published private(set) var currentThemeType: ThemeType = .light
    @Published private(set) var theme: AppTheme = LightTheme()
    
    func setTheme(_ type: ThemeType) {
        currentThemeType = type
        switch type {
        case .light: theme = LightTheme()
        case .dark: theme = DarkTheme()
        case .funky: theme = FunkyTheme()
        }
    }
}
