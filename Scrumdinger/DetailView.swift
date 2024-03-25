//
//  DetailView.swift
//  Scrumdinger
//
//  Created by L X on 27/03/24.
//

import SwiftUI

struct DetailView: View {
  let scrum: DailyScrum
  var body: some View {
    List {
      Section(header: Text("MEETING INFO")) {
        NavigationLink(
          destination: MeettingView(scrum: scrum)
        ) {
          Label("Start Meeting", systemImage: "timer")
                .font(.headline)
                .foregroundColor(.accentColor)
        }

        HStack {
          Label("Length", systemImage: "clock")
          Spacer()
          Text("\(scrum.lengthInMinutes) minues")
        }
        HStack {
          Label("Theme", systemImage: "paintpalette")
          Spacer()
          Text(scrum.theme.name)
            .padding(4)
            .foregroundColor(scrum.theme.accentColor)
            .background(scrum.theme.mainColor)
            .cornerRadius(4)
        }
      }
      Section(header: Text("ATTENDEE")) {
        ForEach(scrum.attendees) { attendee in
          Label(attendee.name, systemImage: "person")
        }
      }
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var scrum = DailyScrum.sampleData[0]
  static var previews: some View {
    DetailView(scrum: scrum)
  }
}
