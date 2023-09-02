import main
import pytest

@pytest.fixture
def data():
    return main.load_data(1000)

def test_load_data(data):
    assert len(data) > 0
