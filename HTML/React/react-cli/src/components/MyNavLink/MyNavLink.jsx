import React, { Component } from 'react'
import { NavLink } from 'react-router-dom'

//封装NavLink 组件
export default class MyNavLink extends Component {
    render() {
        console.log(this.props);
        // const { to } = this.props
        return (
            // <NavLink activeClassName="demo" className="list-group-item" to={to}>{title}</NavLink>
            // <NavLink activeClassName="demo" className="list-group-item" {...this.props}>{this.props.children}</NavLink>
            <NavLink activeClassName="demo"  {...this.props} />
        )
    }
}
