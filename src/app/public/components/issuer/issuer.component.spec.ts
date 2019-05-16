// tslint:disable
import { async, ComponentFixture, TestBed } from '@angular/core/testing';
import { Injectable, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { CommonModule, isPlatformBrowser } from '@angular/common';
import { By } from '@angular/platform-browser';
// import { Observable } from 'rxjs/Observable';
// import 'rxjs/add/observable/of';
// import 'rxjs/add/observable/throw';

import {Component, Directive, Injector} from '@angular/core';
import {PublicIssuerComponent} from './issuer.component';
import {EmbedService} from '../../../common/services/embed.service';
import {AppConfigService} from '../../../common/app-config.service';
import {Title} from '@angular/platform-browser';
import { RouterTestingModule } from "@angular/router/testing";
import { COMMON_IMPORTS } from "../../../common/badgr-common.module";
import { COMMON_MOCKS_PROVIDERS_WITH_SUBS } from "../../../mocks/mocks.module";


describe('PublicIssuerComponent', () => {
  let fixture;
  let component;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [
        PublicIssuerComponent
      ],
			imports: [
				RouterTestingModule,
				CommonModule,
				...COMMON_IMPORTS,
			],
			providers: [
				...COMMON_MOCKS_PROVIDERS_WITH_SUBS,
			],
      schemas: [ CUSTOM_ELEMENTS_SCHEMA ]
    }).compileComponents();
    fixture = TestBed.createComponent(PublicIssuerComponent);
    component = fixture.debugElement.componentInstance;
  });

  it('should create a component', async () => {
    expect(component).toBeTruthy();
  });

});
