import { StrutturaTre } from "./strutture/struttura-tre";
import { Intervento } from "./intervento";
import { CaratteristicheQualitative } from "./caratteristiche-qualitative"; 

export class AssociazioneIntervento {
    intervento: Intervento
    caratteristicaAssociazioneIntervento: CaratteristicheQualitative
    strutturaAssociazione: StrutturaTre
    
    modicitaDiCosto: number|number[]
    efficacia: number|number[]
    supIntonacate: number|number[]
    supEvIi: number|number[]
    supIvEi: number|number[]
    reversibilita: number|number[]
    semplicitaDiCantiere: number|number[]
    esiguitaDiIngombro: number|number[]

    totale: number[]
    varianti?: string[]
    variante: string

    maxVariante?: number
    minVariante?: number
}
