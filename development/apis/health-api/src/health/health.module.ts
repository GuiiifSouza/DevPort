import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Health } from './health.entity';
import { HealthService } from './health.service';
import { HealthController } from './health.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Health])],
  providers: [HealthService],
  controllers: [HealthController],
})
export class HealthModule {}

