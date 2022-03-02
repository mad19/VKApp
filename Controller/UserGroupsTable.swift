//
//  UserGroupsTable.swift
//  VKApp
//
//  Created by Андрей Мишин on 28.02.2022.
//

import UIKit

class UserGroupsTable: UITableViewController {
    
    var groups = [
        Group(image: UIImage.init(systemName: "globe"), name: "SportNews"),
        Group(image: UIImage.init(systemName: "globe"), name: "Fishing"),
        Group(image: UIImage.init(systemName: "globe"), name: "Sailing"),
        Group(image: UIImage.init(systemName: "globe"), name: "Memes"),
        Group(image: UIImage.init(systemName: "globe"), name: "XCode"),
        Group(image: UIImage.init(systemName: "globe"), name: "Swift"),
        Group(image: UIImage.init(systemName: "globe"), name: "Basketball")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as? GroupCell else {preconditionFailure("GroupCell cannot")}
        
        cell.labelCity.text = groups[indexPath.row].name
        cell.imageGroup.image = groups[indexPath.row].image

        

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addGroup",
           let destinationVC = segue.destination as? AllGroupsTable
        {
            destinationVC.title = "All groups"
        }
    }
    
    @IBAction func addSelectedGroup(segue: UIStoryboardSegue) {
        if let sourceVC = segue.source as? AllGroupsTable,
           let indexPath = sourceVC.tableView.indexPathForSelectedRow {
            
            let group = sourceVC.groups[indexPath.row]
            if !groups.contains(where: {$0.name == group.name}) {
                
                groups.append(group)
//                Почему-то не удаляется элемент, который добавили в таблицу
                sourceVC.groups.remove(at: 0)
//                sourceVC.tableView.deleteRows(at: [indexPath], with: .fade)
                sourceVC.tableView.reloadData()
                tableView.reloadData()
                
            }
            
           }
        
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
