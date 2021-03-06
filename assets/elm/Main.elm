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
import Html.Events exposing (onClick)
import Navigation exposing (Location)
import Bootstrap.CDN as CDN
import Bootstrap.Navbar as Navbar
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Bootstrap.Card as Card
import Bootstrap.Button as Button
import Bootstrap.ListGroup as Listgroup
import Bootstrap.Modal as Modal


-- Components
import Components.Start exposing (..)
import Components.About exposing (..)
import Components.Addresses exposing (..)
import Msgs exposing (Msg)
import Update exposing (update)
import Models exposing (Model, Page)
import Routing exposing (..)


---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ menu model
        , mainContent model
        , modal model
        ]
menu : Model -> Html Msg
menu model =
    Navbar.config Msgs.NavMsg
        |> Navbar.withAnimation
        |> Navbar.container
        |> Navbar.collapseMedium            -- Collapse menu at the medium breakpoint
        -- |> Navbar.info                      -- Customize coloring
        |> Navbar.brand                     -- Add logo to your brand with a little styling to align nicely
            [ href "#" ]
            [ img
                [ src "/images/logo.png"
                , class "d-inline-block align-center"
                -- , style [ ( "width", "30px" ) ]
                , style [ ( "width", "30px" ) , ( "margin-top", "8px" ) ]
                ]
                []
            , text " Birgelen"
            ]
        |> Navbar.items
            [ Navbar.itemLink [ href "#addresses" ] [ text "Adressen" ]
            , Navbar.itemLink [ href "#about" ] [ text "Über" ]
            ]
        |> Navbar.view model.navState


mainContent : Model -> Html Msg
mainContent model =
    Grid.container [] <|
        case model.page of
            Models.Home ->
                pageHome model

            Models.Addresses ->
                pageAddresses model
            
            Models.About ->
                pageAbout model

            Models.NotFound ->
                pageNotFound

-- TODO: Diese Seite gestalten.
pageNotFound : List (Html Msg)
pageNotFound =
    [ h1 [] [ text "Not found" ]
    , text "Sorry couldn't find that page"
    ]


modal : Model -> Html Msg
modal model =
    Modal.config Msgs.ModalMsg
        |> Modal.small
        |> Modal.h4 [] [ text "Getting started ?" ]
        |> Modal.body []
            [ Grid.containerFluid []
                [ Grid.row []
                    [ Grid.col
                        [ Col.xs6 ]
                        [ text "Col 1" ]
                    , Grid.col
                        [ Col.xs6 ]
                        [ text "Col 2" ]
                    ]
                ]
            ]
        |> Modal.view model.modalState

---- PROGRAM ----

main : Program Never Model Msg
main =
    Navigation.program Msgs.UrlChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : Location -> ( Model, Cmd Msg )
init location =
    let
        ( navState, navCmd ) =
            Navbar.initialState Msgs.NavMsg

        ( model, urlCmd ) =
            Routing.urlUpdate location { navState = navState, page = Models.Home, modalState = Modal.hiddenState }
    in
        ( model, Cmd.batch [ urlCmd, navCmd ] )

subscriptions : Model -> Sub Msg
subscriptions model =
    Navbar.subscriptions model.navState Msgs.NavMsg
