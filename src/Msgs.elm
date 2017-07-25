module Msgs exposing (..)

{-| Messages `Msgs.elm`


Importieren mit:

    import Msgs exposing (Msg)

    Msgs.Mdl

-}

import Navigation exposing (Location)
import Bootstrap.Navbar as Navbar
import Bootstrap.Modal as Modal

type Msg
    = UrlChange Location
    | NavMsg Navbar.State
    | ModalMsg Modal.State