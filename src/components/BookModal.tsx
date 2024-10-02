import styles from './BookModal.module.css';

// Define the interface for the props accepted by the BookModal component.
interface BookModalProps {
  countryBook: CountryBook | null;
  isOpen: boolean;
  onClose: () => void;
}

const BookModal: React.FC<BookModalProps> = ({ countryBook, isOpen, onClose }) => {
  // If the modal isn't open or no countryBook is provided, render nothing.
  if (!isOpen || !countryBook) return null;
  
  return (
    <div className={styles.modal}> {/* Modal overlay. */}
      <div className={styles.modalContent}> {/* Modal content container. */}
        <div className={styles.titleBanner}> {/* Title banner for the modal. */}
          <span className={styles.h1}>{countryBook.country}</span> {/* Display the country name as the title. */}
          <span
            className={styles.h1}
            onClick={onClose} // Call onClose function when clicked.
            style={{cursor: 'pointer'}} // Change cursor to pointer for interactivity.
          >
            &times; {/* Close icon (×). */}
          </span>
        </div>
        <div>
          <div>
            <div className={styles.contentContainer}> {/* Container for content layout. */}
              <div className={styles.imageContainer}> {/* Container for the book image. */}
                <img className={styles.image} src={`/${countryBook.countryCode}.png`}/>
              </div>
              <div>
                <div className={styles.body}>
                <strong>Title:</strong> {countryBook.title}
                </div>
                <div className={styles.body}>
                  <strong>Author:</strong> {countryBook.author}
                </div>
                {countryBook.translator && ( // Conditionally render the translator if it exists.
                  <div className={styles.body}>
                    <strong>Translator:</strong> {countryBook.translator}
                  </div>
                )}
                <div className={styles.body}>
                  <strong>Completed:</strong> {new Date(countryBook.dateCompleted).toLocaleDateString('en-US', {year: 'numeric', month: 'long', day: '2-digit'})}
                </div>
              </div>
            </div>
            <div className={styles.descriptionContainer}> {/* Container for the book description. */}
                <div className={styles.body}>
                  <strong>Description:</strong> {countryBook.description}
                </div>
              </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default BookModal;
