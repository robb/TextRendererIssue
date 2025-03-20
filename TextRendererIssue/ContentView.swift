//
//  ContentView.swift
//  TextRendererIssue
//
//  Created by Robb Böhnke on 20.03.25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Hello, world!")

      Text("Hello, world!")
        .textSelection(.enabled)
    }
    .textRenderer(BorderRenderer())
    .padding()
  }
}

struct BorderRenderer: TextRenderer {
  func draw(layout: Text.Layout, in ctx: inout GraphicsContext) {
    for line in layout {
      ctx.stroke(Path(line.typographicBounds.rect), with: .color(.blue))

      ctx.draw(line)
    }
  }
}

#Preview {
  ContentView()
}
