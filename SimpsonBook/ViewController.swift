//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Tayfur Salih Şen on 17.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    
    var simpsonarray = [SimpsonClass]()
    var chosenSimpson : SimpsonClass?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let homer = SimpsonClass(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
        let marge = SimpsonClass(simpsonName: "Marge Simpson", simpsonJob: "Housewife", simpsonImage: UIImage(named: "marge")!)
        let bart = SimpsonClass(simpsonName: "Bart Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "bart.svg")!)
        let lisa = SimpsonClass(simpsonName: "Lisa Simpson", simpsonJob: "Student", simpsonImage: UIImage(named: "lisa")!)
        let maggie = SimpsonClass(simpsonName: "Maggie Simpson", simpsonJob: "Baby", simpsonImage: UIImage(named: "maggie")!)
        
        
        simpsonarray.append(homer)
        simpsonarray.append(marge)
        simpsonarray.append(bart)
        simpsonarray.append(lisa)
        simpsonarray.append(maggie)
        
        

        
        
    
    
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonarray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonarray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonarray[indexPath.row]
        performSegue(withIdentifier: "todetailsVC", sender: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "todetailsVC"{
                let destinationVC = segue.destination as! detailsVC
                destinationVC.selectedSimpson = chosenSimpson
                
            }
        }
        
}


