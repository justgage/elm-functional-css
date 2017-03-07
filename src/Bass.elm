module Bass exposing (..)

import Css exposing (..)
import Css.Elements exposing (body, li)
import Css.Namespace exposing (namespace)


type Classes
    = H1
    | H2
    | H3
    | H4
    | H5
    | H6
    | Bold
    | Regular
    | Italic
    | Caps


css =
    stylesheet
        -- type-scale
        [ class H1 [ fontSize (Css.rem 2.0) ]
        , class H2 [ fontSize (Css.rem 1.5) ]
        , class H3 [ fontSize (Css.rem 1.25) ]
        , class H4 [ fontSize (Css.rem 1.0) ]
        , class H5 [ fontSize (Css.rem 0.875) ]
        , class H6 [ fontSize (Css.rem 0.75) ]
          -- typeography
        , class Bold [ fontWeight Css.bold ]
        , class Regular [ fontWeight Css.normal ]
        , class Italic [ fontStyle Css.italic ]
        , class Caps [ textTransform Css.uppercase, letterSpacing (em 0.2) ]
        ]
