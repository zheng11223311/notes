import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AnimateTransitionComponent } from './animate-transition.component';

describe('AnimateTransitionComponent', () => {
  let component: AnimateTransitionComponent;
  let fixture: ComponentFixture<AnimateTransitionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AnimateTransitionComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AnimateTransitionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
