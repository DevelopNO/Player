//
//  Model.swift
//  Player
//
//  Created by Noam Ohana on 18/06/2021.
//

import Foundation
import AVFoundation

class Model {
  let player : AVPlayer
  let item : AVPlayerItem
  let asset : AVAsset

  init() {
    let url = Bundle.main.url(forResource: "example", withExtension: "mp4")
    self.asset = AVAsset(url: url!)
    item = AVPlayerItem(asset: asset)
    self.player = AVPlayer(playerItem: item)
  }

  func play() {
    player.play()
  }

  func seek(to date: Date) {
    player.seek(to: date)
  }

  func pause() {
    player.pause()
  }

  func stop() {
    player.pause()
    player.seek(to: CMTime(seconds: 0, preferredTimescale: 1))
  }
}
