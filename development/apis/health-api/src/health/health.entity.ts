import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Health {
  @PrimaryGeneratedColumn()
  id: number;

  @Column()
  status: string;

  @Column({ type: 'timestamp', default: () => 'CURRENT_TIMESTAMP' })
  createdAt: Date;
}

