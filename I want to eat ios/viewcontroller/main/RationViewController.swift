//
//  RationViewController.swift
//  I want to eat ios
//
//  Created by Anton Pavlov on 13.06.2018.
//  Copyright © 2018 Anton Pavlov. All rights reserved.
//

import UIKit

class RationViewController: UIViewController
    ,UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var foodIntakeTableView: UITableView!
    var menu:MenuForTheDay?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJSON {
            print("Json Success!")
            self.foodIntakeTableView.reloadData()
            
        }
    }
    
    func downloadJSON(completed:@escaping ()->())  {
        let url = URL(string: "http://iwanttoeat.ddns.net:8080/menu?calorie=3000&proteins=111&fats=50&carbohydrates=333")
        
        URLSession.shared.dataTask(with: url!) { (data,respons,error) in
            
            if(error == nil){
                do{
            
                    self.menu = try JSONDecoder().decode(MenuForTheDay.self,from: data! )
                    DispatchQueue.main.async {
                        completed()
                    }
                }catch{
                    print("Json ERROR!")
                }
            }
            
            }.resume()
    }
    
        /////////////////
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(self.menu==nil){
             return 5;
        }else{
           return self.menu!.foodIntakeList.count
        }
       
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
      
        if(menu==nil){
              cell.textLabel?.text = "Загрузка..."
        }else{
            cell.textLabel?.text =  menu!.foodIntakeList[indexPath.row].name
        }
        return cell
    }
    
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "showFoodIntake", sender: self)
        }
 
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as? FoodIntakeViewController{
                destination.foodIntake = menu!.foodIntakeList[(foodIntakeTableView.indexPathForSelectedRow?.row)!]
            }
        }
    /////////////////
}



