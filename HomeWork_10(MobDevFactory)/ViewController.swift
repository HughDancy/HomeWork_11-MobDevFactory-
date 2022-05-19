//
//  ViewController.swift
//  HomeWork_10(MobDevFactory)
//
//  Created by Борис Киселев on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var imageView: UIImageView = {
        let manImage = UIImage(named: "man")
        let imageView = UIImageView(image: manImage)
        imageView.backgroundColor = .systemMint
    
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.font = .systemFont(ofSize: 22, weight: .bold)
        nameLabel.textColor = .white
        nameLabel.text = "Алексей Павлов"
        
        return nameLabel
    }()
    
    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.font = .systemFont(ofSize: 19, weight: .medium)
        statusLabel.textColor = .systemCyan
        statusLabel.text = "Установить статус"
        
        return statusLabel
    }()
    
    private lazy var onlineLabel: UILabel = {
       let onlineLabel = UILabel()
        onlineLabel.font = .systemFont(ofSize: 17, weight: .light)
        onlineLabel.textColor = .lightGray
        onlineLabel.text = "online"
    
        return onlineLabel
    }()
    
    private lazy var onlineImage: UIImageView = {
        let imageForOnline = UIImage(named: "ukulele")
        let onlineImage = UIImageView(image: imageForOnline)
        
        return onlineImage
    }()
    
    private lazy var redactButton: UIButton = {
        let redactButton = UIButton()
        redactButton.setTitle(Strings.redactButtonText, for: .normal)
        redactButton.setTitleColor(.white, for: .normal)
        redactButton.backgroundColor = .darkGray
        redactButton.clipsToBounds = true
        
        return redactButton
    }()
    
    private lazy var historyButton: UIButton = {
        let image = UIImage(named: "photo")
        let historyButton = UIButton()
        historyButton.setImage(image, for: .normal)
        historyButton.configuration?.imagePlacement = .top
        historyButton.setTitle("История", for: .normal)
        historyButton.backgroundColor = .black
        historyButton.setTitleColor(.systemCyan, for: .normal)
        historyButton.configuration?.imagePlacement = .top
        
        
        return historyButton
    }()
    
    
    
// MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupHierarchy()
        setupLayout()
        setupView()

    }

// MARK: - Settings

    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(nameLabel)
        view.addSubview(statusLabel)
        view.addSubview(onlineLabel)
        view.addSubview(onlineImage)
        view.addSubview(redactButton)
        view.addSubview(historyButton)
        
    }
    
    
    private func setupLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 1).isActive = true
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 55).isActive = true
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 21).isActive = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 100 / 2
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15).isActive = true
        
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5).isActive = true
        statusLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15).isActive = true
        
        onlineLabel.translatesAutoresizingMaskIntoConstraints = false
        onlineLabel.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 5).isActive = true
        onlineLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15).isActive = true
        
        onlineImage.translatesAutoresizingMaskIntoConstraints = false
        onlineImage.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 5).isActive = true
        onlineImage.leftAnchor.constraint(equalTo: onlineLabel.rightAnchor, constant: 5).isActive = true
        onlineImage.widthAnchor.constraint(equalToConstant: 15).isActive = true
        onlineImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        redactButton.translatesAutoresizingMaskIntoConstraints = false
        redactButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15).isActive = true
        redactButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 21).isActive = true
        redactButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -21).isActive = true
        redactButton.layer.masksToBounds = true
        redactButton.layer.cornerRadius = 21 * 0.5
        
        historyButton.translatesAutoresizingMaskIntoConstraints = false
        historyButton.topAnchor.constraint(equalTo: redactButton.bottomAnchor, constant: 10).isActive = true
        historyButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        
    }
    
    private func setupView() {
        view.backgroundColor = .black
        
    }
    
// MARK: - Private methods
    
   
    
}

// MARK: - Constants
    
extension ViewController {
    
    enum Metric {
        
    }

    enum Strings {
        static let redactButtonText: String = "Редактировать"
    }
}

