import Html exposing (..)
import Html.Attributes exposing (..)


type alias Model = {x : Int}
type Msg = NoOp

main : Program Never Model Msg
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions }

subscriptions : Model -> Sub Msg
subscriptions model = Sub.none


init : (Model, Cmd Msg)
init = {x = 0} ! []

update : Msg -> Model -> (Model, Cmd Msg)
update msg model = case msg of
  NoOp -> (model, Cmd.none)

view : Model -> Html Msg
view model =
   node "html" []
        [ node "head" []
            [ node "meta" [ charset "utf-8" ]
                []
            , node "link" [ href "css/resume-style.css", rel "stylesheet" ]
                []
            , node "title" []
                [ text "Nolan Cretney - Resume" ]
            ]
        , body [ class "home" ]
            [ div [ class "bg-top" ]
                [ div [ class "container clearfix" ]
                    [ header [ class "logo left" ]
                        [ h1 []
                            [ text "Nolan Cretney" ]
                        ]
                    , nav [ class "right" ]
                        [ ul []
                            [ li []
                                [ a [ href "#work" ]
                                    [ text "Work" ]
                                ]
                            , li []
                                [ a [ href "#contact" ]
                                    [ text "Contact" ]
                                ]
                            , li []
                                [ a [ href "#services" ]
                                    [ text "Services" ]
                                ]
                            , li []
                                [ a [ href "web/index.html" ]
                                    [ text "Web" ]
                                ]
                            ]
                        ]
                    ]
                ]
            , div [ class "bg-middle" ]
                [ div [ class "container clearfix" ]
                    []
                ]
            ]
        ]
