//
//  DetailView.swift
//  AboutMe
//
//  Created by Christian on 9/5/21.
//

import Foundation
import UIKit

class DetailView: UIView {
    
    let profileImageWithNameView: ProfileImageWithNameView = {
        let profileImageWithNameView = ProfileImageWithNameView()
        profileImageWithNameView.translatesAutoresizingMaskIntoConstraints = false
        return profileImageWithNameView
    }()
    
    init() {
        super.init(frame: .zero)
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        setUpProfileView()
    }
    
    private func setUpProfileView() {
        guard let profileImage = UIImage(named: "Christian") else {
            print("Profile image unexpectedly return nil")
            return
        }
        
        profileImageWithNameView.updateView(image: profileImage, name: "Christian Hawkes", pronouns: "He/Him/His")
        
        addSubview(profileImageWithNameView)
        
        NSLayoutConstraint.activate([
            profileImageWithNameView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            profileImageWithNameView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            profileImageWithNameView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            profileImageWithNameView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3)
        ])
    }
    
}
