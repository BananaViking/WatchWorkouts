//
//  MetricsView.swift
//  WatchWorkouts WatchKit Extension
//
//  Created by J S on 6/9/21.
//

import SwiftUI

struct MetricsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("03:15.23")
                .foregroundColor(.yellow)
                .fontWeight(.semibold)
            Text(
                Measurement(
                    value: 47,
                    unit: UnitEnergy.kilocalories
                ).description
            )
            Text(
                153.description + " bpm"
            )
            Text(
                Measurement(
                    value: 515,
                    unit: UnitLength.meters
                ).description
            )
        }
        .font(.system(.title, design: .rounded)
                .monospacedDigit()
                .lowercaseSmallCaps()
        )
        .frame(maxWidth: .infinity, alignment: .leading)
        .ignoresSafeArea(edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

struct MetricsView_Previews: PreviewProvider {
    static var previews: some View {
        MetricsView()
    }
}
