import { NextApiRequest, NextApiResponse } from 'next';
import { query } from '../../../lib/db';

export default async function handler(req: NextApiRequest, res: NextApiResponse) {
  try {
    // Fetch all countries from the database, including their associated books.
    const { rows: countryBooks } = await query('SELECT * FROM "CountryBook";');
    // Count the number of countries that have one or more associated books.
    const countriesCompleted = countryBooks.filter(countryBook => countryBook.title !== null).length;
    // Get the total number of countries.
    const countriesTotal = countryBooks.length;
    // Calculate the percentage of countries that have books, formatted to one decimal place.
    const percentage = (countriesCompleted / countriesTotal * 100).toFixed(1)
    // Send a success response with both the count of completed countries and the percentage.
    res.status(200).json({ countryBooks: countryBooks, countCompleted: countriesCompleted, percentCompleted: percentage });
  } catch (error: unknown) {
    // Send an error response if there was an issue during the fetch.
    res.status(500).json({ error: `Error Fetching CountryBooks: ${error}.` });
  }
}