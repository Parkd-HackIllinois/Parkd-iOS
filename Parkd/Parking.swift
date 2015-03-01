//
//  Parking.swift
//  Parkd
//
//  Created by Mosab Elagha on 2/28/15.
//  Copyright (c) 2015 Mosab Elagha. All rights reserved.
//

import Foundation

class Parking : NSObject {
	
	var myUrlString : String?

	var username : String
	var password : String
	
	var availableSpots: [String]
	var pickedSpot : String?
	var pricePerMinute : Float
	var basePrice : Float

	
	override init(){
		
		//==============================
		// Initialize Parking object variables
		//==============================
		self.username = "Mosab"
		self.password = "Yolo"
		
		self.availableSpots = ["A4", "B2", "B4", "C3", "K9"]
		self.pricePerMinute = 0.50
		self.basePrice = 0.00
		
		print(NSString(format: "%.2f", basePrice))

		//==============================
		// Initialize Object superclass
		//==============================
		super.init()
	}
	
	func setPickedSpot(var pickedSpot : String)
	{
		pickedSpot = self.availableSpots[0]
	}
	
	func getAvailableSpots()->[String]
	{
		return self.availableSpots
	}
	
	func getPricePerMinute()->Float
	{
		return self.pricePerMinute
	}
	

	
//	func checkLogin(username : String, password : String) -> Bool
//	{
//		var url = NSURL(string: self.myUrlString)
//		var request: NSURLRequest( // Creating Http Request
//
//		var connection = NSURLConnection(request: request, delegate: self)
//
//		return true
//	}
	
//	
//	func connection(connection: NSURLConnection, didReceiveData data: NSData) {
//		print("Received data: \n" + data.description)
//	}
//	
//	func connection(connection: NSURLConnection, didReceiveResponse response: NSURLResponse) {
//		print("Received response: \n" + response.description)
//	}
//	
//	func connection(connection: NSURLConnection, didFailWithError error: NSError) {
//		print("Oops, failed connection with error \n" + error.description)
//	}
//	
//	func connectionDidFinishLoading(connection: NSURLConnection) {
//		print("Finished loading \n")
//	}
//	
//	func connection(connection: NSURLConnection, willCacheResponse cachedResponse: NSCachedURLResponse) -> NSCachedURLResponse? {
//		print("Cached response \n" + cachedResponse.description)
//	}
}