import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TipoStrutturaComponent } from './tipo-struttura.component';

describe('TipoStrutturaComponent', () => {
  let component: TipoStrutturaComponent;
  let fixture: ComponentFixture<TipoStrutturaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TipoStrutturaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TipoStrutturaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
