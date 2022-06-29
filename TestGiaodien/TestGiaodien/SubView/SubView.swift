//
//  SubView.swift
//  TestGiaodien
//
//  Created by MAC on 6/29/22.
//

import UIKit

class SubView: UIView {
    let stayLabel : UILabel = {
        let label = UILabel()
        label.text = "Stay"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    let flightLabel : UILabel = {
        let label = UILabel()
        label.text = "Flight"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    let carLabel : UILabel = {
        let label = UILabel()
        label.text = "Cars"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    let thingLabel : UILabel = {
        let label = UILabel()
        label.text = "Thing to do"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    let locationLabel : UILabel = {
        let label = UILabel()
        label.text = "Location"
        label.font = .boldSystemFont(ofSize: 30)
        label.textAlignment = .left
        return label
    }()
    let whereLabel : UILabel = {
        let label = UILabel()
        label.text = "Where are you going"
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .left
        return label
    }()
    let searchButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){
        addSubview(stayLabel)
        addSubview(flightLabel)
        addSubview(carLabel)
        addSubview(thingLabel)
        addSubview(searchButton)
        addSubview(whereLabel)
        addSubview(locationLabel)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        stayLabel.frame = CGRect(x: 20, y: 10, width: 60, height: 40)
        flightLabel.frame = CGRect(x: stayLabel.right + 20, y: 10, width: 60, height: 40)
        carLabel.frame = CGRect(x: flightLabel.right + 20, y: 10, width: 60, height: 40)
        thingLabel.frame = CGRect(x: frame.width - 140, y: 10, width: 120, height: 40)
        
        locationLabel.frame = CGRect(x: 20, y: stayLabel.bottom + 30, width: 140, height: 40)
        whereLabel.frame = CGRect(x: 20 , y:locationLabel.bottom + 10 , width: 200, height: 40)
        
        searchButton.frame = CGRect(x: frame.width - 120, y: thingLabel.bottom + 25, width: 100, height: 100)
        searchButton.circle()
    }

}
