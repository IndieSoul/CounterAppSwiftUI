//
//  ButtonView.swift
//  CounterAppSwiftUI
//
//  Created by Luis Enrique Rosas Espinoza on 12/06/23.
//

import SwiftUI

struct ButtonView: View {
    public let action: () -> Void
    public let text: String?
    public let systemImage: String?
    
    public init(systemImage: String, action: @escaping () -> Void) {
        self.action = action
        self.text = nil
        self.systemImage = systemImage
    }
    
    public init(text: String, action: @escaping () -> Void) {
        self.action = action
        self.text = text
        self.systemImage = nil
    }
    
    var body: some View {
        Button {
            self.action()
        } label: {
            if let imageName = systemImage {
                Image(systemName: imageName)
                    .frame(width: 30, height: 30)
            }
            
            if let textToShow = text {
                Text(textToShow)
                    .frame(width: 30, height: 30)
            }
        }
        .buttonStyle(.bordered)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "+1") {
            print("1")
        }
    }
}
