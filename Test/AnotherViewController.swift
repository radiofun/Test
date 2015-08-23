//
//  AnotherViewController.swift
//  Test
//
//  Created by Jonathon Toon on 8/23/15.
//  Copyright (c) 2015 Jonathon Toon. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {
    
    var myCoolView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Cool stuff Number 2"
        self.view.backgroundColor = UIColor.yellowColor()
        
        self.myCoolView = UIView(frame: CGRectMake(0, 0, 100, 100))
        self.myCoolView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)
        self.myCoolView.backgroundColor = UIColor.blueColor()
        
        self.view.addSubview(self.myCoolView)
        
        let tapGestureRec = UITapGestureRecognizer(target: self, action: "didTapView")
        self.myCoolView.addGestureRecognizer(tapGestureRec)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didTapView() {
        
                UIView.animateWithDuration(0.25, animations: {
        
                    self.myCoolView.frame = CGRectMake(0, 0, 300, 300)
                    self.myCoolView.center = CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2)
        
                })
        
        
        
    }
}

