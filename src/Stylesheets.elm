port module Stylesheets exposing (..)

import Css.File exposing (CssFileStructure, CssCompilerProgram)
import Bass


port files : CssFileStructure -> Cmd msg


fileStructure : CssFileStructure
fileStructure =
    Css.File.toFileStructure
        [ ( "bass.css", Css.File.compile [ Bass.css ] ) ]


main : CssCompilerProgram
main =
    Css.File.compiler files fileStructure
