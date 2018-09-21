//
//  DetailsViewController.swift
//  SMovie
//
//  Created by MacBookPro10 on 9/21/18.
//  Copyright © 2018 MacBookPro10. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var BigImage: UIImageView!
    @IBOutlet weak var SmallImageV: UIImageView!
    @IBOutlet weak var TitleUiLabel: UILabel!
    @IBOutlet weak var ReleasedateLabel: UILabel!
    @IBOutlet weak var OverviewLabel: UILabel!
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
