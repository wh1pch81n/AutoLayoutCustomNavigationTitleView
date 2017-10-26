//
//  ViewController.swift
//  nav
//
//  Created by Ho, Derrick on 10/5/17.
//  Copyright © 2017 WebMD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var searchBar: UISearchBar = MySearchBar()
    var braces: UILabel = UILabel()
    var customView: UIView = UIView()
    
    override func loadView() {
        super.loadView()
        
        customView.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        customView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[searchBar]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["searchBar": searchBar]))
        customView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[searchBar]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["searchBar": searchBar]))
        
        searchBar.setContentHuggingPriority(UILayoutPriority(rawValue: 250), for: UILayoutConstraintAxis.horizontal)
        searchBar.setContentHuggingPriority(UILayoutPriority(rawValue: 250), for: UILayoutConstraintAxis.vertical)
        
        //
        navigationItem.titleView = customView
        
        let leftBar = UIBarButtonItem(title: "item", style: UIBarButtonItemStyle.done, target: nil, action: nil)
        navigationItem.leftBarButtonItem = leftBar
    }
}


class MySearchBar: UISearchBar {
    
    override var intrinsicContentSize: CGSize {
        return UILayoutFittingExpandedSize
    }
    
}

