import Foundation
import UIKit

class MessageTableViewCell: UITableViewCell {
    
    private let profilePicture: UIImageView = {
        let image = UIImageView(image: UIImage(named: "person_\(Int.random(in: 1...2))"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 24
        return image
    }()
    
    private let profileNameLabel: UILabel = {
       let label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Name"
        label.textAlignment = .left
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.layer.masksToBounds = true
        return label
    }()
    
    static let identifier: String = "MessageTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = .systemBackground
        contentView.addSubview(profilePicture)
        contentView.addSubview(profileNameLabel)

        profilePicture.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        profilePicture.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, constant: -30).isActive = true
        profilePicture.widthAnchor.constraint(equalTo: profilePicture.heightAnchor).isActive = true
        profilePicture.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        profileNameLabel.topAnchor.constraint(equalTo: profilePicture.topAnchor).isActive = true
        profileNameLabel.leadingAnchor.constraint(equalTo: profilePicture.trailingAnchor, constant: 20).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
