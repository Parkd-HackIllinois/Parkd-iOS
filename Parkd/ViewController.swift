//
//  ViewController.swift
//  Parkd
//
//  Created by Mosab Elagha on 2/28/15.
//  Copyright (c) 2015 Mosab Elagha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
	//=============================
	// Variables
	//=============================
	@IBOutlet weak var availabeSpotsLabel: UILabel!
	@IBOutlet weak var spotPicker: UIPickerView!
	@IBOutlet weak var minutesLabel: UILabel!
	@IBOutlet weak var priceLabel: UILabel!


	var minutes : Int = 0
	var priceperminute = Parking().getPricePerMinute()
	var price = 0.00
	var availableSpots = Parking().getAvailableSpots()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.updateLabels()
		self.updateSpots()
		self.updatePicker()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func updateLabels()
	{
		minutesLabel?.text = String(minutes)
		var x = Float(minutes) * Float(priceperminute)
		var f = NSNumberFormatter()
		f.numberStyle = NSNumberFormatterStyle.CurrencyStyle
		
		priceLabel?.text = f.stringFromNumber(x)
	}
	
	func updateSpots()
	{
		var spotsString : String = ""
		for element in availableSpots
		{
			spotsString = spotsString + element
			if(element != availableSpots.last)
			{
				spotsString = spotsString + ", "
			}
		}
		availabeSpotsLabel?.text = spotsString
	}
	func updatePicker()
	{
		spotPicker?.dataSource = self
		spotPicker?.delegate = self
	}
		@IBAction func okAction(sender: UIButton) {
		if(1==1)
		{
			dismissViewControllerAnimated(true, completion: nil)
		}
	}
	@IBAction func close() {
		dismissViewControllerAnimated(true, completion: nil)
	}
	@IBAction func minutesStepper(sender: UIStepper) {
		minutes = 10 * Int(sender.value)
		updateLabels()
		println(sender.value)
		println(sender.value * 10)
	}
	
	func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
		return 1
	}
	
	func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
		return availableSpots.count
	}
	
	func pickerView(pickerView: UIPickerView, component: Int) -> Int {
		return availableSpots.count
	}
	
	//MARK: Delegates
	func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
		return availableSpots[row]
	}
 
	func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		return
	}
}

