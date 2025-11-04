# Clean up previous builds
Remove-Item -Recurse -Force src\dist, src\build, src\app.spec -ErrorAction Ignore

# Build the application
cd src
pyinstaller --onefile --add-data "templates;templates" --add-data "../data;data" app.py
cd ..
Write-Host "Build completed. The executable is located in the 'src\dist' directory."