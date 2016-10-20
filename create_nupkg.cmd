@echo off

nuget pack src\Markdown.Xaml\Markdown.Xaml.csproj -Build -Symbols -Properties Configuration=Release
if errorlevel 1 pause

