//
//  BahnPageViewController.swift
//  BahnTracker
//
//  Created by Domenik Fox on 22.11.17.
//  Copyright © 2017 FoxCode. All rights reserved.
//

import UIKit

class BahnPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    var currentIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        
        if let viewController = viewBahnViewController(currentIndex ?? 0) {
            let viewControllers = [viewController]
            setViewControllers(viewControllers,
                               direction: .forward,
                               animated: false,
                               completion: nil)
        }
    }
    
    
    func viewBahnViewController(_ index:Int) -> BahnViewController? {
        if let storyboard = storyboard,
            let page = storyboard.instantiateViewController(withIdentifier: "BahnViewController") as? BahnViewController {
            page.bahnIndex = index
            return page
        }
        return nil
    }
    
    
    func presentationIndex(for BahnViewController: UIPageViewController) -> Int {
        return currentIndex ?? 0
    }
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if let viewController = viewController as? BahnViewController,
            let index = viewController.bahnIndex,
            index > 0 {
            return viewBahnViewController(index - 1)
        }
        
        return nil
    }
    
    // 2
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if let viewController = viewController as? BahnViewController,
            let index = viewController.bahnIndex,
            (index + 1) < 4{
            return viewBahnViewController(index + 1)
        }
        
        return nil
    }
    
}

