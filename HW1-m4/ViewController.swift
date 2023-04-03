//
//  ViewController.swift
//  HW1-m4
//
//  Created by cpu on 3/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let cellID = "cell"

    @IBOutlet weak var tableView: UITableView!
    
    private var users: [User] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: cellID)
        
        tableView.delegate = self
        
       initData()
        }
    
    public func initData(){
        users.append(User(label: "Что из себя представляет компания Apple?", textFild: "История Apple начинается с одного гаража и трех друзей. Два Стива — Джобс и Возняк — пожалуй, самые заметные основатели компании.", imageTV: "1"))
       
   
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! CustomTableViewCell
        let model = users[indexPath.row]
        cell.displayy(item: model)
        
        return cell
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "key") as! SecondViewController
        vc.name = users[indexPath.row].label
        vc.info = users[indexPath.row].textFild
        vc.imagedet = users[indexPath.row].imageTV
        navigationController?.pushViewController(vc, animated: true)
    }
    
}





struct User{
    var label: String
    var textFild: String
    var imageTV: String
}
