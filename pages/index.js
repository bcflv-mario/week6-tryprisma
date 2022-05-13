import Head from 'next/head'
import Image from 'next/image'
import styles from '../styles/Home.module.css'
import prisma from 'lib/prisma'


export default function Home({ cars, firstCar }) {
  return (
    <div className={styles.container}>
      <p>
        First car: {firstCar.brand} - {firstCar.model}
      </p>
      <ul>
        {cars.map((car, index) => {
          return (
            <li key= {index}>
              {car.brand} - {car.model}
            </li>

          )
        })}
      </ul>

    </div>
  )
}

export async function getServerSideProps() {
    let cars = await prisma.cars.findMany()
    let firstCar = await prisma.cars.findUnique({
      where: {
        id: 1
      }
    })

    cars = JSON.parse(JSON.stringify(cars))
    firstCar = JSON.parse(JSON.stringify(firstCar))

    return {
      props: {
        cars, firstCar
      }
    }
}
