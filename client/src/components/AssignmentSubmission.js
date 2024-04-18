import React, { useState } from 'react';
import axios from 'axios';

const AssignmentSubmission = ({ courseId }) => {
  const [submission, setSubmission] = useState('');

  const handleSubmit = () => {
    // Implement assignment submission logic
  };

  return (
    <div>
      <h2>Submit Assignment</h2>
      <textarea value={submission} onChange={e => setSubmission(e.target.value)} />
      <button onClick={handleSubmit}>Submit</button>
    </div>
  );
};

export default AssignmentSubmission;
