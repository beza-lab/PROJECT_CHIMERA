# Makefile

IMAGE_NAME = chimera-agent
CONTAINER_NAME = chimera-container

# Build Docker image
build:
    docker build -t $(IMAGE_NAME) .

# Install dependencies inside Docker
setup: build
    docker run --rm -v $(PWD):/app $(IMAGE_NAME) pip install -r requirements.txt

# Run tests inside Docker
test: build
    docker run --rm -v $(PWD):/app $(IMAGE_NAME) pytest tests/

# Spec-check (optional)
spec-check: build
    @echo "Checking code alignment with specs..."
    # Example: verify specs directory exists and is non-empty
    docker run --rm -v $(PWD):/app $(IMAGE_NAME) \
        sh -c 'test -d specs && [ "$(ls -A specs)" ] && echo "Specs OK" || echo "Specs missing or empty"'

# Fast local test without Docker
local-test:
    python -m unittest discover -s tests
