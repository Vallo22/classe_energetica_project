import { TestBed } from '@angular/core/testing';

import { RiepilogoCostiCeService } from './riepilogo-costi-ce.service';

describe('RiepilogoCostiCeService', () => {
  let service: RiepilogoCostiCeService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RiepilogoCostiCeService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
