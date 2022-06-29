//
//  ViewController.swift
//  2.4Bong di cheo
//
//  Created by MAC on 6/17/22.
//

import UIKit

class ViewController: UIViewController {
    let contenerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    let blackView:UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    let greenView:UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    
    var rotateAngle : CGFloat = 0
    var timerRotate:Timer!
    var ratio:CGFloat = 0

    var diCheoTimer:Timer!
    var diCheoTimer2:Timer!
    
    
    var leftRighTimer: Timer!
    var dicheo:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerRotate = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { _ in
            self.rotateAngle += 1
            self.blackView.transform = CGAffineTransform(rotationAngle: -.pi * self.rotateAngle/360 )
        })
        ratio = (view.frame.height - 60) / (view.frame.width - 60)
        
        updateUI()
        //diChuyenCheo()
        leftRightMove()
    }

    func diChuyenCheo (){
        diCheoTimer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { (_) in
            self.contenerView.frame.origin.x -= 1
            self.contenerView.frame.origin.y -= self.ratio
            
            let a = self.contenerView.frame.minX
            let b = self.contenerView.frame.minY
            if a <= self.view.frame.minX || b <= self.view.frame.minY {
                self.diCheoTimer.invalidate()
                self.leftRightMove()
            }
        })
    }
    func diChuyenCheo2 (){
        diCheoTimer2 = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { (_) in
            self.contenerView.frame.origin.x -= 1
            self.contenerView.frame.origin.y += self.ratio
            
            let a = self.contenerView.frame.maxX
            let b = self.contenerView.frame.maxY
            if a >= self.view.frame.maxX || b >= self.view.frame.maxY {
                self.diCheoTimer2.invalidate()
                self.leftRightMove()
            }
        })
    }
    
    func leftRightMove() {
  
            leftRighTimer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true, block: { (_) in
                self.contenerView.frame.origin.x += 0.5
                if self.contenerView.frame.maxX >= self.view.frame.maxX {
                    
                    self.leftRighTimer.invalidate()
                    if self.dicheo {
                        self.diChuyenCheo2()
                        self.dicheo = false
                    } else {
                        self.diChuyenCheo()
                        print("aaaa")
                        self.dicheo = true
                    }
                    
                   
                
                }
            })
        }
    
        
    
    func updateUI(){
        
        view.addSubview(contenerView)
        contenerView.frame = CGRect()
        view.addSubview(contenerView)
        contenerView.frame = CGRect(x: 0, y: 0, width: 60, height: 60)
        contenerView.addSubview(blackView)
       
        blackView.frame = contenerView.bounds
        blackView.layer.cornerRadius = 30
        blackView.clipsToBounds = true
        blackView.layer.borderWidth = 3
        blackView.layer.borderColor = UIColor.blue.cgColor
        
        blackView.addSubview(greenView)
        greenView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
    }
}

