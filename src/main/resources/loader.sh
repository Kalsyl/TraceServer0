Get-Content -Path "traces.json" | ForEach-Object {
    Invoke-RestMethod -Uri "http://localhost:8083/traces" -Method Post -Body $_ -ContentType "application/json"
}