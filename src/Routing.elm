module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)

import Models exposing (Model,Page)
import Msgs exposing (Msg)



urlUpdate : Navigation.Location -> Model -> ( Model, Cmd Msg )
urlUpdate location model =
    case decode location of
        Nothing ->
            ( { model | page = Models.NotFound }, Cmd.none )

        Just route ->
            ( { model | page = route }, Cmd.none )


decode : Location -> Maybe Page
decode location =
    UrlParser.parseHash routeParser location


routeParser : UrlParser.Parser (Page -> a) a
routeParser =
    UrlParser.oneOf
        [ UrlParser.map Models.Home UrlParser.top
        , UrlParser.map Models.GettingStarted (UrlParser.s "getting-started")
        , UrlParser.map Models.Addresses (UrlParser.s "addresses")
        , UrlParser.map Models.About (UrlParser.s "about")
        ]


