//
//  MapOptionsViewController.swift
//  MineSafe_Ultimate
//
//  Created by Carlos Bautista on 5/2/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

/******************************************************************
 *                                                                *
 * DestinationTableViewController                                 *
 *                                                                *
 * This view controller is a sub-class of UITableViewController   *
 * and controls all views associated with the TableViewController *
 * that serves as the entry point for the application.            *
 *                                                                *
 ******************************************************************
 */

class MapOptionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    // MARK: - IBOutlets
    
    @IBOutlet var destinationTableView: UITableView!
    
    // MARK: - Properties
    
    // Instnatiate destinationName Array.
    
    
    
    var destinationNames = [
        "The Picnic House",
        "Prospect Park Zoo",
        "LeFrak Center at Lakeside",
        "Prospect Park Baseball Field 7",
        "Brooklyn Botanic Garden",
        "Lincoln Road Playground",
        "Prospect Park Boathouse",
        "Long Meadow Ballfields",
        "Prospect Park Dog Beach",
        "Quaker Cemetery"
    ]
    
    
    // MARK: - Built-In Method Overrides
    
    // FULL DISCOLOSURE: The code used within these ovrrides to pull
    //                   the data in for use with this table view is
    //                   loosely adapted from the tutorial at the
    //                   following URL:
    //
    // https://www.ralfebert.de/tutorials/ios-swift-uitableviewcontroller/
    
    
    override func viewDidLoad() {
        
        // Call super implementation of viewDidLoad().
        
        super.viewDidLoad()
        
        // Customize navigation bar title text.
        
        let navBar = navigationController?.navigationBar
        
        // Specify attributes.
        
        let navBarTitleAttributes =
            [
                NSFontAttributeName: UIFont(name: "Optima-Bold",
                    size: 24)!,
                NSForegroundColorAttributeName:
                    UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        ]
        
        // Apply specified attributes.
        
        navBar?.titleTextAttributes = navBarTitleAttributes
        
    }   // end videDidLoad()
    
    override func tableView(tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        
        return allDestinations.safeDestination.count
        
        
    }   // end tableView(_:numberOfRowsInSection)
    
    override func tableView(tableView: UITableView,
                            titleForHeaderInSection section: Int)  -> String? {
        
        return "Choose your destination:"
        
    }   // tableView(_:numberOfRowInSection)
    
    override func tableView(tableView: UITableView,
                            cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Set cell reuse identifier.
        
        let destCell =
            tableView.dequeueReusableCellWithIdentifier("destinationCell")
        
        // Add Disclosure Indicator arrow to each table cell.
        
        destCell?.accessoryType =
            UITableViewCellAccessoryType.DisclosureIndicator
        
        // Configure table cell.
        
        destCell?.textLabel?.text = destinationNames[indexPath.row]
        
        return destCell!
        
    }   // end tableView(_:cellForRowAtIndexPath)
    
}   // end DestinationTableViewController: UITableViewController
