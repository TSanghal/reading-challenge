// Declares global types for the application.
declare global {
  // Defines the structure of a CountryBook object.
  type CountryBook = {
    id: number;
    country: string;
    continent: string;
    countryCode: string;
    title: string;
    author: string;
    translator?: string; 
    description: string;
    dateCompleted: Date; 
  };
}

export {};
