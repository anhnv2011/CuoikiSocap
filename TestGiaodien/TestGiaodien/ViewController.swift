//
//  ViewController.swift
//  TestGiaodien
//
//  Created by MAC on 6/29/22.
//

import UIKit

class ViewController: UIViewController {

    let mainView: MainView = {
        let mainview = MainView()
        return mainview
    }()
    let imageview: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "moutain")
        return image
    }()
    let fleetLabel: UILabel = {
        let label = UILabel ()
        label.text = "fleet"
        label.textColor = .black
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 25)
        
        return label
    }()
    let ringButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "bell"), for: .normal)
        return button
    }()
    let avatarImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Blake")
        return image
    }()
    let menuButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "menubar.rectangle"), for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

                
        setupUI()


    }
    override func viewDidAppear(_ animated: Bool) {
        
        //mainView.center = view.center
    }
    func setupUI(){
        view.addSubview(imageview)
        view.addSubview(fleetLabel)
        view.addSubview(ringButton)
        view.addSubview(avatarImage)
        view.addSubview(menuButton)
        
        view.addSubview(mainView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let safeTop = view.safeAreaInsets.bottom + 20
        let width:CGFloat = 50
        let height:CGFloat = 50
        imageview.frame = CGRect(x: 20, y: safeTop, width: width, height: height)
        imageview.circle()
        fleetLabel.frame = CGRect(x: imageview.right + 10, y: safeTop, width: width + 20, height: height)
        
        menuButton.frame = CGRect(x: view.frame.width - width - 20, y: safeTop, width: width, height: height)
     
        avatarImage.frame = CGRect(x: menuButton.left - width - 10 , y: safeTop, width: width, height: width)
        avatarImage.circle()
        ringButton.frame = CGRect(x: avatarImage.left - width - 10, y: safeTop, width: width, height: height)
        mainView.frame = CGRect(x: 10, y: 200 , width: view.frame.width - 20, height: view.height - 220)
        mainView.layer.cornerRadius = 30
       

    }
}

