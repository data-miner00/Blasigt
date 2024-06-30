run:
  dotnet run --project src/Blasigt.Console

restore:
  dotnet tool restore

nixfmt:
  alejandra flake.nix

fmt:
  find src/Blasigt.* -type f -name "*.fs" -not -path "*obj*" | xargs dotnet fantomas

fmtcheck:
  find src/Blasigt.* -type f -name "*.fs" -not -path "*obj*" | xargs dotnet fantomas --check
