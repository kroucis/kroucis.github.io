module Posts exposing (Post, all)

import Html exposing (..)
import Html.Attributes exposing (..)


type alias Post =
    { slug : String
    , title : String
    , date : String
    , summary : String
    , tags : List String
    , body : Html Never
    }



-- Add new posts to this list.
-- Each post's body is plain Html — use the helpers below or write your own.


all : List Post
all =
    [ { slug = "hello-world"
      , title = "Hello, World"
      , date = "2024-03-01"
      , summary = "The first post. Mostly proving the plumbing works."
      , tags = [ "meta" ]
      , body = postHelloWorld
      }
    ]



-- To add a new post:
--   1. Write a new `postYourTitle : Html Never` value below
--   2. Add it to the `all` list above


postHelloWorld : Html Never
postHelloWorld =
    div []
        [ p [] [ text "Welcome. This post exists mostly to prove the plumbing works." ]
        , p [] [ text "More soon." ]
        ]
