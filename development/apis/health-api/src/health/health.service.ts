import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Health } from './health.entity';

@Injectable()
export class HealthService {
  constructor(
    @InjectRepository(Health)
    private healthRepository: Repository<Health>,
  ) {}

  findAll(): Promise<Health[]> {
    return this.healthRepository.find();
  }

  findOne(id: number): Promise<Health> {
    return this.healthRepository.findOneBy({ id });
  }

  create(health: Health): Promise<Health> {
    return this.healthRepository.save(health);
  }

  async update(id: number, health: Health): Promise<Health> {
    await this.healthRepository.update(id, health);
    return this.findOne(id);
  }

  async remove(id: number): Promise<void> {
    await this.healthRepository.delete(id);
  }
}

