//
//  ImageWithLabelStackView.swift
//  AboutMe
//
//  Created by Christian on 9/6/21.
//

import Foundation
import UIKit

class ImageWithLabelStack: UIStackView {
    let imageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image?.withRenderingMode(.alwaysTemplate)
        image.tintColor = UIColor(named: "MaroonColor")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .lightGray
        label.text = "@christianinva"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() {
        axis = .horizontal
        distribution = .fill
        spacing = 8
        
        setUpImageView()
        setUpTextLabel()
    }
    
    private func setUpImageView() {
        addArrangedSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: 30),
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor)
        ])
    }
    
    private func setUpTextLabel() {
        addArrangedSubview(textLabel)
    }
    
    func updateView(withImage image: UIImage, andText text: String) {
        
    }
}
