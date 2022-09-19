import axios from 'axios'

 import React, { Component } from 'react'
 import Search from '../src/components/Search/index'
 import List from '../src/components/List/index'
 import './App.css'

 export default class App extends Component {


  
 
   render() {
    //  let ob=(async ()=>{
    //        var obj= axios.get('http://localhost:3000/ccc')
    //     obj.then(res=>{
    //       console.log(res);
    //       console.log(this);
          
    //     })
    //       return obj
    //   })()
    //     ob.then(res=>{
    //       console.log(res.data.postList);
    //     })
        // this.setState({url:})
     return (
       <div className="container">
         <Search/>
         <List/>
         
       </div>
     )
   }
 }
 


