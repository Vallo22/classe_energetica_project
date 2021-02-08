import { CarQuality } from "./car-quality"
import { StrutturaDue } from "./struttura-due"

export class StrutturaTre {
    id: number
    strutturaTre: string
    struttura_due_id: StrutturaDue
    carattQualit: CarQuality[]
}
