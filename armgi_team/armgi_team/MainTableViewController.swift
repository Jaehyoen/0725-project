//
//  MainTableViewController.swift
//  armgi_team
//
//  Created by Tars on 7/25/18.
//  Copyright © 2018 sspog. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var cell_Image: UIImageView!

    @IBOutlet weak var cell_Bookname: UILabel!

    @IBOutlet weak var cell_Publisher: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

class MainTableViewController: UITableViewController {

    struct cellData {
        let image:UIImage?
        let label:String?
        let subLabel:String?
    }

    let cell_1 = cellData(image: UIImage(named: "notebook1"), label: "책1", subLabel: "출판사1")
    let cell_2 = cellData(image: UIImage(named: "notebook2"), label: "책2", subLabel: "출판사2")
    let cell_3 = cellData(image: UIImage(named: "notebook3"), label: "책3", subLabel: "출판사3")
    let cell_4 = cellData(image: UIImage(named: "notebook4"), label: "책4", subLabel: "출판사4")

    var cellArray:[cellData] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem

        cellArray = [cell_1, cell_2, cell_3, cell_4]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cellArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        /*
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as? MainTableViewCell
        //느낌표 이유 : MainTableViewCell은 이미 UITableViewCell의 기능을 가지므로? 상속관계가 있는 객체에 한해서.. 가급적 !보다는 ?를 사용하자.

        // Configure the cell...

        if let myCell = cell{
            myCell.cell_Image.image = cellArray[indexPath.row].image
            myCell.cell_Bookname.text = cellArray[indexPath.row].label
            myCell.cell_Publisher.text = cellArray[indexPath.row].subLabel
            return myCell
        }

        return cell!
         */

        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        guard let myCell = cell as? MainTableViewCell else {
            return cell
        }
        //변환이 되었다면 다음 구문으로 이동.

        myCell.cell_Image.image = cellArray[indexPath.row].image
        myCell.cell_Bookname.text = cellArray[indexPath.row].label
        myCell.cell_Publisher.text = cellArray[indexPath.row].subLabel

        return myCell
    }



/*
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section:Int) -> String?{
        return cellArray[section].label
    }
*/

    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */

    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
