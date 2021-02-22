import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { PerformanceEnergeticaComponent } from './performance-energetica.component';

describe('PerformanceEnergeticaComponent', () => {
  let component: PerformanceEnergeticaComponent;
  let fixture: ComponentFixture<PerformanceEnergeticaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ PerformanceEnergeticaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(PerformanceEnergeticaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
