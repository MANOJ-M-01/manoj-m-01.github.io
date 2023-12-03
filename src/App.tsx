import './app.css'
import { Banner, Footer, Headline } from './components'

function App() {

  return (
    <>
      <Banner />
      <Headline />
      <div className='grid2'>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
      </div>
      <Footer />
    </>
  )
}

export default App
