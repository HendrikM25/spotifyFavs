//
//  AccountViewController.swift
//  SpotifyFavs
//
//  Created by Hendrik Müller on 19.10.22.
//

import UIKit

class AccountViewController: UIViewController {

    private let label:UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        label.text = "Account"
        label.textColor = .white
        label.textAlignment = .center
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        label.center = view.center
    }
    
}
