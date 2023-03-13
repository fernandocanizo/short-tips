# Output ESM

From [Sindre Sorhus
gist](https://gist.github.com/sindresorhus/a39789f98801d908bbc7ff3ecc99d99c#how-can-i-make-my-typescript-project-output-esm)

1. Make sure you are using TypeScript 4.7 or later.

2. Add "type": "module" to your package.json.

3. Replace "main": "index.js" with "exports": "./index.js" in your
   package.json.

4. Update the "engines" field in package.json to Node.js 14: "node":
   ">=14.16". (Excluding Node.js 12 as it's no longer supported)

5. Add "module": "node16", "moduleResolution": "node16" to your tsconfig.json.
   (Example)

6. Use only full relative file paths for imports: import x from '.'; → import
   x from './index.js';.

7. Remove namespace usage and use export instead.

8. Optional but recommended, use the node: protocol for imports.

9. **You must use a .js extension in relative imports even though you're
   importing .ts files.**

