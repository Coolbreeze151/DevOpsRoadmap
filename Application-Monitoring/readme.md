### [Back Home](../README.md)
# Application Monitoring

This document provides a brief overview of popular application monitoring tools:

* [Jaeger](#jaegar)
* [New Relic](#new-relic)
* [Datadog](#datadog)
* [OpenTelemetry](#opentelemetry)

### Jaeger

Jaeger is an open-source, distributed tracing platform. It helps developers monitor and troubleshoot microservices-based applications. Jaeger captures tracing information to reconstruct the call flow across different services in an application.  

* Documentation website: https://www.jaegertracing.io/

### New Relic

New Relic is a comprehensive application performance monitoring (APM) platform. It offers a full suite of monitoring tools, including distributed tracing, code-level profiling, and real-user monitoring (RUM). New Relic provides insights into application performance, user experience, and infrastructure health.

* Documentation website: https://newrelic.com/

### Datadog

Datadog is another APM platform that offers distributed tracing, application profiling, and real-user monitoring.  Datadog integrates with a wide range of cloud platforms and tools, making it a versatile solution for monitoring various environments.

* Documentation website: https://www.datadoghq.com

### OpenTelemetry

OpenTelemetry is not a specific monitoring tool but rather a vendor-neutral framework for instrumenting applications. It provides a common API for generating telemetry data, which can then be collected by various monitoring tools. OpenTelemetry allows developers to instrument applications once and send data to different monitoring backends.

* Documentation website: https://opentelemetry.io/


Choosing the right application monitoring tool depends on your specific needs and preferences. Here's a brief comparison to help you get started:

| Feature       | Jaeger | New Relic | Datadog | OpenTelemetry |
|---|---|---|---|---|
| Open Source  | Yes | No | No | Yes |
| Distributed Tracing | Yes | Yes | Yes | Yes |
| APM Suite | No | Yes | Yes | No |
| Vendor Neutral | Yes | No | No | Yes |


I recommend exploring the documentation and features of each tool to determine the best fit for your requirements.