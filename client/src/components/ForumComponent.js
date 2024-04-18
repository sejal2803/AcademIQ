import React, { useState, useEffect } from 'react';
import axios from 'axios';

const ForumComponent = ({ courseId }) => {
  const [posts, setPosts] = useState([]);

  useEffect(() => {
    axios.get(`/api/courses/${courseId}/forum`)
      .then(response => {
        setPosts(response.data);
      })
      .catch(error => {
        console.error('Error fetching forum posts:', error);
      });
  }, [courseId]);

  const handlePost = () => {
    // Implement post creation logic
  };

  return (
    <div>
      <h2>Forum</h2>
      <ul>
        {posts.map(post => (
          <li key={post.id}>{post.title}</li>
        ))}
      </ul>
      <textarea />
      <button onClick={handlePost}>Post</button>
    </div>
  );
};

export default ForumComponent;
