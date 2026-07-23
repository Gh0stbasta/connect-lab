# ADR-003

## Title

AWS Authentication via SSO

## Status

Accepted

## Context

Für das Amazon Connect Lab wird Zugriff auf AWS benötigt.

Langfristige Access Keys sollen vermieden werden.

## Decision

AWS IAM Identity Center (AWS SSO) wird verwendet.

Der Dev Container nutzt die AWS-Konfiguration des Hosts
über ein Read-Only-Mount.

## Consequences

### Vorteile

- Keine statischen Access Keys
- Bessere Sicherheit
- Entspricht AWS Best Practices

### Nachteile

- Regelmäßiger SSO Login erforderlich