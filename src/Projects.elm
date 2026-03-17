-- Copyright © Kyle Roucis 2026
-- Created with assistance from Claude.ai Sonnet 4.6 (https://claude.ai)


module Projects exposing (Project, all)

import Images


type alias Project =
    { slug : String
    , title : String
    , year : String
    , image : String
    , summary : String
    , description : String
    , tags : List String
    , github : Maybe String
    , urls : List ( String, String )
    }


all : List Project
all =
    [ { slug = "clockwork"
      , title = "Clockwork Game Engine - App / Library - iOS (Android pending)"
      , year = "In Development 2026"
      , image = Images.clockwork
      , summary = "2D mobile-focused game engine written entirely in Swift."
      , description = "<TODO>"
      , tags = [ "iOS", "macOS", "Swift", "Metal", "Clockwork Game Engine", "AppKit", "SwiftUI" ]
      , github = Nothing
      , urls =
            [ ( "Talk on Clockwork", "https://drive.google.com/file/d/1hqxlNsHsfF_4p6zIAkUBCEOXeRX1hG3t/view" )
            ]
      }
    , { slug = "starcross"
      , title = "Starcross - Game - iOS (Android pending)"
      , year = "Alpha 2026"
      , image = Images.starcross
      , summary = "Mobile bullet-hell rogue-like."
      , description = "<TODO>"
      , tags = [ "iOS", "macOS", "Swift", "Clockwork Game Engine", "App Store" ]
      , github = Nothing
      , urls =
            [ ( "TestFlight BETA", "https://testflight.apple.com/join/Kqa2PEJj" )
            ]
      }
    , { slug = "pixel-forge"
      , title = "Pixel Forge - Graphics Tool - macOS"
      , year = "Released 2024"
      , image = Images.pixel_forge
      , summary = "Metal-based shader creation tool."
      , description = "<TODO>"
      , tags = [ "macOS", "Swift", "Metal", "AppKit", "SwiftUI", "App Store" ]
      , github = Nothing
      , urls =
            [ ( "App Store", "https://apps.apple.com/us/app/pixel-forge/id6473090142?mt=12" )
            ]
      }
    , { slug = "simple-swaps"
      , title = "Simple Swaps - Game - iOS & Android"
      , year = "Released 2024"
      , image = Images.simple_swaps
      , summary = "Block swapping and pattern matching game focused on engine features and simplicity."
      , description = "<TODO>"
      , tags = [ "iOS", "Android", "Swift", "Metal", "Android NDK", "Kotlin", "OpenGL", "Clockwork Game Engine", "App Store", "Google Play" ]
      , github = Nothing
      , urls =
            [ ( "App Store", "https://apps.apple.com/tr/app/ch3ss-m4tch/id1604265608" )
            ]
      }
    , { slug = "ch3ss-m4tch"
      , title = "Ch3ss M4tch - Game - macOS & iOS & Android"
      , year = "Released 2023"
      , image = Images.ch3ss_m4tch
      , summary = "Competitive match-3 game based loosely on chess. First Clockwork-based game."
      , description = "<TODO>"
      , tags = [ "iOS", "Android", "macOS", "Swift", "Metal", "Android NDK", "Kotlin", "OpenGL", "Clockwork Game Engine", "App Store", "Google Play" ]
      , github = Nothing
      , urls =
            [ ( "App Store", "https://apps.apple.com/tr/app/ch3ss-m4tch/id1604265608" )
            ]
      }
    , { slug = "seeds-of-earth"
      , title = "Seeds of Earth: The Singular Anomaly - Game - Windows & macOS (Unreal Engine 5)"
      , year = "In Development 2022"
      , image = Images.seeds_of_earth
      , summary = "2.5D spaceship combat action RPG"
      , description = "<TODO>"
      , tags = [ "UE4", "UE5", "Blueprints", "UE C++" ]
      , github = Nothing
      , urls =
            [ ( "Combat Teaser Trailer", "https://www.youtube.com/watch?v=o79_4Z6f5vA" )
            ]
      }
    ]
