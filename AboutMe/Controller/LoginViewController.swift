//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//

import UIKit

class LoginViewController: UIViewController {
    let blueView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        view.layer.cornerRadius = 40
        return view
    }()
    
    let helloWorldLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello, World"
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    let submitButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 40
        return button
    }()
    
    let labelOne: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Label One"
        label.textColor = .systemPink
        return label
    }()
    
    let labelTwo: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Label Two"
        label.textColor = .green
        return label
    }()
    
    let labelThree: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Label Three"
        label.textColor = .orange
        return label
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 10
        return stackView
    }()
    
    //MARK: - Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setUpUI()
        
    }
    
    private func setUpUI(){
        setUpBlueLabelContainer()
        setUpSubmitButton()
        setUpLabels()
        
    }
    
    private func setUpBlueLabelContainer() {
        //this is a comment
        view.addSubview(blueView)
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            blueView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        blueView.addSubview(helloWorldLabel) //adds label to blue view
        
        NSLayoutConstraint.activate([
            helloWorldLabel.centerXAnchor.constraint(equalTo: blueView.centerXAnchor),
            helloWorldLabel.centerYAnchor.constraint(equalTo: blueView.centerYAnchor)
        ])
    }
    
    private func setUpSubmitButton() {
        view.addSubview(submitButton)
        
        NSLayoutConstraint.activate([
            submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            submitButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 10),
            submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            submitButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/8)
        ])
    }
    
    private func setUpLabels() {
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 40),
            stackView.leadingAnchor.constraint(equalTo: blueView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: blueView.trailingAnchor)
        ])
        
        stackView.addArrangedSubview(labelOne)
        stackView.addArrangedSubview(labelTwo)
        stackView.addArrangedSubview(labelThree)
        
        stackView.backgroundColor = .yellow
        labelOne.backgroundColor = .blue
        labelTwo.backgroundColor = .purple
        labelThree.backgroundColor = .gray
    }

}

