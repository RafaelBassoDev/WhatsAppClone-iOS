//
//  MessageListViewController.swift
//  WhatsAppClone-iOS
//
//  Created by Rafael Basso on 19/05/22.
//

import UIKit

struct MessageCell {
    let name: String
    let image: UIImage?
    let lastMessage: String
    let unreadMessages: Int
}

final class MessageListViewController: UIViewController {
    
    let dataCells: [MessageCell] = [
        MessageCell(name: "Nome 1", image: nil, lastMessage: "Ultima msg...", unreadMessages: 0),
        MessageCell(name: "Nome 2", image: nil, lastMessage: "Ultima msg...", unreadMessages: 0),
        MessageCell(name: "Nome 3", image: nil, lastMessage: "Ultima msg...", unreadMessages: 0),
        MessageCell(name: "Nome 4", image: nil, lastMessage: "Ultima msg...", unreadMessages: 0),
        MessageCell(name: "Nome 5", image: nil, lastMessage: "Ultima msg...", unreadMessages: 0)
    ]
    
    let tableView: UITableView = {
        let table = UITableView()
        table.register(MessageTableViewCell.self, forCellReuseIdentifier: MessageTableViewCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
}

extension MessageListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MessageTableViewCell.identifier, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataCells.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
}
