# Lab 0: VirtualBox Port Forwarding Setup

## What is Port Forwarding?

Port forwarding creates a **tunnel** from your Windows port to Ubuntu port.

### Analogy
Windows:2222 → [Tunnel] → Ubuntu:22 (SSH)

## Why We Need It

- Ubuntu VM is in VirtualBox private network (10.0.2.15)
- Windows cannot access 10.0.2.15 directly
- Port forwarding creates the tunnel

## Configuration

| Field | Value |
|-------|-------|
| Host IP | 127.0.0.1 |
| Host Port | 2222 |
| Guest IP | 10.0.2.15 |
| Guest Port | 22 |

## Test

```bash
ssh danish@127.0.0.1 -p 2222
```

## DevOps Connection

Real servers need SSH access from anywhere. Same technique!

