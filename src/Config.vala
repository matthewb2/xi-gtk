namespace Xi {
    public class Config : Object {
        public const string PLUGIN_DIR = "plugins";

        public static string get_config_dir() {
            string? home = Environment.get_home_dir();
            if (home == null)
                return "/tmp/xi";
            return Path.build_filename(home, ".config", "xi", null);
        }
    }
}

