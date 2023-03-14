# ESM: Find current path

`__dirname` and `__filename` convenience globals aren't defined under ES
modules. You can do:

```javascript
import path from 'path';
import { fileURLToPath } from 'url';

const currentFileName = fileURLToPath(import.meta.url);
```

