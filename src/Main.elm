module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)



-- MODEL


type alias Project =
    { title : String
    , description : String
    , url : String
    , tags : List String
    , imageUrl : String
    }


type alias ContactInfo =
    { email : String
    , github : String
    , social : String
    }


type alias Model =
    { name : String
    , bio : String
    , projects : List Project
    , showContact : Bool
    }


contactInfo : ContactInfo
contactInfo =
    { email = "kyle@kyleroucis.com"
    , github = "https://github.com/kroucis"
    , social = "N/A"
    }


projects : List Project
projects =
    [ { title = "Project 1"
      , description = "My first awesome project"
      , url = "https://example.com/1"
      , tags = [ "Elm", "Frontend" ]
      , imageUrl = "images/Ch3ssM4tch@1024.png"
      }
    , { title = "Project 2"
      , description = "Another thing I built"
      , url = "https://example.com/2"
      , tags = [ "Design", "UX" ]
      , imageUrl = ""
      }
    ]


initialModel : Model
initialModel =
    { name = "Your Name"
    , bio = "I'm a developer who loves creating cool stuff with Elm!"
    , projects = projects
    , showContact = False
    }



-- UPDATE


type Msg
    = ToggleContact
    | NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        ToggleContact ->
            { model | showContact = not model.showContact }

        NoOp ->
            model



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "app dark-theme" ]
        -- Always dark theme
        [ div [ class "container" ]
            [ header [ class "header" ]
                [ h1 [] [ text model.name ]
                , p [ class "bio" ] [ text model.bio ]
                ]
            , section []
                [ h2 [] [ text "Projects" ]
                , div [ class "projects-grid" ]
                    (List.map viewProject model.projects)
                ]
            , div [ class "action-buttons" ]
                [ button
                    [ class "contact-btn"
                    , onClick ToggleContact
                    ]
                    [ text
                        (if model.showContact then
                            "Hide Contact"

                         else
                            "Show Contact"
                        )
                    ]
                ]
            , if model.showContact then
                div [ class "contact" ]
                    [ h3 [] [ text "Get in touch!" ]
                    , p [] [ text ("Email: " ++ contactInfo.email) ]
                    , p [] [ text ("GitHub: " ++ contactInfo.github) ]
                    , p [] [ text ("Socials: " ++ contactInfo.social) ]
                    ]

              else
                text ""
            ]
        ]


viewProject : Project -> Html Msg
viewProject project =
    div [ class "project-card" ]
        [ img
            [ src project.imageUrl
            , alt project.title
            , class "project-image"
            ]
            []
        , div [ class "project-content" ]
            [ h3 [] [ text project.title ]
            , p [ class "project-description" ] [ text project.description ]
            , div [ class "tags" ]
                (List.map (\tag -> span [ class "tag" ] [ text tag ]) project.tags)
            , a [ href project.url, target "_blank", class "project-link" ]
                [ text "View Project →" ]
            ]
        ]



-- MAIN


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
