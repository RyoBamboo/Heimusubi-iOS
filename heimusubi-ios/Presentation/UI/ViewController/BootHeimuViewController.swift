//
//  BootHeimuViewController.swift
//  heimusubi-ios
//
//  Created by 竹之下遼 on 2017/10/26.
//  Copyright © 2017年 RyoBamboo. All rights reserved.
//

import UIKit

class BootHeimuViewController: UIViewController {
    fileprivate var presenter: BootHeimuPresenter!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func inject(presenter: BootHeimuPresenter) {
        self.presenter = presenter
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        self.presenter.nextButtonPressed()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
