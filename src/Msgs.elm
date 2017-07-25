module Msgs exposing (..)

{-| Messages `Msgs.elm`


Importieren mit:

    import Msgs exposing (Msg)

    Msgs.Mdl

-}


import Material

type Msg
    = Mdl (Material.Msg Msg)
    | SelectTab Int