//
//  First View Controller.swift
//  Display The Numbers
//
//  Created by amrutha on 10/11/20.
//  Copyright © 2020 amrutha. All rights reserved.
//

import UIKit

class SecondViewController :  UIViewController,UITableViewDataSource,UITableViewDelegate,TableViewCellDelegate {
    
  
    
    @IBOutlet weak var table: UITableView!
     
     var C = Constants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        
        table.register(UINib(nibName:C.TableViewCell, bundle:                                                                           nil),forCellReuseIdentifier:C.TableViewCell)
        
        
        }
   
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
            return C.data.count
        
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:C.TableViewCell) as! TableViewCell
        cell.configure(with: C.data[indexPath.row])
        cell.delegate = self
        return cell
        
        }
        func onClickSelectionButton(with title: String) {
               // print("Title is \(title)")
          }
          

}
    
