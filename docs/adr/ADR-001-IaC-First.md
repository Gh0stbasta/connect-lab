# ADR-001

## Title

Infrastructure as Code First

## Status

Accepted

## Context

Für das Amazon Connect Lab soll die komplette Umgebung
reproduzierbar aufgebaut werden.

Ziel ist das Erlernen von:

- Terraform
- Amazon Connect
- AWS IaC Best Practices

## Decision

Sämtliche Ressourcen werden über Terraform verwaltet.

Manuelle Änderungen in der AWS-Konsole werden vermieden.

Eine Ausnahme wird für den ersten Prototype Contact Flow
zugelassen, da das Amazon Connect JSON Format komplex ist.

Nach dem Export wird auch dieser Flow über Terraform verwaltet.

## Consequences

### Vorteile

- Reproduzierbarkeit
- Versionskontrolle
- GitOps
- Einfaches Destroy/Create

### Nachteile

- Etwas höhere Einstiegskomplexität
- Terraform Support für Connect nicht vollständig