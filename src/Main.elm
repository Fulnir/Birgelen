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
import Material.Scheme
import Material.Button as Button
import Material.Options as Options exposing (css)
import Material.Layout as Layout
import Material.Color as Color

---- MODEL ----


type alias Model =
    { mdl :
        Material.Model
        , selectedTab : Int
    }

model : Model
model =
    { mdl =
        Material.model
    , selectedTab = 0
    }

init : ( Model, Cmd Msg )
init =
    ( model, Cmd.none )



---- UPDATE ----


type Msg
    = Mdl (Material.Msg Msg)
    | SelectTab Int


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Mdl msg_ ->
            Material.update Mdl msg_ model

        SelectTab num ->
            { model | selectedTab = num } ! []



---- VIEW ----


view : Model -> Html Msg
view model =
    Material.Scheme.topWithScheme Color.Indigo Color.Blue <|
        Layout.render Mdl
            model.mdl
            [ Layout.fixedHeader
            , Layout.selectedTab model.selectedTab
            , Layout.onSelectTab SelectTab
            ]
            { header = [ h1 [ style [ ( "padding", "1rem" ) ] ] 
                [ img [ src "logo.png" , style [ ("width", "64px") ] ] [] , text "  ",text "Birgelen"] ]
            , drawer = []
            , tabs = ( [ text "Start", text "Über" ]
                    , [Color.background (Color.color Color.LightGreen Color.S400)] )
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

viewAbout : Model -> Html Msg
viewAbout model =
    div
        [ style [ ( "padding", "2rem" ) ] ]
        [ h1 [] [ text "Über" ] 
        
        ]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { init = ( model, Cmd.none )
        , view = view
        , subscriptions = always Sub.none
        , update = update
        }
