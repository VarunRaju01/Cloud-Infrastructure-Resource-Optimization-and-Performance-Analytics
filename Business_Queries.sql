SELECT utilization_category,
       COUNT(*) AS total_vms,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cloud_vm_metrics),2) AS percentage
FROM cloud_vm_metrics
GROUP BY utilization_category;

SELECT
COUNT(*) AS Total_VM_Executions,
COUNT(DISTINCT task_type) AS Task_Types,
ROUND(AVG(cpu_usage),2) AS Avg_CPU,
ROUND(AVG(memory_usage),2) AS Avg_Memory,
ROUND(AVG(network_traffic),2) AS Avg_Network,
ROUND(AVG(power_consumption),2) AS Avg_Power,
ROUND(AVG(energy_efficiency),3) AS Avg_Efficiency
FROM cloud_vm_metrics;

SELECT
task_type,
ROUND(AVG(cpu_usage),2) AS Avg_CPU
FROM cloud_vm_metrics
GROUP BY task_type
ORDER BY Avg_CPU DESC;

SELECT
task_type,
ROUND(AVG(memory_usage),2) AS Avg_Memory
FROM cloud_vm_metrics
GROUP BY task_type
ORDER BY Avg_Memory DESC;

SELECT
task_type,
ROUND(AVG(network_traffic),2) AS Avg_Network
FROM cloud_vm_metrics
GROUP BY task_type
ORDER BY Avg_Network DESC;

SELECT
task_priority,
ROUND(AVG(cpu_usage),2) Avg_CPU
FROM cloud_vm_metrics
GROUP BY task_priority;

SELECT
task_priority,
ROUND(AVG(memory_usage),2) Avg_Memory
FROM cloud_vm_metrics
GROUP BY task_priority;


SELECT
task_type,
ROUND(AVG(execution_time),2) Avg_Execution_Time
FROM cloud_vm_metrics
GROUP BY task_type
ORDER BY Avg_Execution_Time DESC;

SELECT
task_priority,
ROUND(AVG(execution_time),2) Avg_Execution_Time
FROM cloud_vm_metrics
GROUP BY task_priority;

SELECT
task_type,
ROUND(AVG(num_executed_instructions),0) Avg_Instructions
FROM cloud_vm_metrics
GROUP BY task_type
ORDER BY Avg_Instructions DESC;

SELECT
task_type,
ROUND(AVG(power_consumption),2) Avg_Power
FROM cloud_vm_metrics
GROUP BY task_type
ORDER BY Avg_Power DESC;

SELECT
task_priority,
ROUND(AVG(power_consumption),2) Avg_Power
FROM cloud_vm_metrics
GROUP BY task_priority;

SELECT
utilization_category,
ROUND(AVG(power_consumption),2) Avg_Power
FROM cloud_vm_metrics
GROUP BY utilization_category;

SELECT
utilization_category,
COUNT(*) AS Total
FROM cloud_vm_metrics
GROUP BY utilization_category;

SELECT
task_type,
SUM(sla_risk) AS SLA_Risks
FROM cloud_vm_metrics
GROUP BY task_type
ORDER BY SLA_Risks DESC;

SELECT
task_priority,
SUM(sla_risk) AS SLA_Risks
FROM cloud_vm_metrics
GROUP BY task_priority;

SELECT
task_status,
COUNT(*) Total
FROM cloud_vm_metrics
GROUP BY task_status;

SELECT
hour,
ROUND(AVG(cpu_usage),2) Avg_CPU
FROM cloud_vm_metrics
GROUP BY hour
ORDER BY hour;

SELECT
hour,
ROUND(AVG(power_consumption),2) Avg_Power
FROM cloud_vm_metrics
GROUP BY hour
ORDER BY hour;

SELECT
day_of_week,
COUNT(*) AS Total_Workloads
FROM cloud_vm_metrics
GROUP BY day_of_week
ORDER BY Total_Workloads DESC;

SELECT
date,
ROUND(AVG(energy_efficiency),3) Avg_Efficiency
FROM cloud_vm_metrics
GROUP BY date
ORDER BY date;

SELECT
COUNT(*) Total_Anomalies
FROM cloud_vm_metrics
WHERE is_anomaly=1;

SELECT
task_type,
SUM(is_anomaly) AS Total_Anomalies
FROM cloud_vm_metrics
GROUP BY task_type
ORDER BY Total_Anomalies DESC;

SELECT
task_type,
ROUND(AVG(efficiency_score),2) AS Avg_Efficiency,
RANK() OVER (ORDER BY AVG(efficiency_score) DESC) AS Efficiency_Rank
FROM cloud_vm_metrics
GROUP BY task_type;