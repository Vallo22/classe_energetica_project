import { TestBed } from '@angular/core/testing';

import { PerformanceEnergeticaService } from './performance-energetica.service';

describe('PerformanceEnergeticaService', () => {
  let service: PerformanceEnergeticaService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(PerformanceEnergeticaService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
