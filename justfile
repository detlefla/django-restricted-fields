# build wheel (and sdist tar.gz)
build:
    python -m build

# install all dev packages into current venv
sync:
    uv pip sync requirements-dev.txt

# update locked dev requirements
update:
    uv pip compile -U -o requirements-dev.txt requirements-dev.in

# check for upload
ckupload:
    twine check dist/*

# upload to pypi
upload:
    twine upload --repository pypi dist/*
