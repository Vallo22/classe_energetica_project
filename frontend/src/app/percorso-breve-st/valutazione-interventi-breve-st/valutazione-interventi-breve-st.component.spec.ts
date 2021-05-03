import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ValutazioneInterventiBreveStComponent } from './valutazione-interventi-breve-st.component';

describe('ValutazioneInterventiBreveStComponent', () => {
  let component: ValutazioneInterventiBreveStComponent;
  let fixture: ComponentFixture<ValutazioneInterventiBreveStComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ValutazioneInterventiBreveStComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ValutazioneInterventiBreveStComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
