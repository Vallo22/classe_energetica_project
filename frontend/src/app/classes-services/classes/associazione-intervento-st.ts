import { CaratteristicheQualitativeSt } from "./caratteristiche-qualitative-st"
import { InterventoSt } from "./intervento-st"
import { StrutturaSt } from "./structure/struttura-st"

export class AssociazioneInterventoSt {
    intervento: InterventoSt
    caratteristicaAssociazioneIntervento: CaratteristicheQualitativeSt
    strutturaAssociazione: StrutturaSt
    modicitaDiCosto: number|number[]
    efficacia: number|number[]
    supIntonacate: number|number[]
    supVista: number|number[]
    reversibilita: number|number[]
    semplicitaDiCantiere: number|number[]
    esiguitaDiIngombro: number|number[]
    totale: number[]
    variante: string
    varianti?: string[]
    maxVariante?: number
    minVariante?: number
    ante?: number
    post?: number
    prezzo: number
    prezzoSupInt: number
    prezzoEntrInt: number
    unitaMisura: string
    valoreCifra?: number
    costoInvestimentoTotale?: number
    passaggio: number
    ugualeA0?: boolean = false
    tipo_superficie?: number = 0
}
