//
//  TabBarViewController.swift
//  BBangmap
//
//  Created by 오준현 on 2021/10/17.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setTabbar()
        clearShadow()
        roundTabbar()
    }
}

extension TabBarController {
    private func setTabbar() {
        let reviewView = ReviewMainViewController()
        let reviewViewTabItem = UITabBarItem(
            title: "후기",
            image: nil,
            selectedImage: nil
        )
        reviewView.tabBarItem = reviewViewTabItem
        let reviewViewController = UINavigationController(rootViewController: reviewView)

        let mapView = MapMainViewContorller()
        let mapViewTabItem = UITabBarItem(
            title: "지도",
            image: nil,
            selectedImage: nil
        )
        mapView.tabBarItem = mapViewTabItem
        let mapViewController = UINavigationController(rootViewController: mapView)

        let missionView = MissionMainViewController()
        let missionViewTabItem = UITabBarItem(
            title: "미션",
            image: nil,
            selectedImage: nil
        )
        missionView.tabBarItem = missionViewTabItem
        let missionViewController = UINavigationController(rootViewController: missionView)

        let userView = UserMainViewController()
        let userViewTabItem = UITabBarItem(
            title: "My",
            image: nil,
            selectedImage: nil
        )
        userView.tabBarItem = userViewTabItem
        let userViewController = UINavigationController(rootViewController: userView)

        viewControllers = [
            reviewViewController,
            mapViewController,
            missionViewController,
            userViewController
        ]
    }

    private func roundTabbar() {
        tabBar.layer.cornerRadius = 20
        tabBar.layer.masksToBounds = true
        tabBar.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }

    private func clearShadow() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().layer.borderWidth = 0.0
        UITabBar.appearance().barTintColor = .orange
    }

}
