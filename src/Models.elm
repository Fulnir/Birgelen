module Models exposing (..)

{-| Models `Models.elm`


Importieren mit:

    import Models exposing (Update)


-}

import Bootstrap.Navbar as Navbar
import Bootstrap.Modal as Modal
import Navigation exposing (Location)
-- Components
import Msgs exposing (Msg)


type Page
    = Home
    | GettingStarted
    | Addresses
    | About
    | NotFound

---- MODEL ----

type alias Model =
    { page : Page
    , navState : Navbar.State
    , modalState : Modal.State
    }






