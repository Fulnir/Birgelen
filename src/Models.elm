module Models exposing (..)

{-| Models `Models.elm`


Importieren mit:

    import Models exposing (Update)


-}

import Material
-- Components
import Msgs exposing (Msg)


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
