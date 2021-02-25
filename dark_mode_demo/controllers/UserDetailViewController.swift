//
//  UserDetailViewController.swift
//  dark_mode_demo
//
//  Created by Mujahid on 25/02/21.
//

import UIKit

class UserDetailViewController: UIViewController {

    @IBOutlet weak var lblProfession: UILabel!
    @IBOutlet weak var imgUser: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    var userDetail:UserList?
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI(userDetail)
    }
    func injectDependancy(user:UserList?){
        guard user != nil else {return}
        userDetail = user
    }
    @IBAction func onClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func setupUI(_ user:UserList?){
        if let image = user?.image{
            imgUser.image = UIImage(named: image)
        }
        if let name = user?.name{
            lblName.text = name
        }
        if let profession = user?.profession{
            lblProfession.text = profession
        }
    }

}
