//
//  ViewController.swift
//  Homework39
//
//  Created by Kato on 6/11/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    
        self.showAlert()
    }
    
    private func showAlert() {
        
        let alert = UIAlertController(title: "\n\n", message: "რავი რაღაც ტექსტი", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "დახურვა", style: .cancel)
        
        let imageView = UIImageView(frame: CGRect(x: 120, y: 25, width: 35, height: 35))
 
        imageView.image = UIImage(named: "alert_icon")
        
        alert.view.addSubview(imageView)
        alert.addAction(cancel)
        
        //დავალების ვიდეოს მიხედვით ცოტა გვიან ჩნდებოდა ეკრანზე alert, ამიტომ დავუმატე asyncAfter
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.present(alert, animated: true)
        }
        

    }


}

