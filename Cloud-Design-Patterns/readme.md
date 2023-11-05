### Availability
Availability is the percentage of time that a system is functional and working as intended, generally referred to as uptime. Availability can be affected by hardware or software errors, infrastructure problems, malicious attacks, and system load. Many cloud providers typically offer their users a service level agreement (SLA) that specifies the exact percentages of promised uptime/downtime. Availability is related to reliability in this sense. For example, a company might promise 99.99% uptime for their services.

To achieve high levels of uptime, it is important to eliminate single points of failure so that a single device failure does not disrupt the entire service. High availability in the cloud is often achieved by creating clusters. Clusters are groups of devices (such as servers) that all have access to the same shared storage and function as one single server to provide uninterrupted availability. This way, if one server goes down, the others are able to pick up the load until it comes back online. Clusters can range from two servers to even multiple buildings of servers.

Visit the following resources to learn more: 
- [Techniques for Achieving High Availability](https://www.sqlservercentral.com/articles/cloud-computing-basics-achieving-high-availability-2)


---

### Data Management
Data management is the key element of cloud applications, and influences most of the quality attributes. Data is typically hosted in different locations and across multiple servers for reasons such as performance, scalability or availability, and this can present a range of challenges. For example, data consistency must be maintained, and data will typically need to be synchronized across different locations.

Additionally data should be protected at rest, in transit, and via authorized access mechanisms to maintain security assurances of confidentiality, integrity, and availability. Refer to the Azure Security Benchmark Data Protection Control for more information.

Visit the following resources to learn more:
- [Data management patterns](https://learn.microsoft.com/en-us/azure/architecture/patterns/category/data-management)

---

### Design and implementation
Good design encompasses factors such as consistency and coherence in component design and deployment, maintainability to simplify administration and development, and reusability to allow components and subsystems to be used in other applications and in other scenarios. Decisions made during the design and implementation phase have a huge impact on the quality and the total cost of ownership of cloud hosted applications and services.

Visit the following resources to learn more:
- [Design and implementation patterns](https://learn.microsoft.com/en-us/azure/architecture/patterns/category/design-implementation)

---

### Management and Monitoring
DevOps management and monitoring entails overseeing the entire development process from planning, development, integration and testing, deployment, and operations. It involves a complete and real-time view of the status of applications, services, and infrastructure in the production environment. Features such as real-time streaming, historical replay, and visualizations are critical components of application and service monitoring.

Visit the following resources to learn more:
- [Management and Monitoring Get Started Guide](https://www.atlassian.com/devops/devops-tools/devops-monitoring)
