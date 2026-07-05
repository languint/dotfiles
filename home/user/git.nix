let
  userName = "languint";
  email = "longuint@proton.me";
in
{
  programs.git = {
    enable = true;
    settings.user = {
      name = userName;
      email = email;
    };
  };
}
