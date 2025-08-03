//
//  CircularProgressView.swift
//  Refactored Poject
//
//  Created by garyrobertellis on 8/2/25.
//



struct CircularProgressView: View {
    let value: Double
    var body: some View {
        Circle()
            .trim(from: 0.0, to: CGFloat(value))
            .stroke(Color.blue, lineWidth: 5)
            .rotationEffect(.degrees(-90))
    }
}
