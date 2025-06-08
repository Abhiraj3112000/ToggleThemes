//
//  ToggleThemesApp.swift
//  ToggleThemes
//
//  Created by Abhiraj Chatterjee on 08/06/25.
//

import SwiftUI

@main
struct ToggleThemesApp: App {
    @StateObject var themeProvider = ThemeProvider()
    
    var body: some Scene {
        WindowGroup {
            ThemedView().environmentObject(themeProvider)
        }
    }
}
