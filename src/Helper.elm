module Helper exposing (..)


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Delayed ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction estado =
    List.map airplaneScheduleAction estado


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade calificacion =
    List.map
        (\cal ->
            if cal < 0 then
                Failed

            else if cal >= 7 then
                Approved

            else
                Pending
        )
        calificacion
