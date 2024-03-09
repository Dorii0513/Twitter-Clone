//
//  TweetsTalbeViewCell.swift
//  TwitterClone
//
//  Created by 김예림 on 2/24/24.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
    //table view cell name
    static let idetifier = "TweetTableViewCell"
    
    //avatarImage
    private let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.image = UIImage(systemName: "person")
        imageView.backgroundColor = .red
        return imageView
    }()
    
    private let displayNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Amr Hssam"
        label.font = .systemFont(ofSize: 10, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier reuseIdetifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdetifier)
        contentView.addSubview(avatarImageView)
        
        configureConstraints()
    }
    //constraints 설정
    private func configureConstraints(){
        
        let avatarImageViewConstraints = [
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 14),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50)
        ]
        
        NSLayoutConstraint.activate(avatarImageViewConstraints)
    }
    
    //encoder error
    required init?(coder: NSCoder){
        fatalError()
    }
}
