//
//  ViewController.swift
//  SpotifyFavs
//
//  Created by Hendrik Müller on 19.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    private let loginButton: UIButton = {
        let loginButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 52))
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemGreen
        loginButton.layer.cornerRadius = 15
        loginButton.setTitleColor(.white, for: .normal)
        return loginButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loginButton.center = view.center
    }
    
    @objc func didTapLoginButton() {
        let tabBarViewController = UITabBarController()
        tabBarViewController.tabBar.tintColor = .systemGreen
        
        let homeViewController = HomeViewController()
        let accountViewController = AccountViewController()
        let statsViewController = StatsViewController()
        
        tabBarViewController.setViewControllers([accountViewController, homeViewController, statsViewController], animated: false)
        
        guard let items = tabBarViewController.tabBar.items else {
            return
        }
        
        let icons = ["person", "house", "chart.line.uptrend.xyaxis"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: icons[x])
        }
        
        tabBarViewController.modalPresentationStyle = .fullScreen
        tabBarViewController.selectedIndex = 1
        present(tabBarViewController, animated: false)
    }
    
}

