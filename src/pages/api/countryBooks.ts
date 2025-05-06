import { NextApiRequest, NextApiResponse } from 'next';
import fs from 'fs';
import path from 'path';
import { parse } from 'csv-parse/sync';

export default async function handler(req: NextApiRequest, res: NextApiResponse) {
  try {
    // Fetch all countries from the CSV file, including their associated books.
    const filePath = path.join(process.cwd(), 'public', 'country-book.csv');
    const fileContent = fs.readFileSync(filePath, 'utf8');
    const countryBooks: CountryBook[] = parse(fileContent, { columns: true, skip_empty_lines: true, trim: true });
    // Count the number of countries that have one or more associated books.
    const countriesCompleted = countryBooks.filter((countryBook) => countryBook.title).length;
    // Get the total number of countries.
    const countriesTotal = countryBooks.length;
    // Calculate the percentage of countries that have books, formatted to one decimal place.
    const percentage = (countriesCompleted / countriesTotal * 100).toFixed(1);
    // Send a success response with both the count of completed countries and the percentage.
    res.status(200).json({ countryBooks: countryBooks, countCompleted: countriesCompleted, percentCompleted: percentage });
  } catch (error: unknown) {
    // Send an error response if there was an issue during the file read or parsing.
    res.status(500).json({ error: `Error reading or parsing CSV: ${error}` });
  }
}
