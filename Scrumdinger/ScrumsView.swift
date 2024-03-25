//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by L X on 26/03/24.
//

import SwiftUI

struct ScrumsView: View {
  let scrums: [DailyScrum]

  var body: some View {
    NavigationStack {
      List(scrums) { scrum in
        NavigationLink(destination: DetailView(scrum: scrum)) {
          CardView(scrum: scrum)
        }.listRowBackground(scrum.theme.mainColor)
      }
      .navigationTitle("Daily Scrums")
      .toolbar {
        Button(
          action: /*@START_MENU_TOKEN@*/ {} /*@END_MENU_TOKEN@*/,
          label: {
            Image(systemName: "plus")
          }
        )
      }
    }
  }
}

struct ScrumsView_Previews: PreviewProvider {
  static var previews: some View {
    ScrumsView(scrums: DailyScrum.sampleData)
  }
}
