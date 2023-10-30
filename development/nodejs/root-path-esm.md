# Root path on ES modules

On a file on the root of your project, do:

```
import { fileURLToPath } from 'node:url'
import { dirname } from 'node:path'

// unnecessary, but to provide a parallelism to old way:
const __filename = fileURLToPath(import.meta.url)
const __dirname = dirname(__filename)

// or just
const rootPath = dirname(fileURLToPath(import.meta.url)
```
