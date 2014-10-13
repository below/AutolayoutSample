//
//  ViewController.swift
//  AutolayoutSample
//
//  Created by Alexander v. Below on 13.10.14.
//  Copyright (c) 2014 Alexander von Below. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = UIColor.redColor()
        redView.setTranslatesAutoresizingMaskIntoConstraints(false)
        var lc : NSLayoutConstraint
        self.view.addSubview(redView)
        lc = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view, attribute: NSLayoutAttribute.Left,
            multiplier: 1.0, constant: 12)
        self.view.addConstraint(lc)
        
        
        lc = NSLayoutConstraint(item: redView,
            attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal,
            toItem: self.topLayoutGuide,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0, constant: 10)
        
        self.view.addConstraint(lc)
        
        
        lc = NSLayoutConstraint(item:redView,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0, constant: 24)
        self.view.addConstraint(lc)
        lc = NSLayoutConstraint(item:redView,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0, constant: 24)
        self.view.addConstraint(lc)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

