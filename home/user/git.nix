let
  userName = "languint";
  email = "longuint@proton.me";
in
{
  programs.git = {
    enable = true;
    userName = userName;
    userEmail = email;
  };
}
