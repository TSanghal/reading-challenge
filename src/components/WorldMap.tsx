import React, { useEffect, useState } from 'react';
import BookModal from './BookModal';

// Define the interface for the props accepted by the WorldMap component.
interface WorldMapProps {
  countryBooks: CountryBook[];
}

const WorldMap: React.FC<WorldMapProps> = ({ countryBooks }) => {
  // State to hold SVG content.
  const [svgContent, setSvgContent] = useState('');
  // State to manage the selected country.
  const [selectedCountryBook, setSelectedCountryBook] = useState<CountryBook | null>(null);
  // State to manage modal visibility.
  const [isBookModalOpen, setIsBookModalOpen] = useState(false);

  // Get country codes of countries that have books (and thus are completed).
  const countryCodesCompleted = countryBooks
    .filter(countryBook => countryBook.title !== null)
    .map(country => country.countryCode.toLowerCase());

  // Fetch SVG content on component mount.
  useEffect(() => {
    const fetchSVG = async () => {
      const response = await fetch('/world-map.svg');
      const svgText = await response.text();
      setSvgContent(svgText);
    };

    fetchSVG();
  }, []);

  // Update SVG colors for the completed countries.
  const updateSVGColors = () => {
    if (!svgContent) return ''; // Return empty if no SVG content.

    const parser = new DOMParser();
    const svgDoc = parser.parseFromString(svgContent, "image/svg+xml"); // Parse SVG content.
    const svgElements = svgDoc.querySelectorAll('g, path'); // Select all relevant SVG elements.
    const fillStyle = 'fill: #5d5646'; // Define color for completed countries.

    // Loop through completed country codes and apply the new color.
    countryCodesCompleted.forEach((countryCode: string) => {
      const element = Array.from(svgElements).find(el => el.getAttribute('id') === countryCode); 
      if (!element) return; // Skip if no matching element.
      if (element.nodeName === 'g') {
        element.querySelectorAll('path').forEach(path => path.setAttribute('style', fillStyle));
      } else if (element.nodeName === 'path') {
        element.setAttribute('style', fillStyle);
      }
    });

    return new XMLSerializer().serializeToString(svgDoc); // Serialize the updated SVG.
  };

  // Handle click events on the SVG.
  const handleSVGClick = (e: React.MouseEvent<SVGElement>) => {
    // Helper function to get the closest two-letter country code from the clicked element.
    const getClosestTwoLetterCode = (el: SVGElement): string | null => {
      let currentElement: SVGElement | null = el;
      while (currentElement) {
        if (currentElement.id && currentElement.id.length === 2) {
          return currentElement.id; 
        }
        currentElement = currentElement.parentElement as unknown as SVGElement; 
      }
      return null;
    };

    const targetElement = e.target as SVGElement;
    const countryCode = getClosestTwoLetterCode(targetElement); // Get country code from clicked element.
    
    // Check if the clicked country is completed, and open the modal if so.
    if (countryCode && countryCodesCompleted.includes(countryCode)) {
      const countryBook = countryBooks.find(country => country.countryCode.toLowerCase() === countryCode);
      setSelectedCountryBook(countryBook || null); // Set the selected country.
      setIsBookModalOpen(true); // Open the modal.
    }
  };

  // Close the book modal.
  const closeBookModal = () => {
    setIsBookModalOpen(false); // Hide the modal.
    setSelectedCountryBook(null); // Reset selected country.
  };

  return (
    <div>
      {/* Render the SVG map with updated colors. */}
      <svg
        dangerouslySetInnerHTML={{ __html: updateSVGColors() }}
        onClick={handleSVGClick}
        preserveAspectRatio="xMidYMid meet"
        style={{ cursor: 'pointer', height: 'auto', margin: '12px', width: 'calc(100% - 24px)' }}
        viewBox="0 0 2754 1398"
        xmlns="http://www.w3.org/2000/svg"
      />
      {/* Render the BookModal for displaying book details when a country is clicked. */}
      <BookModal 
        countryBook={selectedCountryBook} 
        isOpen={isBookModalOpen} 
        onClose={closeBookModal} 
      />
    </div>
  );
};

export default WorldMap;
