//
//  ViewController.swift
//  CVDemoNSB
//
//  Created by ADELU ABIDEEN ADELEYE on 10/7/18.
//  Copyright © 2018 Spantom Technologies Ltd. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId = "cellId"
    
    let teams = [Team(image: "arsenal", name: "Arsenal"),
                 Team(image: "chelsea", name: "Chelsea"),
                 Team(image: "everton", name: "Everton"),
                 Team(image: "leicester", name: "Leicester"),
                 Team(image: "liverpool", name: "Liverpool"),
                 Team(image: "mu", name: "Man Utd"),
                 Team(image: "mc", name: "Man City"),
                 Team(image: "newcastle", name: "Newcastle"),
                 Team(image: "tottenham", name: "Tottenham"),
                 Team(image: "arsenal", name: "Arsenal"),
                 Team(image: "chelsea", name: "Chelsea"),
                 Team(image: "everton", name: "Everton"),
                 Team(image: "leicester", name: "Leicester"),
                 Team(image: "liverpool", name: "Liverpool"),
                 Team(image: "mu", name: "Man Utd"),
                 Team(image: "mc", name: "Man City"),
                 Team(image: "newcastle", name: "Newcastle"),
                 Team(image: "tottenham", name: "Tottenham"),
                 Team(image: "arsenal", name: "Arsenal"),
                 Team(image: "chelsea", name: "Chelsea"),
                 Team(image: "everton", name: "Everton"),
                 Team(image: "leicester", name: "Leicester"),
                 Team(image: "liverpool", name: "Liverpool"),
                 Team(image: "mu", name: "Man Utd"),
                 Team(image: "mc", name: "Man City"),
                 Team(image: "newcastle", name: "Newcastle"),
                 Team(image: "tottenham", name: "Tottenham")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = UIColor(red: 44/255, green: 57/255, blue: 95/255, alpha: 1)
        
        navigationItem.title = "Collection View"
        navigationController?.navigationBar.barTintColor = UIColor(red: 217/255, green: 48/255, blue: 80/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 20)]
        
        collectionView.register(TeamCell.self, forCellWithReuseIdentifier: cellId)
        
        collectionView.showsVerticalScrollIndicator = false
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TeamCell
        cell.team = teams[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width / 3) - 16, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
    
}

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
        backgroundColor = UIColor(red: 11/255, green: 22/255, blue: 53/255, alpha: 1)
        
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

struct Team {
    let image: String?
    let name: String?
}

