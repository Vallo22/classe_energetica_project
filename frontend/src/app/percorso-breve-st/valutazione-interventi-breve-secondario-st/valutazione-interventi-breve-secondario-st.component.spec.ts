import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ValutazioneInterventiBreveSecondarioStComponent } from './valutazione-interventi-breve-secondario-st.component';

describe('ValutazioneInterventiBreveSecondarioStComponent', () => {
  let component: ValutazioneInterventiBreveSecondarioStComponent;
  let fixture: ComponentFixture<ValutazioneInterventiBreveSecondarioStComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ValutazioneInterventiBreveSecondarioStComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ValutazioneInterventiBreveSecondarioStComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
