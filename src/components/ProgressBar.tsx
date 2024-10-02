import styles from './ProgressBar.module.css';

// Define the interface for the props accepted by the ProgressBar component.
interface ProgressBarProps {
  countCompleted: number;
  percentCompleted: number;
}

const ProgressBar: React.FC<ProgressBarProps> = ({ countCompleted, percentCompleted }) => {
  return (
    <div className={styles.progressContainer}>
      {/* Display progress bar with dynamic width based on percentage of completed books. */}
      <div className={styles.progressBar} style={{ width: `${percentCompleted}%` }}>
        {/* Display the count of completed books. */}
        <span className={styles.progressText}>{countCompleted}&nbsp;{countCompleted === 1 ? 'Book' : 'Books'}</span>
      </div>
    </div>
  );
}

export default ProgressBar;