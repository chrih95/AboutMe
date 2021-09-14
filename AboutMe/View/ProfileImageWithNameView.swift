//
//  ProfileImageWithNameView.swift
//  AboutMe
//
//  Created by Christian on 9/5/21.
//

import Foundation
import UIKit

class ProfileImageWithNameView: UIView {
    
    // MARK: - Initialize Properties
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .blue
        return image
    }()
    
    let nameView: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        name.textColor = .white
        name.textAlignment = .center
        return name
    }()
    
    let pronounsView: UILabel = {
       let pronouns = UILabel()
        pronouns.translatesAutoresizingMaskIntoConstraints = false
        pronouns.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        pronouns.textColor = .lightGray
        pronouns.textAlignment = .center
        return pronouns
    }()
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    
    private func setUpUI() {
        backgroundColor = UIColor(named: "MaroonColor")
        
        setUpImageView()
        setUpNameView()
        setUpPronounsView()
    }
    
    private func setUpImageView() {
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.widthAnchor.constraint(equalTo: heightAnchor),
            imageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.65)
        ])
    }
    
    private func setUpNameView() {
        addSubview(nameView)
        
        NSLayoutConstraint.activate([
            nameView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            nameView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func setUpPronounsView() {
        addSubview(pronounsView)
        
        NSLayoutConstraint.activate([
            pronounsView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 10),
            pronounsView.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func updateView(image: UIImage, name: String, pronouns: String) {
        imageView.image = image
        nameView.text = name
        pronounsView.text = pronouns
    }
}
