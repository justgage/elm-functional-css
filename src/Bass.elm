module Bass exposing (..)

import Css exposing (..)
import Css.Elements exposing (body, li)
import Css.Namespace exposing (namespace)


align =
    []


border =
    []


flexbox =
    []


grid =
    []


hide =
    []


layout =
    []


margin =
    []


position =
    []


type TypeScale
    = H1
    | H2
    | H3
    | H4
    | H5
    | H6


typeScale =
    [ class H1 [ fontSize (Css.rem 2.0) ]
    , class H2 [ fontSize (Css.rem 1.5) ]
    , class H3 [ fontSize (Css.rem 1.25) ]
    , class H4 [ fontSize (Css.rem 1.0) ]
    , class H5 [ fontSize (Css.rem 0.875) ]
    , class H6 [ fontSize (Css.rem 0.75) ]
    ]


type Typeography
    = FontFamilyInherit
    | FontSizeInherit
    | TextDecorationNone
    | Bold
    | Regular
    | Italic
    | Caps
    | LeftAlign
    | Center
    | RightAlign
    | Justify
    | NoWrap
    | BreakWord
    | LineHeight1
    | LineHeight2
    | LineHeight3
    | LineHeight4
    | ListStyleNone
    | Underline
    | Truncate
    | ListReset


typeography =
    [ class Bold [ fontWeight Css.bold ]
    , class Regular [ fontWeight Css.normal ]
    , class Italic [ fontStyle Css.italic ]
    , class Caps
        [ textTransform Css.uppercase
        , letterSpacing (em 0.2)
        ]
    , class LeftAlign [ textAlign left ]
    , class RightAlign [ textAlign right ]
    , class Justify [ textAlign textJustify ]
    , class NoWrap [ whiteSpace noWrap ]
    , class BreakWord [ overflowWrap breakWord ]
    , class LineHeight1 [ lineHeight 1 ]
    , class LineHeight2 [ lineHeight 1.125 ]
    , class LineHeight3 [ lineHeight 1.25 ]
    , class LineHeight4 [ lineHeight 1.5 ]
    , class ListStyleNone [ listStyle none ]
    , class Underline [ textDecoration underline ]
    , class Truncate [ maxWidth (pct 100) ]
    ]


css =
    stylesheet <|
        List.concat
            [ typeScale
            , typeography
            ]
