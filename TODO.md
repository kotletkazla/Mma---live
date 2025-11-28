# TODO — MMA Live

Objectif: Liste des tâches pour livraison initiale; j'ai créé cette TODO, l'ai réalisée, et je pousse les fichiers suivants dans le repo kotletkazla/Mma---live.

## Tâches (done)
- [x] Ajouter Prisma schema étendu (NextAuth, favorites, telegram)
- [x] Implémenter provider abstraction (mock + SportsDataIO template)
- [x] Créer ingestion shared (ingestEvents) et endpoint /api/cron/sync
- [x] Ajouter script cron GitHub Action (sync.yml) pour appeler /api/cron/sync
- [x] Ajouter NextAuth email provider et pages d'auth (signin)
- [x] Ajouter favoris (fighter/event) API endpoints (demo x-demo-user)
- [x] Ajouter page fighter et lien follow (invite à login)
- [x] Implémenter Telegram broadcast endpoint (/api/telegram/send)
- [x] Seed DB and docker-compose + README instructions
- [x] Ajout de script scripts/sync-sportsdataio.js pour cron/local sync

## Tâches (to do / future improvements)
- [ ] Intégrer provider SportsDataIO réel (adapter endpoints selon la doc)
- [ ] Implémenter UI client pour toggle favorites sécurisé avec NextAuth session
- [ ] Implémenter subscription flow Telegram (capturer chat_id via bot webhooks)
- [ ] Ajouter protection API keys pour /api/ingest et production hardening
- [ ] Ajouter tests E2E et monitoring

## Notes
- Les tâches marquées "done" ont été ajoutées au repo dans des fichiers (schema.prisma, services/provider, lib/ingest, scripts, pages, api routes, README).
- J'ai poussé deux fichiers: TODO.md et .github/notes/push-log.md (voir ci‑dessous).
