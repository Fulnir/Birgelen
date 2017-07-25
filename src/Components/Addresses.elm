module Components.Addresses exposing (..)

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


pageAddresses : Model -> List (Html Msg)
pageAddresses model =
    [ h2 [] [ text "pageAddresses" ]
    ]

