//
//  ViewController.swift
//  tableViewDemo
//
//  Created by Shaikat on 28/3/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit



class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableview: UITableView!
    
    var cellIdentifier  = "Cell"
    var birds : [Birds] = [
        Birds(image: #imageLiteral(resourceName: "crow"),
              name: "Crow",
              description: "A crow is a useful bird. It eats waste from the environment and make our environment better."),
        Birds(image: UIImage(named: "parrot.png") ?? UIImage(),
              name: "Parrot",
              description: "A parrot is a very beautiful bird."),
        Birds(image: UIImage(named: "magpie.png") ?? UIImage(),
              name: "Magpie",
              description: "A magpie is our national bird."),
        Birds(image: #imageLiteral(resourceName: "dove_new"),
              name: "Dove",
              description: "Dove is a very ugly bird. It jncjncjn ncjnhv  uchivivh uhuhviuhv iuhuhviu i hufhh o hu i yguygfug cyguy gw cuygygygyc g uyg  uy ugf uyg fg  gf ugfghidy87yffiudi v  xhcui cciciuc ygcygyugi cgdiy gugtf hichi hiyv iuhi iuhuyg8u0ef u98y ft y8 co cgi cuoh gy f t tffuuf  ftftf8 7f88t fg8f 6f ggfgggvy  yfy  gf fygefg ygyugf uy 78f ygyg gyg ygtgf  gfu ufgyg.")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //tableview.delegate = self
        //tableview.dataSource = self
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.separatorStyle = .none
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? BirdsTableViewCell{
            cell.selectionStyle = .none
            cell.imageViewOutlet.image = birds[indexPath.row].image
            cell.titleLBL.text = birds[indexPath.row].name
            cell.descriptionLBL.text = birds[indexPath.row].description
            return cell
        }else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(birds[indexPath.row].name)
    }


}

