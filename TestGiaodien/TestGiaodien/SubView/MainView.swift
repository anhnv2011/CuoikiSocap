//
//  MainView.swift
//  TestGiaodien
//
//  Created by MAC on 6/29/22.
//

import UIKit

class MainView: UIView {

    let backgroundImageView: UIImageView = {
        let image = UIImageView ()
        image.image = UIImage(named: "housess")
        image.contentMode = .scaleToFill
        return image
    }()
    
    let airLabel: UILabel = {
        let label = UILabel()
        label.text = "Air, sleep, dream"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = .boldSystemFont(ofSize: 40)
        return label
    }()
    let findLabel : UILabel = {
        let label = UILabel()
        label.text = "Find and Book a great experice"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start and search", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    let subview: SubView = {
        let view = SubView()
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        backgroundColor = .cyan
    }
    
    func setupUI(){
        addSubview(backgroundImageView)
        addSubview(airLabel)
        addSubview(findLabel)
        addSubview(startButton)
        addSubview(subview)
    }
    

    override func layoutSubviews() {
        backgroundImageView.frame = bounds
        
        airLabel.frame = .init(x: 10, y: 30, width: frame.width - 20, height: 100)
        
        findLabel.frame = .init(x: 30, y: 130, width: frame.width - 60, height: 30)
        
        startButton.frame = .init(x: 90, y: 200, width: frame.width - 180, height: 60)
        startButton.layer.cornerRadius = 30
        
        subview.frame = .init(x: 5, y: frame.height - 200, width: frame.width - 10, height: 195)
        subview.layer.cornerRadius = 30
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
