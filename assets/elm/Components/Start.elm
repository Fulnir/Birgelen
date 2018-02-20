module Components.Start exposing (..)



import Bootstrap.Button as Button
import Bootstrap.Card as Card
import Bootstrap.Grid as Grid
import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown
-- Components
import Models exposing (Model)
import Msgs exposing (Msg)


pageHome : Model -> List (Html Msg)
pageHome model =
    [ h1 [] [ text "Willkommen" ]
    , Grid.row []
        [ Grid.col []
            [
              img [ src "/images/wagberg.png", style [ ( "height", "600px" ) , ( "width", "800px" ) ]  ] []
            ]
        ]
    ]
