import React from 'react'
import css from '../../style/header.module.css'
import Logo from '../../assets/logo.jpg'
import DropIcon from '../../assets/dropIcon.jpg'

export const Header = () => {
  return (
    <div className={css.container}>
        <div className={css.flexContainer}>
            <img className={css.homeLogo} src={Logo} alt="" />
            <div className={css.homeProfile}>
                <div>
                    <div className={css.h1}>Hi, Budi</div>
                    <div className={css.h2}>Administrator</div>
                </div>
                <div>
                    <img className={css.homeDropIcon} src={DropIcon} alt="" />
                </div>
            </div>
        </div>
    </div>
  )
}
