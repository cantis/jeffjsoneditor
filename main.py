from src.app import app


def main():
    print('Starting Alpha Strike Group Editor...')
    print('Navigate to http://localhost:5000 in your browser')
    app.run(debug=True, host='0.0.0.0', port=5000)


if __name__ == '__main__':
    main()
