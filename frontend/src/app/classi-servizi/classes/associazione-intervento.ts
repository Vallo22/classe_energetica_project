import { StrutturaTre } from "./strutture/struttura-tre";
import { Intervento } from "./intervento";
import { CaratteristicheQualitative } from "./caratteristiche-qualitative"; 

export class AssociazioneIntervento {
    intervento: Intervento
    caratteristicaAssociazioneIntervento: CaratteristicheQualitative
    strutturaAssociazione: StrutturaTre
    
    modicitaDiCosto: number|number[]
}
