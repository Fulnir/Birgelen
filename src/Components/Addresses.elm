module Components.Addresses exposing (..)

-- Components

import Bootstrap.Grid as Grid
import Bootstrap.ListGroup as Listgroup
import Html exposing (..)
import Html.Attributes exposing (..)
import Models exposing (Model)
import Msgs exposing (Msg)

-- ? Hover Info ????
pageAddresses : Model -> List (Html Msg)
pageAddresses model =
    [ br [] []
    , br [] []
    , h1 [] [ text "Adressen" ]
    , Grid.row []
        [ Grid.col []
            [ Listgroup.ul
                (List.map listEntry (List.sortBy .title addresses )) -- (List.sortBy .title (List.map listEntry addresses)) -- List.sortBy getVal dicts
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
        , div [class "address-title"] [a [ href address.url ] [ text address.title ]]
        , div [class "address-contact"]  [ text address.contact ]
        , div [class "address-address"]  [ text address.address]
        , div [class "address-email"]  [ text address.email]
        , div [class "address-description"]  [ text address.description]
        ]


addresses : List { title : String, url : String, contact : String, address : String, email : String, description : String, logo : String }
addresses =
    [ { title = "Birgelen"
      , url = "http://www.birgelen.de"
      , contact = "Edwin Bühler"
      , address = ""
      , email = "edwin(bei)birgelen.de"
      , logo = "birgelen.png"
      , description = "Birgelen im Netz"
      }
    , { title = "Title"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Ansprechpartner"
      , address = "Adresse"
      , email = "ePost"
      , description = "Beschreibung"
      }
    ]
