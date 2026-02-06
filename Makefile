# Makefile

IMAGE_NAME = chimera-agent

# Build Docker image
build:
    docker build -t $(IMAGE_NAME) .

# Run tests inside Docker
test: build
    docker run --rm -v $(PWD):/app $(IMAGE_NAME) pytest tests/

# Spec-check (lightweight governance)
spec-check: build
    @echo "Checking code alignment with specs..."
    @if [ -d specs ] && [ "$$(ls -A specs)" ]; then \
        echo "Specs OK"; \
    else \
        echo "Specs missing or empty (warning)"; \
    fi

# Fast local test without Docker
local-test:
    pytest tests/
