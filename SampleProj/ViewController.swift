//
//  ViewController.swift
//  SampleProj
//
//  Created by CenoX on 2016. 3. 23..
//  Copyright © 2016년 CenoX. All rights reserved.
//

import UIKit
import JLToast

class ViewController: UIViewController {
    
    @IBOutlet weak var menuItem: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Main"
        self.navigationController?.navigationBar.tintColor = .whiteColor()
        self.navigationController?.navigationBar.barTintColor = .blueColor()
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.opaque = true
        self.navigationController?.navigationBar.barStyle = .Black
        
        // Add RevealViewController action
        if self.revealViewController() != nil {
            menuItem.target = self.revealViewController()
            menuItem.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        // PLEASE TEST WITH THIS LINE
        JLToast.makeText("TEXT MAKING WITH JLTOAST").show()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

