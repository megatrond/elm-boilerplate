module Main exposing  (main)

import Browser exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)

type alias Model = String
initialModel : Model
initialModel = "Hello, folk!"

init : () -> ( Model, Cmd Msg )
init _ =
    ( initialModel, Cmd.none )

type Msg = Noop

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    (model, Cmd.none)

view : Model -> Html Msg
view model =
    h1 [] [text "hello, folks!"] 


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , subscriptions = subscriptions
        , view = view
        , update = update
        }
