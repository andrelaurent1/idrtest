import React from 'react'
import css from '../../style/pagination.module.css'

export const Pagination = ({ postsPerPage, totalPosts, paginate }) => {

    const pageNumbers = [];
    const prev = '<';
    const next = '>';

    for(let i = 1; i <= Math.ceil(totalPosts/postsPerPage); i++) {
        pageNumbers.push(i)
    }
  return (
    <div className={css.container}>
        <div className={css.pageContainer}>
            <div onClick="" href='!#' className={css.pageLink}>
                {prev}
            </div>
        </div>
        {pageNumbers.map(number => (
            <div key={number} className={css.pageContainer}>
                <div onClick={() => paginate(number)} href='!#' className={css.pageLink}>
                    {number}
                </div>
            </div>
        ))}
        <div className={css.pageContainer}>
            <div onClick="" href='!#' className={css.pageLink}>
                {next}
            </div>
        </div>
    </div>
  )
}
// onClick={() => paginate(number)} 
export default Pagination