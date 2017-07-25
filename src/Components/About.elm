module Components.About exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Material.Card as Card
import Material.Elevation as Elevation
import Material.Color as Color
import Material.Typography as Typography
import Material.List as MdlList
-- Components
import Msgs exposing (Msg)
import Models exposing (Model)



viewAbout : Model -> Html Msg
viewAbout model =
    div
        [ style [ ( "padding", "2rem" ) ] ]
        [ h1 [] [ text "Über" ]
        , viewMachine
        ]


viewMachine : Html.Html Msg
viewMachine  =
    Card.view
        [ Elevation.e2
        ]
        [ Card.title [] [ Card.head [ Color.text Color.black ] [ Html.text "machine.name" ] ]
        , Card.text [ Card.expand, Color.text Color.black, Typography.headline ]
            [ MdlList.ul []
                [ MdlList.li [] [ Html.text "machine.manufacturer" ]
                ]
            ]
        , Card.actions [] []
        ]