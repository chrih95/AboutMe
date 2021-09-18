//
//  AboutMeViewController.swift
//  AboutMe
//
//  Created by Christian on 9/5/21.
//

import Foundation
import UIKit

class AboutMeViewController: UIViewController {
    override func viewDidLoad() {
        view = DetailView(buttonAction: { [weak self] in
            self?.displayHelloAlert()
        })
        
        view.backgroundColor = .white
    }
    
    private func displayHelloAlert() {
        let helloAlert = UIAlertController(title: nil, message: "Hi! Nice to meet you!", preferredStyle: .alert)
        helloAlert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(helloAlert, animated: true, completion: nil)
    }
}
