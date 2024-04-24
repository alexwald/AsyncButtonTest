//
//  AsyncButton.swift
//  AsyncButtonTest
//
//  Created by alex on 23/04/2024.
//
import SwiftUI

struct AsyncButton<Label: View, Trigger: Equatable>: View {
    var cancellation: Trigger
    let action: () async -> Void
    let label: Label
    
    @State private var task: Task<Void, Never>?
    @State private var isRunning = false
    
    init(
        cancellation: Trigger = false,
        action: @escaping () async -> Void,
        @ViewBuilder label: () -> Label
    ) {
        self.cancellation = cancellation
        self.action = action
        self.label = label()
    }
    
    var body: some View {
        Button {
            isRunning = true
            task = Task {
                await action()
                isRunning = false
            }
        } label: {
            label
        }
        .disabled(isRunning)
        .onChange(of: cancellation) {
            task?.cancel()
        }
    }
}
