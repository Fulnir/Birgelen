module Components.About exposing (..)



import Bootstrap.Button as Button
import Bootstrap.Card as Card
import Bootstrap.Grid as Grid
import Html exposing (..)
import Html.Attributes exposing (..)
import Markdown
-- Components
import Models exposing (Model)
import Msgs exposing (Msg)


pageAbout : Model -> List (Html Msg)
pageAbout model =
    [ h1 [] [ text "Über diese Seite" ]
    , Grid.row []
        [ Grid.col []
            [ Card.config [ Card.outlinePrimary ]
                |> Card.headerH4 [] [ text "Impressum" ]
                |> Card.block []
                    [ Card.text [ style [ ( "text-align", "left" ) ] ]
                        [ i [ class "fa fa-envelope fa-2x", attribute "aria-hidden" "true" ] []
                        , text "Adresse"
                        , br [] []
                        , br [] []
                        , i [ class "fa fa-male", attribute "aria-hidden" "true" ] []
                        , text "Edwin Bühler"
                        , br [] []
                        , i [ class "fa fa-envelope-o", attribute "aria-hidden" "true" ] []
                        , img [ src "epost.png", style [ ( "height", "18px" ) ] ] []
                        , br [] []
                        , i [ class "fa fa-home", attribute "aria-hidden" "true" ] []
                        , text "Op de Berg 27"
                        , br [] []
                        , i [ class "fa fa-map-marker", attribute "aria-hidden" "true" ] []
                        , text "41849 Wassenberg"
                        , br [] []
                        , i [ class "fa fa-globe", attribute "aria-hidden" "true" ] []
                        , text "Deutschland"
                        , br [] []
                        ]
                    , Card.custom <|
                        div [style [ ( "text-align", "left" ) ]] [ markdown ]
                    ]
                |> Card.view
            ]
        ]
    
    ]

markdown : Html msg
markdown =
   Markdown.toHtml [class "content"] """

# Disclaimer – rechtliche Hinweise
## § 1 Haftungsbeschränkung
Die Inhalte dieser Website werden mit größtmöglicher Sorgfalt erstellt. Der Anbieter übernimmt jedoch keine Gewähr für die Richtigkeit, Vollständigkeit und Aktualität der bereitgestellten Inhalte. Die Nutzung der Inhalte der Website erfolgt auf eigene Gefahr des Nutzers. Namentlich gekennzeichnete Beiträge geben die Meinung des jeweiligen Autors und nicht immer die Meinung des Anbieters wieder. Mit der reinen Nutzung der Website des Anbieters kommt keinerlei Vertragsverhältnis zwischen dem Nutzer und dem Anbieter zustande.

## § 2 Externe Links

Diese Website enthält Verknüpfungen zu Websites Dritter (“externe Links”). Diese Websites unterliegen der Haftung der jeweiligen Betreiber. Der Anbieter hat bei der erstmaligen Verknüpfung der externen Links die fremden Inhalte daraufhin überprüft, ob etwaige Rechtsverstöße bestehen. Zu dem Zeitpunkt waren keine Rechtsverstöße ersichtlich. Der Anbieter hat keinerlei Einfluss auf die aktuelle und zukünftige Gestaltung und auf die Inhalte der verknüpften Seiten. Das Setzen von externen Links bedeutet nicht, dass sich der Anbieter die hinter dem Verweis oder Link liegenden Inhalte zu Eigen macht. Eine ständige Kontrolle der externen Links ist für den Anbieter ohne konkrete Hinweise auf Rechtsverstöße nicht zumutbar. Bei Kenntnis von Rechtsverstößen werden jedoch derartige externe Links unverzüglich gelöscht.

## § 3 Urheber- und Leistungsschutzrechte

Die auf dieser Website veröffentlichten Inhalte unterliegen dem deutschen Urheber- und Leistungsschutzrecht. Jede vom deutschen Urheber- und Leistungsschutzrecht nicht zugelassene Verwertung bedarf der vorherigen schriftlichen Zustimmung des Anbieters oder jeweiligen Rechteinhabers. Dies gilt insbesondere für Vervielfältigung, Bearbeitung, Übersetzung, Einspeicherung, Verarbeitung bzw. Wiedergabe von Inhalten in Datenbanken oder anderen elektronischen Medien und Systemen. Inhalte und Rechte Dritter sind dabei als solche gekennzeichnet. Die unerlaubte Vervielfältigung oder Weitergabe einzelner Inhalte oder kompletter Seiten ist nicht gestattet und strafbar. Lediglich die Herstellung von Kopien und Downloads für den persönlichen, privaten und nicht kommerziellen Gebrauch ist erlaubt.

Die Darstellung dieser Website in fremden Frames ist nur mit schriftlicher Erlaubnis zulässig.

## § 4 Besondere Nutzungsbedingungen

Soweit besondere Bedingungen für einzelne Nutzungen dieser Website von den vorgenannten Paragraphen abweichen, wird an entsprechender Stelle ausdrücklich darauf hingewiesen. In diesem Falle gelten im jeweiligen Einzelfall die besonderen Nutzungsbedingungen.

Quelle: **Impressum Muster vom Juraforum**


## Datenschutzerklärung:
### Datenschutz

Nachfolgend möchten wir Sie über unsere Datenschutzerklärung informieren. Sie finden hier Informationen über die Erhebung und Verwendung persönlicher Daten bei der Nutzung unserer Webseite. Wir beachten dabei das für Deutschland geltende Datenschutzrecht. Sie können diese Erklärung jederzeit auf unserer Webseite abrufen.

Wir weisen ausdrücklich darauf hin, dass die Datenübertragung im Internet (z.B. bei der Kommunikation per E-Mail) Sicherheitslücken aufweisen und nicht lückenlos vor dem Zugriff durch Dritte geschützt werden kann.

Die Verwendung der Kontaktdaten unseres Impressums zur gewerblichen Werbung ist ausdrücklich nicht erwünscht, es sei denn wir hatten zuvor unsere schriftliche Einwilligung erteilt oder es besteht bereits eine Geschäftsbeziehung. Der Anbieter und alle auf dieser Website genannten Personen widersprechen hiermit jeder kommerziellen Verwendung und Weitergabe ihrer Daten.

### Personenbezogene Daten

Sie können unsere Webseite ohne Angabe personenbezogener Daten besuchen. Soweit auf unseren Seiten personenbezogene Daten (wie Name, Anschrift oder E-Mail Adresse) erhoben werden, erfolgt dies, soweit möglich, auf freiwilliger Basis. Diese Daten werden ohne Ihre ausdrückliche Zustimmung nicht an Dritte weitergegeben. Sofern zwischen Ihnen und uns ein Vertragsverhältnis begründet, inhaltlich ausgestaltet oder geändert werden soll oder Sie an uns eine Anfrage stellen, erheben und verwenden wir personenbezogene Daten von Ihnen, soweit dies zu diesen Zwecken erforderlich ist (Bestandsdaten). Wir erheben, verarbeiten und nutzen personenbezogene Daten soweit dies erforderlich ist, um Ihnen die Inanspruchnahme des Webangebots zu ermöglichen (Nutzungsdaten). Sämtliche personenbezogenen Daten werden nur solange gespeichert wie dies für den geannten Zweck (Bearbeitung Ihrer Anfrage oder Abwicklung eines Vertrags) erforderlich ist. Hierbei werden steuer- und handelsrechtliche Aufbewahrungsfristen berücksichtigt. Auf Anordnung der zuständigen Stellen dürfen wir im Einzelfall Auskunft über diese Daten (Bestandsdaten) erteilen, soweit dies für Zwecke der Strafverfolgung, zur Gefahrenabwehr, zur Erfüllung der gesetzlichen Aufgaben der Verfassungsschutzbehörden oder des Militärischen Abschirmdienstes oder zur der Rechte am geistigen Eigentum erforderlich ist.</p><p>Auskunftsrecht
Sie haben das jederzeitige Recht, sich unentgeltlich und unverzüglich über die zu Ihrer Person erhobenen Daten zu erkundigen. Sie haben das jederzeitige Recht, Ihre Zustimmung zur Verwendung Ihrer angegeben persönlichen Daten mit Wirkung für die Zukunft zu widerrufen. Zur Auskunftserteilung wenden Sie sich bitte an den Anbieter unter den Kontaktdaten im Impressum.

_Copyright © 2017 Edwin Bühler_

"""