//
//  TeamCell.swift
//  CVDemoNSB
//
//  Created by ADELU ABIDEEN ADELEYE on 10/7/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//

import UIKit

class TeamCell: UICollectionViewCell {
    
    var team: Team? {
        didSet {
            guard let teamImage = team?.image else { return }
            guard let teamName = team?.name else { return }
            
            teamImageView.image = UIImage(named: teamImage)
            teamNameLabel.text = teamName
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setCellShadow()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        backgroundColor = UIColor(r: 11, g: 22, b: 53)
        
        addSubview(teamImageView)
        addSubview(teamNameLabel)
        
        teamImageView.setAnchor(top: topAnchor, topPad: 10, bottom: nil, bottomPad: 0, left: leftAnchor, leftPad: 10, right: rightAnchor, rightPad: 10, height: 50, width: 0)
        
        teamNameLabel.setAnchor(top: teamImageView.bottomAnchor, topPad: 10, bottom: bottomAnchor, bottomPad: 0, left: leftAnchor, leftPad: 0, right: rightAnchor, rightPad: 0, height: 0, width: 0)
        
    }
    
    let teamImageView: UIImageView = {
        let image = UIImage(named: "")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let teamNameLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.text = "Name"
        label.textColor = UIColor.white
        label.textAlignment = .center
        return label
    }()
    
}
