//
//  ViewController.swift
//  HomeWork_10(MobDevFactory)
//
//  Created by Борис Киселев on 17.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Subview's
    
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
        nameLabel.text = Strings.nameLabelText
        
        return nameLabel
    }()
    
    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.font = .systemFont(ofSize: 19, weight: .medium)
        statusLabel.textColor = .systemCyan
        statusLabel.text = Strings.statusLabel
        
        return statusLabel
    }()
    
    private lazy var onlineButton = UIButton()
    
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

    // MARK: - Stackview's
    
    private lazy var profileStackView: UIStackView = {
       let stackVIew = UIStackView()
        stackVIew.axis = .horizontal
        stackVIew.spacing = 20
        
        return stackVIew
    }()
    
    private lazy var nameAndStatusStackview: UIStackView = {
        let nameAndStatusStackview = UIStackView()
        nameAndStatusStackview.axis = .vertical
        nameAndStatusStackview.spacing = 5
        nameAndStatusStackview.alignment = .leading
        
        return nameAndStatusStackview
    }()
    
    private lazy var buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        
        return stackView
    }()
    
    private lazy var infoButtonsStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 9
        
        return stackView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        setupHierarchy()
        setupLayout()
        configurationButton()
    }
    
    // MARK: - Setup Hierarchy
    
    private func setupHierarchy() {
        nameAndStatusStackview.addArrangedSubview(nameLabel)
        nameAndStatusStackview.addArrangedSubview(statusLabel)
        nameAndStatusStackview.addArrangedSubview(onlineButton)
        profileStackView.addArrangedSubview(imageView)
        profileStackView.addArrangedSubview(nameAndStatusStackview)
        view.addSubview(profileStackView)
        view.addSubview(redactButton)
        buttonsStackView.addArrangedSubview(historyButton)
        buttonsStackView.addArrangedSubview(recordButton)
        buttonsStackView.addArrangedSubview(photoButton)
        buttonsStackView.addArrangedSubview(clipButton)
        view.addSubview(buttonsStackView)
        infoButtonsStackView.addArrangedSubview(houseButton)
        infoButtonsStackView.addArrangedSubview(followersButton)
        infoButtonsStackView.addArrangedSubview(workButton)
        infoButtonsStackView.addArrangedSubview(presentButton)
        infoButtonsStackView.addArrangedSubview(infoButton)
        view.addSubview(infoButtonsStackView)
    }
    
    //MARK: - Configure Button
    
    private func configurationButton () {
        onlineButton.configuration = .tinted()
        onlineButton.configuration?.baseBackgroundColor = .black
        onlineButton.configuration?.title = Strings.onlineLabel
        onlineButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 17)
            return outgoing
        }
        onlineButton.configuration?.baseForegroundColor = .lightGray
        onlineButton.configuration?.image = UIImage(systemName: "iphone.gen1")
        onlineButton.configuration?.imagePlacement = .leading
        onlineButton.configuration?.imagePadding = 5
        onlineButton.isUserInteractionEnabled = false
        
        historyButton.configuration = .tinted()
        historyButton.configuration?.baseBackgroundColor = .black
        historyButton.configuration?.title = Strings.historyButton
        historyButton.configuration?.titleAlignment = .center
        historyButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 12)
            return outgoing
        }
        historyButton.configuration?.baseForegroundColor = .systemCyan
        historyButton.configuration?.image = UIImage(named: "photo")
        historyButton.configuration?.imagePlacement = .top
        historyButton.configuration?.imagePadding = 9
        
        recordButton.configuration = .tinted()
        recordButton.configuration?.baseBackgroundColor = .black
        recordButton.configuration?.title = Strings.recrodButton
        recordButton.configuration?.titleAlignment = .center
        recordButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 12)
            return outgoing
        }
        recordButton.configuration?.baseForegroundColor = .systemCyan
        recordButton.configuration?.image = UIImage(named: "record")
        recordButton.configuration?.imagePlacement = .top
        recordButton.configuration?.imagePadding = 6
        
        photoButton.configuration = .tinted()
        photoButton.configuration?.baseBackgroundColor = .black
        photoButton.configuration?.title = Strings.photoButton
        photoButton.configuration?.titleAlignment = .center
        photoButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 12)
            return outgoing
        }
        photoButton.configuration?.baseForegroundColor = .systemCyan
        photoButton.configuration?.image = UIImage(named: "album")
        photoButton.configuration?.imagePlacement = .top
        photoButton.configuration?.imagePadding = 12
        
        clipButton.configuration = .tinted()
        clipButton.configuration?.baseBackgroundColor = .black
        clipButton.configuration?.title = Strings.clipButton
        clipButton.configuration?.titleAlignment = .center
        clipButton.configuration?.titleTextAttributesTransformer = UIConfigurationTextAttributesTransformer { incoming in
            var outgoing = incoming
            outgoing.font = UIFont.systemFont(ofSize: 12)
            return outgoing
        }
        clipButton.configuration?.baseForegroundColor = .systemCyan
        clipButton.configuration?.image = UIImage(named: "clip")
        clipButton.configuration?.imagePlacement = .top
        clipButton.configuration?.imagePadding = 13
        
        houseButton.configuration = .tinted()
        houseButton.configuration?.baseBackgroundColor = .black
        houseButton.configuration?.title = Strings.houseButton
        houseButton.configuration?.baseForegroundColor = .lightGray
        houseButton.configuration?.image = UIImage(named: "house")
        houseButton.configuration?.imagePlacement = .leading
        houseButton.configuration?.imagePadding = 10
        
        followersButton.configuration = .tinted()
        followersButton.configuration?.baseBackgroundColor = .black
        followersButton.configuration?.title = Strings.followersButton
        followersButton.configuration?.baseForegroundColor = .lightGray
        followersButton.configuration?.image = UIImage(named: "followers")
        followersButton.configuration?.imagePlacement = .leading
        followersButton.configuration?.imagePadding = 10
        
        workButton.configuration = .tinted()
        workButton.configuration?.baseBackgroundColor = .black
        workButton.configuration?.title = Strings.workButton
        workButton.configuration?.baseForegroundColor = .systemCyan
        workButton.configuration?.image = UIImage(named: "work")
        workButton.configuration?.imagePlacement = .leading
        workButton.configuration?.imagePadding = 10
        
        presentButton.configuration = .tinted()
        presentButton.configuration?.baseBackgroundColor = .black
        presentButton.configuration?.title = Strings.presentButton
        presentButton.configuration?.baseForegroundColor = .systemIndigo
        presentButton.configuration?.image = UIImage(named: "present")
        presentButton.configuration?.imagePlacement = .leading
        presentButton.configuration?.imagePadding = 10
        
        infoButton.configuration = .tinted()
        infoButton.configuration?.baseBackgroundColor = .black
        infoButton.configuration?.title = Strings.infoButton
        infoButton.configuration?.baseForegroundColor = .white
        infoButton.configuration?.image = UIImage(named: "info")
        infoButton.configuration?.imagePlacement = .leading
        infoButton.configuration?.imagePadding = 10
    }
    
    //MARK: - Setup Layout
    
    private func setupLayout() {
        imageView.layer.masksToBounds = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 1).isActive = true
        imageView.layer.cornerRadius = 100 / 2
        
        profileStackView.translatesAutoresizingMaskIntoConstraints = false
        profileStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        profileStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true

        redactButton.translatesAutoresizingMaskIntoConstraints = false
        redactButton.topAnchor.constraint(equalTo: profileStackView.bottomAnchor, constant: 15).isActive = true
        redactButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 21).isActive = true
        redactButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -21).isActive = true
        redactButton.layer.masksToBounds = true
        redactButton.layer.cornerRadius = 21 * 0.5
        
        buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonsStackView.topAnchor.constraint(equalTo: redactButton.bottomAnchor, constant: 15).isActive = true
        buttonsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        buttonsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        
        infoButtonsStackView.translatesAutoresizingMaskIntoConstraints = false
        infoButtonsStackView.topAnchor.constraint(equalTo: buttonsStackView.bottomAnchor, constant: 10).isActive = true
        infoButtonsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
    }
}

// MARK: - Extension

extension ViewController {
    
    enum Strings {
        static let redactButtonText: String = "Редактировать"
        static let nameLabelText: String = "Алексей Павлов"
        static let statusLabel: String = "Установить статус"
        static let onlineLabel: String = "online"
        static let historyButton: String = "История"
        static let recrodButton: String = "Запись"
        static let photoButton: String = "Фото"
        static let clipButton: String = "Клип"
        static let houseButton: String = "Город: Москва"
        static let followersButton: String = "35 подписчиков"
        static let workButton: String = "Указать место работы"
        static let presentButton: String = "Получить подарок >"
        static let infoButton: String = "Подробная информация"
    }
}

