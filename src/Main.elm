module Main exposing (Model, Msg, update, view, subscriptions, init)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)

-- MAIN

main =
  Browser.element
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


-- MODEL

type alias Model =
    { count : Int
    }


init : () -> (Model, Cmd Msg)
init() = 
    ({ count = 0 }, Cmd.none)


-- UPDATE

type Msg
    = Incr
    | Decr


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    Incr ->
      ({ model | count = model.count + 1 }, Cmd.none)

    Decr ->
      ({ model | count = model.count - 1 }, Cmd.none)


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ h1 [] [ text "Counter sample" ]
    , p [] [ text <| String.fromInt model.count ]
    , div []
      [ button [ onClick Incr ] [ text "Incr" ]
      , button [ onClick Decr ] [text "Decr" ]
      ]
    ]


-- SUBSCRIPTION

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none
