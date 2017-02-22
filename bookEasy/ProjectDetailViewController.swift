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
        return 3//self.items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "descriptionCell", for: indexPath) as! DescriptionTableViewCell
        let imagesCell = tableView.dequeueReusableCell(withIdentifier: "imagesCell", for: indexPath) as! ImagesTableViewCell
        
        if indexPath.row == 1 {
            return cell
        } else {
            if indexPath.row == 0 {
                imagesCell.imageView?.image = #imageLiteral(resourceName: "mapview.png")
            } else {
                imagesCell.imageView?.image = #imageLiteral(resourceName: "floorplan.png")
            }
            return imagesCell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        


    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        if indexPath.section == 0 {
            return 180;//Choose your custom row height
        } else {
            return 180;//Choose your custom row height
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    


}
