import { Controller, Get, Post, Body, Put, Param, Delete } from '@nestjs/common';
import { HealthService } from './health.service';
import { Health } from './health.entity';

@Controller('health')
export class HealthController {
  constructor(private readonly healthService: HealthService) {}

  @Get()
  findAll(): Promise<Health[]> {
    return this.healthService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string): Promise<Health> {
    return this.healthService.findOne(+id);
  }

  @Post()
  create(@Body() health: Health): Promise<Health> {
    return this.healthService.create(health);
  }

  @Put(':id')
  update(@Param('id') id: string, @Body() health: Health): Promise<Health> {
    return this.healthService.update(+id, health);
  }

  @Delete(':id')
  remove(@Param('id') id: string): Promise<void> {
    return this.healthService.remove(+id);
  }
}

