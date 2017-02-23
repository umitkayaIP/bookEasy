//
//  DeveloperViewController.swift
//  bookEasy
//
//  Created by keat on 22/02/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class DeveloperViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var developerTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        developerTableView.register(UINib(nibName: "DeveloperDevelopmentTableViewCell", bundle: nil), forCellReuseIdentifier: "developerDevelopmentCell")
        self.developerTableView.delegate = self
        self.developerTableView.dataSource = self
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
        cell.developerDevelopmentTitle.text = "SimeDarby"
        cell.developerDevelopmentDescription.text = "Malaysia Top 5 developers"
        cell.developerDevelopmentImage.image = UIImage(imageLiteralResourceName: "SmeDarby.gif")
        
//      cell.forwardButton.image = UIImage(imageLiteralResourceName: "fwdButton.pdf")
        }
        else if (indexPath.row == 1)
        {
            cell.developerDevelopmentTitle.text = "SP Setia"
            cell.developerDevelopmentDescription.text = "Most valuable developers voted by consumers"
            cell.developerDevelopmentImage.image = UIImage(imageLiteralResourceName: "SP-Setia.png")
//            cell.forwardButton.image = UIImage(imageLiteralResourceName: "fwdButton.pdf")
        }
        else if (indexPath.row == 2)
        {
            cell.developerDevelopmentTitle.text = "Mah Sing"
            cell.developerDevelopmentDescription.text = "Best and good reputation in terms of project and finished in time"
            cell.developerDevelopmentImage.image = UIImage(imageLiteralResourceName: "mahsing.png")
//            cell.forwardButton.image = UIImage(imageLiteralResourceName: "fwdButton.pdf")
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let developmentViewController = DevelopmentViewController()
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        view.window!.layer.add(transition, forKey: kCATransition)
        present(developmentViewController, animated: false, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 130.0;//Choose your custom row height
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
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
