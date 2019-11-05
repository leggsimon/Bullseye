//
//  ContentView.swift
//  Bullseye
//
//  Created by Simon Legg on 04/11/2019.
//  Copyright © 2019 Simon Legg. All rights reserved.
//

import SwiftUI

struct ContentView: View {

	@State var alertIsVisible: Bool = false
	@State var knockKnockIsVisible: Bool = false

	var body: some View {
		VStack {
			Text("My first Swift UI App")
				.fontWeight(.semibold)
			Button(action: {
				print("Button pressed!!!")
				self.alertIsVisible = true
			}) {
				Text("Hit Me!")
			}
			.alert(isPresented: $alertIsVisible){
				() -> Alert in
				return Alert(
					title: Text("Hello There"),
					message: Text("This is my first pop up!"),
					dismissButton: .default(Text("Awesome"))
				)
			}

			Button(action: {
				self.knockKnockIsVisible = true
			}) {
				Text("Knock Knock!")
			}.alert(isPresented: $knockKnockIsVisible) { () -> Alert in
				return Alert(
					title: Text("Who’s there?"),
					message: Text("Doctor"),
					dismissButton: .default(Text("Doctor Who?"))
				)
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
