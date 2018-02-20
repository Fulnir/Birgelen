module Components.Addresses exposing (..)

-- Components

import Bootstrap.Grid as Grid
import Bootstrap.ListGroup as Listgroup
import Bootstrap.Table as Table
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
            [ Table.simpleTable
                ( Table.simpleThead
                    [ Table.th [] [ text "Logo" ]
                    , Table.th [] [ text "Name" ]
                    , Table.th [] [ text "Beschreibung" ]
                    , Table.th [] [ text "Ansprechpartner" ]
                    , Table.th [] [ text "Adresse" ]
                    , Table.th [] [ text "ePost" ]
                    ]
                , Table.tbody [ style [ ( "text-align", "left" ) ]]
                    (List.map tableEntry (List.sortBy .title addresses))
                )
            ]
        ]
    ]


logoPrefix : String
logoPrefix =
    "images/logos/"


tableEntry : { title : String, url : String, contact : String, address : String, email : String, description : String, logo : String } -> Table.Row msg
tableEntry address =
    Table.tr []
        [ Table.td []
            [ img
                [ src (logoPrefix ++ address.logo)
                , style [ ( "height", "32px" ) ]
                ]
                []
            ]
        , Table.td [] [ if String.isEmpty address.url then  text address.title  else (a [ href address.url ] [ text address.title ]) ]
        , Table.td [] [ text address.description ]
        , Table.td [] [ text address.contact ]
        , Table.td [] [ text address.address ]
        , Table.td [] [ text address.email ]
        
        ]



-- Listgroup.ul (List.map listEntry (List.sortBy .title addresses ))

-- Obsolete
listEntry : { title : String, url : String, contact : String, address : String, email : String, description : String, logo : String } -> Listgroup.Item msg
listEntry address =
    Listgroup.li []
        [ img
            [ src (logoPrefix ++ address.logo)
            , style [ ( "height", "32px" ) ]
            ]
            []
            -- Was wenn keine url vorhanden ?
        , if String.isEmpty address.url then (div [ class "address-title" ] [ text address.title ]) else div [ class "address-title" ] [ a [ href address.url ] [ text address.title ] ]
        , div [ class "address-contact" ] [ text address.contact ]
        , div [ class "address-address" ] [ text address.address ]
        , div [ class "address-email" ] [ text address.email ]
        , div [ class "address-description" ] [ text address.description ]
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
    , { title = "Dorffreunde Birgelen e.V."
      , url = "http://dorffreunde-birgelen.de/"
      , logo = "birgelen.png"
      , contact = ""
      , address = ""
      , email = "info@dorffreunde-birgelen.de"
      , description = ""
      }
      , { title = "F.C. Concordia 1914 Birgelen e.V. "
      , url = ""
      , logo = "birgelen.png"
      , contact = "Andreas Paulus"
      , address = "Jahnstraße 7"
      , email = ""
      , description = ""
      }
      , { title = "Feuerwehrtauchverein Birgelen e.V."
      , url = ""
      , logo = "birgelen.png"
      , contact = "Peter Thissen"
      , address = "Lambertusstraße 55"
      , email = ""
      , description = ""
      }
      , { title = "Förderverein des Kindergartens St. Lambertus Birgelen"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Heinz-Dieter Ohlenforst"
      , address = "Lambertusstraße 19"
      , email = ""
      , description = ""
      }
      , { title = "Freiwillige Feuerwehr Birgelen"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Dirk Müller"
      , address = "Mittlerer Weg 23"
      , email = ""
      , description = ""
      }
      , { title = "Kath. Frauengemeinschaft Birgelen"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Irmgard Becker"
      , address = "Auf dem Feldchen 6"
      , email = ""
      , description = ""
      }
      , { title = "Kirchenchor Cäcilie Birgelen"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Matthias Pastoors"
      , address = "Rosenthaler Straße 78"
      , email = ""
      , description = ""
      }
      , { title = "Musikverein Eintracht Birgelen e.V."
      , url = "http://www.musikverein-birgelen.de/"
      , logo = "birgelen.png"
      , contact = "Frank Kämpfer"
      , address = "AdreHeinrich Giesen Straße 7se"
      , email = ""
      , description = ""
      }
      , { title = "Ortsring Birgelen"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Heinrich Thissen"
      , address = "Lambertusstr. 91"
      , email = ""
      , description = ""
      }
      , { title = "Briefmarkenfreunde Birgelen e.V."
      , url = ""
      , logo = "birgelen.png"
      , contact = "Franz-Josef Breuer"
      , address = "Jahnstraße 9"
      , email = ""
      , description = ""
      }
      , { title = "Schützenbruderschaft St. Lambertus Birgelen"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Karl-Heinz Dohmen"
      , address = "Mahrstraße 21"
      , email = ""
      , description = ""
      }
      , { title = "Theatergruppe Birgelen"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Astrid Bärmann "
      , address = "Am Kulenberg 8"
      , email = ""
      , description = ""
      }
      , { title = "Trommler- und Pfeifercorps Birgelen"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Andre Honigs"
      , address = ""
      , email = ""
      , description = ""
      }
      , { title = "TTC Birgelen-Ophoven"
      , url = ""
      , logo = "birgelen.png"
      , contact = "Christian Erdner"
      , address = "Kreuzbuschstraße 8"
      , email = "ePost"
      , description = "Beschreibung"
      }
      , { title = "VdK Ortsverband Wassenberg-Birgelen"
      , url = "http://www.vdk.de/kv-heinsberg/ID3584"
      , logo = "birgelen.png"
      , contact = "Günter Kirstein"
      , address = "Mittlerer Weg 48"
      , email = ""
      , description = ""
      }
      , { title = "Messdiener"
      , url = ""
      , logo = "birgelen.png"
      , contact = ""
      , address = ""
      , email = ""
      , description = ""
      }
      , { title = "Grundschule Birgelen"
      , url = ""
      , logo = "birgelen.png"
      , contact = ""
      , address = ""
      , email = ""
      , description = ""
      }
      , { title = "Kindergarten St. Lambertus"
      , url = "http://www.kindergarten-birgelen.de/"
      , logo = "birgelen.png"
      , contact = ""
      , address = ""
      , email = ""
      , description = ""
      }
      , { title = "Birgelen Veterans Association"
      , url = "http://www.birgelenvets.org/"
      , logo = "birgelen.png"
      , contact = ""
      , address = ""
      , email = ""
      , description = ""
      }
    ]

