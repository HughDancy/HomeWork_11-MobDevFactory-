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
        let imageForOnline = UIImage(named: "online")
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
    
    private lazy var historyButton = UIButton()
    private lazy var recordButton = UIButton()
    private lazy var photoButton = UIButton()
    private lazy var clipButton = UIButton()
    
    private lazy var houseButton = UIButton()
    private lazy var followersButton = UIButton()
    private lazy var workButton = UIButton()
    private lazy var presentButton = UIButton()
    private lazy var infoButton = UIButton()
    
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
        view.addSubview(recordButton)
        view.addSubview(photoButton)
        view.addSubview(clipButton)
        view.addSubview(houseButton)
        view.addSubview(followersButton)
        view.addSubview(workButton)
        view.addSubview(presentButton)
        view.addSubview(infoButton)
        
        
        configurationButton()
        
    }
    
    private func configurationButton () {
        historyButton.configuration = .tinted()
        historyButton.configuration?.baseBackgroundColor = .black
        historyButton.configuration?.title = "История"
        historyButton.configuration?.baseForegroundColor = .systemCyan
        historyButton.configuration?.image = UIImage(named: "photo")
        historyButton.configuration?.imagePlacement = .top
        historyButton.configuration?.imagePadding = 9
        
        recordButton.configuration = .tinted()
        recordButton.configuration?.baseBackgroundColor = .black
        recordButton.configuration?.title = "Запись"
        recordButton.configuration?.baseForegroundColor = .systemCyan
        recordButton.configuration?.image = UIImage(named: "record")
        recordButton.configuration?.imagePlacement = .top
        recordButton.configuration?.imagePadding = 6
        
        photoButton.configuration = .tinted()
        photoButton.configuration?.baseBackgroundColor = .black
        photoButton.configuration?.title = "Фото"
        photoButton.configuration?.baseForegroundColor = .systemCyan
        photoButton.configuration?.image = UIImage(named: "album")
        photoButton.configuration?.imagePlacement = .top
        photoButton.configuration?.imagePadding = 12
        
        clipButton.configuration = .tinted()
        clipButton.configuration?.baseBackgroundColor = .black
        clipButton.configuration?.title = "Клип"
        clipButton.configuration?.baseForegroundColor = .systemCyan
        clipButton.configuration?.image = UIImage(named: "clip")
        clipButton.configuration?.imagePlacement = .top
        clipButton.configuration?.imagePadding = 13
        
        houseButton.configuration = .tinted()
        houseButton.configuration?.baseBackgroundColor = .black
        houseButton.configuration?.title = "Город: Москва"
        houseButton.configuration?.baseForegroundColor = .lightGray
        houseButton.configuration?.image = UIImage(named: "house")
        houseButton.configuration?.imagePlacement = .leading
        houseButton.configuration?.imagePadding = 10
        
        followersButton.configuration = .tinted()
        followersButton.configuration?.baseBackgroundColor = .black
        followersButton.configuration?.title = "35 подписчиков"
        followersButton.configuration?.baseForegroundColor = .lightGray
        followersButton.configuration?.image = UIImage(named: "followers")
        followersButton.configuration?.imagePlacement = .leading
        followersButton.configuration?.imagePadding = 10
        
        workButton.configuration = .tinted()
        workButton.configuration?.baseBackgroundColor = .black
        workButton.configuration?.title = "Указать место работы"
        workButton.configuration?.baseForegroundColor = .systemCyan
        workButton.configuration?.image = UIImage(named: "work")
        workButton.configuration?.imagePlacement = .leading
        workButton.configuration?.imagePadding = 10
        
        presentButton.configuration = .tinted()
        presentButton.configuration?.baseBackgroundColor = .black
        presentButton.configuration?.title = "Получить подарок >"
        presentButton.configuration?.baseForegroundColor = .systemIndigo
        presentButton.configuration?.image = UIImage(named: "present")
        presentButton.configuration?.imagePlacement = .leading
        presentButton.configuration?.imagePadding = 10
        
        infoButton.configuration = .tinted()
        infoButton.configuration?.baseBackgroundColor = .black
        infoButton.configuration?.title = "Подробная информация"
        infoButton.configuration?.baseForegroundColor = .white
        infoButton.configuration?.image = UIImage(named: "info")
        infoButton.configuration?.imagePlacement = .leading
        infoButton.configuration?.imagePadding = 10
        
        
        
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
        historyButton.topAnchor.constraint(equalTo: redactButton.bottomAnchor, constant: 15).isActive = true
        historyButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        
        recordButton.translatesAutoresizingMaskIntoConstraints = false
        recordButton.topAnchor.constraint(equalTo: redactButton.bottomAnchor, constant: 15).isActive = true
        recordButton.leftAnchor.constraint(equalTo: historyButton.rightAnchor, constant: 20).isActive = true
        
        photoButton.translatesAutoresizingMaskIntoConstraints = false
        photoButton.topAnchor.constraint(equalTo: redactButton.bottomAnchor, constant: 15).isActive = true
        photoButton.leftAnchor.constraint(equalTo: recordButton.rightAnchor, constant: 20).isActive = true
        
        clipButton.translatesAutoresizingMaskIntoConstraints = false
        clipButton.topAnchor.constraint(equalTo: redactButton.bottomAnchor, constant: 15).isActive = true
        clipButton.leftAnchor.constraint(equalTo: photoButton.rightAnchor, constant: 20).isActive = true
        
    
        houseButton.translatesAutoresizingMaskIntoConstraints = false
        houseButton.topAnchor.constraint(equalTo: historyButton.bottomAnchor, constant: 50).isActive = true
        houseButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        
        followersButton.translatesAutoresizingMaskIntoConstraints = false
        followersButton.topAnchor.constraint(equalTo: houseButton.bottomAnchor, constant: 7).isActive = true
        followersButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        
        workButton.translatesAutoresizingMaskIntoConstraints = false
        workButton.topAnchor.constraint(equalTo: followersButton.bottomAnchor, constant: 7).isActive = true
        workButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        
        presentButton.translatesAutoresizingMaskIntoConstraints = false
        presentButton.topAnchor.constraint(equalTo: workButton.bottomAnchor, constant: 7).isActive = true
        presentButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        
        infoButton.translatesAutoresizingMaskIntoConstraints = false
        infoButton.topAnchor.constraint(equalTo: presentButton.bottomAnchor, constant: 7).isActive = true
        infoButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        
        
        
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
    
    enum Size {
        static let houseSize = CGSize(width: 20, height: 20)
    }
}

