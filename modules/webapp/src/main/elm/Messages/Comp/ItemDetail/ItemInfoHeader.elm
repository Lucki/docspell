module Messages.Comp.ItemDetail.ItemInfoHeader exposing
    ( Texts
    , de
    , gb
    )

import Messages.Basics
import Messages.DateFormat as DF
import Messages.UiLanguage


type alias Texts =
    { basics : Messages.Basics.Texts
    , itemDate : String
    , dueDate : String
    , source : String
    , new : String
    , formatDate : Int -> String
    }


gb : Texts
gb =
    { basics = Messages.Basics.gb
    , itemDate = "Item Date"
    , dueDate = "Due Date"
    , source = "Source"
    , new = "New"
    , formatDate = DF.formatDateLong Messages.UiLanguage.English
    }


de : Texts
de =
    { basics = Messages.Basics.de
    , itemDate = "Dokument Datum"
    , dueDate = "Fälligkeits-Datum"
    , source = "Quelle"
    , new = "Neu"
    , formatDate = DF.formatDateLong Messages.UiLanguage.German
    }
