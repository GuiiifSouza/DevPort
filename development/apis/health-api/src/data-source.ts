import { DataSource } from 'typeorm';
import { Health } from './health/health.entity';

export const AppDataSource = new DataSource({
  type: 'mysql',
  host: 'localhost',
  port: 3306,
  username: 'dev_port',
  password: 'pIrnuq-4rezmo-rusxuv',
  database: 'dev_port_database',
  entities: [Health],
  synchronize: false,
  migrations: [__dirname + '/migrations/**/*{.ts,.js}'],
});

AppDataSource.initialize()
  .then(() => {
    console.log('Data Source has been initialized!');
  })
  .catch((err) => {
    console.error('Error during Data Source initialization', err);
  });

