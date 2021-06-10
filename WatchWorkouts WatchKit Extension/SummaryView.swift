//
//  SummaryView.swift
//  WatchWorkouts WatchKit Extension
//
//  Created by J S on 6/9/21.
//

import SwiftUI

struct SummaryView: View {
    @State private var durationFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.zeroFormattingBehavior = .pad
        
        return formatter
    }()
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical) {
                SummaryMetricView(
                    title: "Total Time",
                    value: durationFormatter.string(from: 30 * 60 + 15) ?? ""
                ).accentColor(.yellow)
                SummaryMetricView(title: "Total Distance",
                                  value: Measurement(value: 1625,
                                                     unit: UnitLength.meters)
                                    .description
                ).accentColor(.green)
                SummaryMetricView(title: "Total Energy",
                                  value: Measurement(
                                    value: 96,
                                    unit: UnitEnergy.kilocalories)
                                    .description
                )
                SummaryMetricView(title: "Avg. Heart Rate",
                                  value: 143.description + " bpm"
                ).accentColor(.red)
                Button("Done") {
                }
            }
            //        .scenePadding()
            .padding()
        }
        .navigationTitle("Summary")
//        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}

struct SummaryMetricView: View {
    var title: String
    var value: String
    
    var body: some View {
        Text(title)
        Text(value)
            .font(.system(.title2, design: .rounded)
                    .lowercaseSmallCaps())
        Divider()
    }
}
