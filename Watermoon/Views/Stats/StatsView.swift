//
//  StatsView.swift
//  Watermoon
//
//  Created by serkan on 28.06.2024.
//import SwiftUI

import SwiftUI
import Charts
struct StatsView: View {
    var body: some View {
        Chart {
            BarMark(x: .value("Type", "bird"),
                    y: .value("Population", 1))
            BarMark(x: .value("Type", "dog"),
                    y: .value("Population", 1))
            BarMark(x: .value("Type", "cat"),
                    y: .value("Population", 2))
        }
        .aspectRatio(1, contentMode: .fit)
        .padding()
    }
    }



#Preview {
    StatsView()
}
