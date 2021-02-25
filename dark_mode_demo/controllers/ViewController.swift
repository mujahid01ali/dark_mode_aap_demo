//
//  ViewController.swift
//  dark_mode_demo
//
//  Created by Mujahid on 25/02/21.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var tableView:UITableView!
    var userList = [UserList]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        loadUserList()
        
        
        
    }
    
    func loadUserList(){
        UserListVM.getList { [weak self](userList) in
            guard let strongSelf = self else {return}
            strongSelf.userList = userList
            strongSelf.tableView.reloadData()
        }
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if !userList.isEmpty{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserListCell") as? UserListCell else {return UITableViewCell()}
            cell.lblName.text = userList[indexPath.row].name
            cell.userImage.image = UIImage(named: userList[indexPath.row].image ?? "user_image")
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        //alert(row: indexPath.row)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "UserDetailViewController") as! UserDetailViewController
        vc.injectDependancy(user: userList[indexPath.row])
        vc.modalPresentationStyle = .currentContext
        vc.modalTransitionStyle = .crossDissolve
        self.present(vc, animated: true, completion: nil)
        
        
    }
    
    
    
}

extension ViewController{
    func alert(row:Int?) {
        guard let row = row else {return}
        let action = UIAlertController(title: "Alert", message: "Row \(row)", preferredStyle: .alert)
        action.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        self.present(action, animated: true, completion: nil)
    }
    
    
}

