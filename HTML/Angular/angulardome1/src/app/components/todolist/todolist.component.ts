import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-todolist',
  templateUrl: './todolist.component.html',
  styleUrls: ['./todolist.component.css']
})
export class TodolistComponent implements OnInit {

  public keyword: string = ''

  public todolist: any[] = []


  doAdd(e: any) {
    if (e.keyCode == 13) {
      this.todolist.push({
        title: this.keyword,
        status: 0
      })
      this.keyword = ''

    }
  }

  deleteData(key: any) {
    this.todolist.splice(key, 1)
  }

  deleteHistory(key: any) {
    this.todolist.splice(key, 1)
  }
  constructor() { }

  ngOnInit(): void {
  }

}
