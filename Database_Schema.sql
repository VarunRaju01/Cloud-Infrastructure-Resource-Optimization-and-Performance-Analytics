CREATE DATABASE cloud_vm_analytics;

USE cloud_vm_analytics;

CREATE TABLE cloud_vm_metrics (

    vm_id VARCHAR(50),
    timestamp DATETIME,

    cpu_usage FLOAT,
    memory_usage FLOAT,
    network_traffic FLOAT,
    power_consumption FLOAT,
    num_executed_instructions INT,
    execution_time FLOAT,
    energy_efficiency FLOAT,

    task_type VARCHAR(30),
    task_priority VARCHAR(20),
    task_status VARCHAR(20),

    cpu_usage_was_missing TINYINT,
    memory_usage_was_missing TINYINT,
    network_traffic_was_missing TINYINT,
    power_consumption_was_missing TINYINT,
    num_executed_instructions_was_missing TINYINT,
    execution_time_was_missing TINYINT,
    energy_efficiency_was_missing TINYINT,

    utilization_category VARCHAR(20),
    efficiency_score FLOAT,
    is_anomaly TINYINT,

    date DATE,
    hour INT,
    day_of_week VARCHAR(15),

    sla_risk TINYINT
);
