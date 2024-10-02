import "@/styles/globals.css";
import type { AppProps } from "next/app";

export default function App({ Component, pageProps }: AppProps) {
  // Render the appropriate page component with its props.
  return <Component {...pageProps} />;
}
