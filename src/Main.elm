module Main exposing (..)

import Browser
import Html exposing (Html, div, text)



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update _ model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view _ =
    div []
        [ text "Hello person" ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.application
        { view = \model -> { title = "City Game", body = [ view model ] }
        , init = \_ _ _ -> ( {}, Cmd.none )
        , update = \_ model -> ( model, Cmd.none )
        , subscriptions = always Sub.none
        , onUrlRequest = \_ -> NoOp
        , onUrlChange = \_ -> NoOp
        }
