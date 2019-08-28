YML_PATH=$1
echo "hash -r ===================================="
hash -r
echo "============================================"
echo "Using recipe of $YML_PATH"
echo "============================================"
echo "checking python version ===================="
python --version
echo "updating conda ============================="
conda config --set always_yes yes --set changeps1 no;
conda update -q conda;
echo "conda info -a =============================="
conda info -a
echo "create test-environment ===================="
conda env create -n test-environment -f $YML_PATH
