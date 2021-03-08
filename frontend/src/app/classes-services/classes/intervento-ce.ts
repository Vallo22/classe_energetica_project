import { AttrezzatureAssociateCe } from "./attrezzature-associate-ce"

export class InterventoCe {
    id: number
    codice: string
    descrizione: string
    appunto: string
    attrezzatureAssociate: AttrezzatureAssociateCe
}
