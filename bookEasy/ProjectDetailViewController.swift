//
//  ProjectDetailViewController.swift
//  bookEasy
//
//  Created by admin on 22/02/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit
import MobilePlayer

class ProjectDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var videoCover: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "ImagesTableViewCell", bundle: nil), forCellReuseIdentifier: "imagesCell")
        tableView.register(UINib(nibName: "DescriptionTableViewCell", bundle: nil), forCellReuseIdentifier: "descriptionCell")
        tableView.register(UINib(nibName: "FloorPlanTableViewCell", bundle: nil), forCellReuseIdentifier: "floorCell")

        // Set delegate and datasource
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ProjectDetailViewController.videoPlay))
        videoCover.addGestureRecognizer(tap)
        videoCover.isUserInteractionEnabled = true
        
    }
    
    func videoPlay() {
        //https://github.com/mobileplayer/mobileplayer-ios
        let videoURL = URL(string: "https://youtu.be/hS5CfP8n_js")
        
        let playerVC = MobilePlayerViewController(contentURL: videoURL!)
        playerVC.title = "Vanilla Player - dfsdfds"
        playerVC.activityItems = [videoURL] // Check the documentation for more information.
        presentMoviePlayerViewControllerAnimated(playerVC)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let result: UITableViewCell

        let row = indexPath.section
        switch row {
        case 0:
            let descCell = tableView.dequeueReusableCell(withIdentifier: "descriptionCell", for: indexPath) as! DescriptionTableViewCell
            result = descCell
            break
        case 1:
            let floorCell = tableView.dequeueReusableCell(withIdentifier: "floorCell", for: indexPath) as! FloorPlanTableViewCell
            result = floorCell
            break
        default:
            let imagesCell = tableView.dequeueReusableCell(withIdentifier: "imagesCell", for: indexPath) as! ImagesTableViewCell
            result = imagesCell
            break
        }
        
        return result;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        


    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 180;//Choose your custom row height
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 8
    }
    
    // Make the background color show through
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    
    @IBAction func bookIt(_ sender: Any) {
        let book = UnitSelectionViewController()
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        view.window!.layer.add(transition, forKey: kCATransition)
        self.present(book, animated: false, completion: nil)
    }

}
