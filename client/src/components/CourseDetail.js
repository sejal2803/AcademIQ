import React, { useState, useEffect } from 'react';
import axios from 'axios';

const CourseDetail = ({ courseId }) => {
  const [course, setCourse] = useState(null);

  useEffect(() => {
    axios.get(`/api/courses/${courseId}`)
      .then(response => {
        setCourse(response.data);
      })
      .catch(error => {
        console.error('Error fetching course details:', error);
      });
  }, [courseId]);

  const enrollCourse = () => {
    // Implement enrollment logic
  };

  return (
    <div>
      {course ? (
        <>
          <h2>{course.title}</h2>
          <p>{course.description}</p>
          <button onClick={enrollCourse}>Enroll</button>
        </>
      ) : (
        <p>Loading...</p>
      )}
    </div>
  );
};

export default CourseDetail;
