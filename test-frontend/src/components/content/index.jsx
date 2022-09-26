// import React from 'react'
import React, { useState, useEffect } from 'react'
import Axios from 'axios'
import Posts from './posts'
import Pagination from './pagination'
import css from '../../style/content.module.css'
import axios from 'axios'

export const Content = () => {
  const [posts, setPosts] = useState([])
  const [loading, setLoading] = useState(false)
  const [currentPage, setCurrentPage] = useState(1)
  const [postsPerPage, setPostsPerPage] = useState(10)

  useEffect(() => {
    const fetchPosts = async () => {
      setLoading(true)
      const res = await Axios.get('http://localhost:9000/api/products')
      setPosts(res.data)
      setLoading(false)
    }
    fetchPosts()
    axios.get('http://localhost:8080/api/products/10/0')
        .then(res => setPostsPerPage(res.data.response.pageable.pageSize))
        .catch(err => console.log(err));
  }, [])

  // console.log(posts)

  const indexOfLastPosts = currentPage * postsPerPage
  const indexOfFirstPosts = indexOfLastPosts - postsPerPage
  const currentPosts = posts.slice(indexOfFirstPosts, indexOfLastPosts)

  const paginate = (pageNumber) => setCurrentPage(pageNumber)

  return (
    <div className={css.container}>
      <div className={css.flexContainer}>
        <div className={css.contentTitle}>Products</div>
        <Posts posts={currentPosts} loading={loading} />
        <Pagination postsPerPage={postsPerPage} totalPosts={posts.length} paginate={paginate} />
      </div>
    </div>
  )
}
