import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AnimateViewChildComponent } from './animate-view-child.component';

describe('AnimateViewChildComponent', () => {
  let component: AnimateViewChildComponent;
  let fixture: ComponentFixture<AnimateViewChildComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AnimateViewChildComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AnimateViewChildComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
