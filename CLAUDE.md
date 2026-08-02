# dwm config editing

`config.h` is generated/ephemeral — build copies `config.def.h` → `config.h` if `config.h` missing, and `make clean` wipes `config.h` entirely. It is gitignored (not tracked).

**Always edit `config.def.h`**, never `config.h` directly. Edits to `config.h` alone get silently lost on next `make clean install`.

After editing `config.def.h`: rebuild with `sudo make clean install`, then restart dwm to pick up new binds.
