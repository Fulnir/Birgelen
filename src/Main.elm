module Main exposing (..)

{-| Dies ist das Hauptfile `Main.elm`


# Definition

@docs Maybe


# Common Helpers

@docs map, withDefault, oneOf


# Chaining Maybes

@docs andThen

-}

import Html exposing (..)
import Html.Attributes exposing (..)
import Material
import Material.Button as Button
import Material.Card as Card
import Material.Color as Color
import Material.Elevation as Elevation
import Material.Layout as Layout
import Material.Options as Options exposing (css)
import Material.Scheme
import Material.Typography as Typography
import Material.List as MdlList
-- Components
import Components.About exposing (..)
import Msgs exposing (Msg)
import Update exposing (update)
import Models exposing (Model)



---- VIEW ----


view : Model -> Html Msg
view model =
    Material.Scheme.topWithScheme Color.Indigo Color.Blue <|
        Layout.render Msgs.Mdl
            model.mdl
            [ Layout.fixedHeader
            , Layout.selectedTab model.selectedTab
            , Layout.onSelectTab Msgs.SelectTab
            ]
            { header =
                [ h1 [ style [ ( "padding", "1rem" ) ] ]
                    [ img [ src "logo.png", style [ ( "width", "64px" ) ] ] [], text "  ", text "Birgelen" ]
                ]
            , drawer = []
            , tabs =
                ( [ text "Start", text "Über" ]
                , [ Color.background (Color.color Color.LightGreen Color.S400) ]
                )
            , main = [ viewBody model ]
            }


viewBody : Model -> Html Msg
viewBody model =
    case model.selectedTab of
        0 ->
            viewStart model

        1 ->
            viewAbout model

        _ ->
            text "404"


viewStart : Model -> Html Msg
viewStart model =
    div
        [ style [ ( "padding", "2rem" ) ] ]
        [ h1 [] [ text "Willkommen" ]
        , img [ src "logo.png" ] []
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { init = ( Models.model, Cmd.none )
        , view = view
        , subscriptions = always Sub.none
        , update = update
        }
