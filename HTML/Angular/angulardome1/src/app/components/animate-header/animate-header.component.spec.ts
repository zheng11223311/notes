import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AnimateHeaderComponent } from './animate-header.component';

describe('AnimateHeaderComponent', () => {
  let component: AnimateHeaderComponent;
  let fixture: ComponentFixture<AnimateHeaderComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AnimateHeaderComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AnimateHeaderComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
