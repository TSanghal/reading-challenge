import ProgressBar from "@/components/ProgressBar";
import WorldMap from "@/components/WorldMap";
import { useEffect, useState } from "react";

export default function Home() {
  // State to hold the countryBooks.
  const [countryBooks, setCountryBooks] = useState<CountryBook[]>([]);
  // State to hold the count of completed books.
  const [countCompleted, setCountCompleted] = useState(0);
  // State to hold the percentage of completed books.
  const [percentCompleted, setPercentCompleted] = useState(0);

  useEffect(() => {
    const fetchCountryBooks = async () => {
      // Fetch progress data from the API endpoint.
      const response = await fetch('/api/countryBooks');
      const data = await response.json();
      // Update state with the fetched data.
      setCountryBooks(data.countryBooks);
      setCountCompleted(data.countCompleted);
      setPercentCompleted(data.percentCompleted);
    };

    fetchCountryBooks();
  }, []); // Empty dependency array means this runs once when the component mounts.

  return (
    <div>
      {/* Main heading for the page. */}
      <h1>
        Around the World in 193 Books
      </h1>
      {/* Description paragraph about the reading challenge. */}
      <p style={{ margin: '20px' }}>
        I am on a mission to read a book from every country on Earth—yes, all 193 of them! 
        Follow along for a literary adventure that spans continents, cultures, and curiosities!
      </p>
      {/* Render the ProgressBar component. */}
      <ProgressBar countCompleted={countCompleted} percentCompleted={percentCompleted}></ProgressBar>
      {/* Container for the WorldMap component. */}
      <div style={{ width: '100%' }}>
        <WorldMap countryBooks={countryBooks}/>
      </div>
    </div>
  );
}
