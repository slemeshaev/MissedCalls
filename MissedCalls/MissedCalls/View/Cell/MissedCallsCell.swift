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
        label.textColor = .darkGray
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
        
        let stackViewCall = UIStackView(arrangedSubviews: [callImageView, talkTimeLabel])
        stackViewCall.axis = .vertical
        stackViewCall.spacing = 12
        
        addSubview(stackViewCall)
        callImageView.setDimensions(height: 40, width: 40)
        talkTimeLabel.anchor(top: callImageView.bottomAnchor, paddingTop: 12)
        stackViewCall.anchor(left: leftAnchor, paddingLeft: 17)
        
        let stackViewContact = UIStackView(arrangedSubviews: [nameOfContactLabel, numberOfContactLabel])
        stackViewContact.axis = .vertical
        stackViewContact.spacing = 14
        
        addSubview(stackViewContact)
        stackViewContact.centerY(inView: callImageView)
        stackViewContact.anchor(top: topAnchor, left: callImageView.rightAnchor, right: rightAnchor, paddingTop: 16, paddingLeft: 15, paddingRight: 16)
        
        addSubview(timestampLabel)
        timestampLabel.anchor(top: topAnchor, right: rightAnchor, paddingTop: 64, paddingRight: 16)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
