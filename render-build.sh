#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

python manage.py collectstatic --no-input

# Run migrations
echo "Applying database migrations..."
python manage.py migrate --noinput

echo "Build process completed successfully!"
