module Components.About exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Bootstrap.Grid as Grid
import Bootstrap.Card as Card
import Bootstrap.Button as Button
-- Components
import Msgs exposing (Msg)
import Models exposing (Model)


pageAbout : Model -> List (Html Msg)
pageAbout model =
    [ h1 [] [ text "Über diese Seite" ]
    , Grid.row []
        [ Grid.col []
            [ Card.config [ Card.outlinePrimary ]
                |> Card.headerH4 [] [ text "Impressum" ]
                |> Card.block []
                    [ Card.text [] [ i [class "fa fa-envelope fa-2x", attribute "aria-hidden" "true" ] []
                    , text "Adresse"
                    , text "Getting started is real easy. Just click the start button." 
                    , br [][]
                    , i [class "fa fa-male", attribute "aria-hidden" "true" ] []
                    , text "Edwin Bühler"
                    , i [class "fa fa-envelope-o", attribute "aria-hidden" "true" ] []
                    , text "Edwin" -- <img src="/img/epost.png">
                    , i [class "fa fa-home", attribute "aria-hidden" "true" ] []
                    , text "Op de Berg 27"
                    , i [class "fa fa-map-marker", attribute "aria-hidden" "true" ] []
                    , text "41849 Wassenberg"
                    , i [class "fa fa-globe", attribute "aria-hidden" "true" ] []
                    , text "Deutschland"
                    , i [class "fa fa-phone", attribute "aria-hidden" "true" ] []
                    , text "02432 4122"


                    ]
                    , Card.custom <|
                        text "Start"
                    ]
                |> Card.view
            ]
        ]
    ]