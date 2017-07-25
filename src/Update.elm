module Update exposing (..)

{-| Update `Update.elm`


Importieren mit:

    import Update exposing (Update)


-}

import Material
-- Components
import Msgs exposing (Msg)
import Models exposing (Model)

---- UPDATE ----

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.Mdl msg_ ->
            Material.update Msgs.Mdl msg_ model

        Msgs.SelectTab num ->
            { model | selectedTab = num } ! []

