//
//  ContentView.swift
//  Scrumdinger
//
//  Created by L X on 25/03/24.
//

import SwiftUI

struct MeettingView: View {
  let scrum: DailyScrum
  var body: some View {
    VStack {
      ProgressView(value: 10, total: 100)
      HStack {
        VStack {
          Text("Seconds Elapsed").font(.caption)
          Label("300", systemImage: "hourglass.tophalf.fill")
        }
        VStack {
          Text("Seconds Remaining").font(.caption)
          Label("600", systemImage: "hourglass.bottomhalf.fill")
        }
      }
      Circle().strokeBorder(lineWidth: 24)
      HStack {
        Text("Speaker 1 of 3")
        Spacer()
        Button(action: {}) { Image(systemName: "forward") }
      }
    }.padding()
  }
}

#Preview {
    MeettingView(scrum: DailyScrum.sampleData[0])
}
