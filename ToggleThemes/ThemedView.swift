//
//  ThemedView.swift
//  ToggleThemes
//
//  Created by Abhiraj Chatterjee on 08/06/25.
//

import SwiftUI

struct ThemedView: View {
    @EnvironmentObject var themeProvider: ThemeProvider
    
    // Define the available themes
    let themes: [ThemeType] = [.light, .dark, .funky]

    var body: some View {
        let theme = themeProvider.theme;
        
        VStack(spacing: 20) {
            Text("Hello, User!")
                .padding()
                .foregroundColor(theme.primary)
                .background(theme.surface)
                .cornerRadius(10)
            
            Button("Change Theme") {
                // Choose a random theme
                var newTheme: ThemeType
                repeat {
                    newTheme = themes.randomElement()!
                } while newTheme == themeProvider.currentThemeType

                themeProvider.setTheme(newTheme)
                print("Theme changed to: \(newTheme)")
            }
            .padding()
            .foregroundColor(theme.primary)
            .background(theme.surface)
            .cornerRadius(10)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(theme.background)
        .ignoresSafeArea()
    }
}

#Preview {
    ThemedView()
            .environmentObject(ThemeProvider())
}
