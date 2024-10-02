import { Html, Head, Main, NextScript } from "next/document";

export default function Document() {
  return (
    <Html lang="en">
      <Head />
      <body className="antialiased">
        {/* Render the main application content. */}
        <Main />
        <NextScript />
      </body>
    </Html>
  );
}
