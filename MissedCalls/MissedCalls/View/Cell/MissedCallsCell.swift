//
//  MissedCallsCell.swift
//  MissedCalls
//
//  Created by Станислав Лемешаев on 09.02.2021.
//

import UIKit

class MissedCallsCell: UITableViewCell {
    
    // MARK: - Properties
    
    private let callImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = #imageLiteral(resourceName: "callInboundMissed")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let talkTimeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 13)
        label.text = "00:13"
        return label
    }()
    
    private let nameOfContactLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.text = "Name of contact"
        return label
    }()
    
    private let numberOfContactLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.text = "+1 800 123-4567"
        return label
    }()
    
    let timestampLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .darkGray
        label.text = "10:21 AM"
        return label
    }()
    
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
