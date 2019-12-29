module Page.NewInvite.Data exposing
    ( Model
    , Msg(..)
    , State(..)
    , emptyModel
    , isFailed
    , isSuccess
    )

import Api.Model.InviteResult exposing (InviteResult)
import Http


type alias Model =
    { password : String
    , result : State
    }


type State
    = Empty
    | Failed String
    | Success InviteResult


isFailed : State -> Bool
isFailed state =
    case state of
        Failed _ ->
            True

        _ ->
            False


isSuccess : State -> Bool
isSuccess state =
    case state of
        Success _ ->
            True

        _ ->
            False


emptyModel : Model
emptyModel =
    { password = ""
    , result = Empty
    }


type Msg
    = SetPassword String
    | GenerateInvite
    | Reset
    | InviteResp (Result Http.Error InviteResult)
