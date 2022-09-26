import React from 'react'
import css from '../../style/posts.module.css'

export const Posts = ({ posts, loading }) => {
    if (loading) {
        return <h2>Loading</h2>
    }

    return (
        <table>
            <thead>
                <tr>
                    <th>PRODUCT CODE</th>
                    <th>PRODUCT NAME</th>
                    <th>SUB CATEGORY</th>
                    <th>BRAND</th>
                    <th>RETAIL PRICE</th>
                    <th>PRODUCT STATUS</th>
                </tr>
            </thead>
            <tbody>
                {posts.map(products => {
                    return (
                        <tr key={products.productCode}>
                            <td>{products.productCode}</td>
                            <td>{products.productName}</td>
                            <td>{products.subCategory}</td>
                            <td>{products.brand}</td>
                            <td>{products.retailPrice}</td>
                            <td>{products.productStatus}</td>
                        </tr>
                    )
                })}
            </tbody>
        </table>
    )
   
}
export default Posts