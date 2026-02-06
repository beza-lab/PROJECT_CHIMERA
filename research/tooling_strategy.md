# Tooling Strategy

## Developer Tools (MCP)

To support development and governance, the following MCP servers are selected:

- **git-mcp**  
  Purpose: Provides version control operations (commit, branch, merge).  
  Benefit: Ensures traceability and Git hygiene.

- **filesystem-mcp**  
  Purpose: Allows file creation, editing, and navigation.  
  Benefit: Enables structured spec-driven development inside the repo.

- **docker-mcp**  
  Purpose: Manages container builds and runtime.  
  Benefit: Guarantees reproducible environments.

- **test-mcp**  
  Purpose: Runs unit tests and reports results.  
  Benefit: Enforces TDD and spec compliance.

## Notes
- All MCP servers must respect the `.cursor/rules` governance file.  
- No code generation is allowed without referencing `specs/`.  
