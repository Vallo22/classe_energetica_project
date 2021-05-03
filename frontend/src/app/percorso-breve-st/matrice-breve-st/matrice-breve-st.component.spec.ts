import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MatriceBreveStComponent } from './matrice-breve-st.component';

describe('MatriceBreveStComponent', () => {
  let component: MatriceBreveStComponent;
  let fixture: ComponentFixture<MatriceBreveStComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MatriceBreveStComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MatriceBreveStComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
