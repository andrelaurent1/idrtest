import React from 'react'
import css from '../../style/sideNavbar.module.css'
import DropIcon from '../../assets/dropIcon.jpg'

export const SideNavbar = () => {
  return (
    <div className={css.container}>
        <div className={css.flexContainer}>
            <hr />
            <div className={css.sideHome} onClick="">
                Home
            </div>
            <hr />
            <div className={css.sideProductMaster}>
                <div>Product Master</div>
                <img src={DropIcon} alt="" />
            </div>
            <hr />
            <div className={css.sideProduct}>
                - Product
            </div>
            <hr />
        </div>
    </div>
  )
}
