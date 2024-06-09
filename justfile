run:
  dotnet run --project src/Blasigt.Console

restore:
  dotnet tool restore

nixfmt:
  alejandra flake.nix
