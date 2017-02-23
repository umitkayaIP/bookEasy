//
//  DevelopmentViewController.swift
//  bookEasy
//
//  Created by keat on 22/02/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class DevelopmentViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var developmentTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //register nib file
        developmentTableView.register(UINib(nibName: "DeveloperDevelopmentTableViewCell", bundle: nil), forCellReuseIdentifier: "developerDevelopmentCell")
        self.developmentTableView.delegate = self
        self.developmentTableView.dataSource = self
        self.navigationController?.navigationBar.backItem?.title = "Anything Else"
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "developerDevelopmentCell", for: indexPath) as! DeveloperDevelopmentTableViewCell
        
        if (indexPath.row == 0)
        {
            cell.developerDevelopmentTitle.text = "Project 1"
            cell.developerDevelopmentDescription.text = "Located nearby LRT Paramount"
            cell.developerDevelopmentImage.image = UIImage(imageLiteralResourceName: "project1.jpeg")
        }
        else if (indexPath.row == 1)
        {
            cell.developerDevelopmentTitle.text = "Project 2"
            cell.developerDevelopmentDescription.text = "Located near Bangsar South"
            cell.developerDevelopmentImage.image = UIImage(imageLiteralResourceName: "project2.jpg")
        }
        else if (indexPath.row == 2)
        {
            cell.developerDevelopmentTitle.text = "Project 3"
            cell.developerDevelopmentDescription.text = "Located near Kampung Buaya"
            cell.developerDevelopmentImage.image = UIImage(imageLiteralResourceName: "project3.jpg")
    
        }
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsViewController = ProjectDetailViewController()
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        view.window!.layer.add(transition, forKey: kCATransition)
        present(detailsViewController, animated: false, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 120.0;//Choose your custom row height
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem // This will show in the next view controller being pushed
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
