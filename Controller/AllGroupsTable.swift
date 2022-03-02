//
//  AllGroupsTable.swift
//  VKApp
//
//  Created by Андрей Мишин on 28.02.2022.
//

import UIKit

class AllGroupsTable: UITableViewController {
    
    
    var groups = [
        Group(image: Assets.globe.image, name: "Aerobic"),
        Group(image: Assets.moon.image, name: "Python"),
        Group(image: Assets.homepod.image, name: "Java"),
        Group(image: Assets.pencil.image, name: "Ruby"),
        Group(image: Assets.globe.image, name: "IDEA"),
        Group(image: Assets.moon.image, name: "Skiing"),
        Group(image: Assets.pencil.image, name: "MoscowNews")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsCell", for: indexPath) as? AllGroupsCell else {preconditionFailure("AllGroupsCell cannot")}
        
        cell.labelCity.text = groups[indexPath.row].name
        cell.imageGroup.image = groups[indexPath.row].image

        
        /*
         var content = cell.defaultContentConfiguration()
        
        content.text = groups[indexPath.row].name
        content.image = groups[indexPath.row].image
        
        content.textProperties.font = UIFont(name: "Kefa", size: 17)!
        content.imageProperties.maximumSize = CGSize(width: 50, height: 50)
        content.imageToTextPadding = CGFloat(40)
        
        cell.contentConfiguration = content
         */
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

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