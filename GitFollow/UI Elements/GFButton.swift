//
//  GFButton.swift
//  GitFollow
//
//  Created by Layne Johnson on 3/21/22.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // override init for custom configuration.
        configure()
    }
    
    // Storyboard handler. This method gets called if button is initialized with Storyboard.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        // Initialize button with a frame of 0. Frame will be defined with Auto Layout.
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        
        // Use Auto Layout.
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
