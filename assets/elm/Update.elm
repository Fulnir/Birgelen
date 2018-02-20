module Update exposing (..)

{-| Update `Update.elm`


Importieren mit:

    import Update exposing (Update)


-}

import Navigation exposing (Location)
import Bootstrap.Navbar as Navbar
import Bootstrap.Modal as Modal

-- Components
import Msgs exposing (Msg)
import Models exposing (Model)
import Routing exposing (..)

---- UPDATE ----

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.UrlChange location ->
            urlUpdate location model

        Msgs.NavMsg state ->
            ( { model | navState = state }
            , Cmd.none
            )

        Msgs.ModalMsg state ->
            ( { model | modalState = state }
            , Cmd.none
            )


