module Components.Addresses exposing (..)


import Bootstrap.ListGroup as Listgroup
import Bootstrap.Grid as Grid
import Html exposing (..)
import Html.Attributes exposing (..)
-- Components
import Models exposing (Model)
import Msgs exposing (Msg)

pageAddresses : Model -> List (Html Msg)
pageAddresses model =
    [ h1 [] [ text "Adressen" ]
    , Grid.row []
        [ Grid.col []
            [ Listgroup.ul
                (List.map listEntry addresses)
            ]
        ]
    ]


logoPrefix : String
logoPrefix =
    "logos/"


listEntry : { title : String, url : String, contact : String, address : String, email : String, description : String, logo : String } -> Listgroup.Item msg
listEntry address =
    Listgroup.li []
        [ img
            [ src (logoPrefix ++ address.logo)
            , style [ ( "height", "32px" ) ]
            ]
            []
        , a [ href address.url ] [ text address.title ]
        , text address.contact
        , text address.address
        , text address.email
        , text address.description
        ]


addresses : List { title : String, url : String, contact : String, address : String, email : String, description : String, logo : String }
addresses =
    [ { title = "Birgelen", url = "http://www.birgelen.de", contact = "Edwin Bühler", address = "", email = "edwin(bei)birgelen.de", logo = "birgelen.png", description = "Birgelen im Netz" }
    , { title = "Title", url = "", logo = "birgelen.png", contact = "Ansprechpartner", address = "Adresse", email = "ePost", description = "Beschreibung" }
    ]
