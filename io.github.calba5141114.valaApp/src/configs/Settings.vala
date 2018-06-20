/*
* Copyright (C) 2018  Carlos Alba <soradev4@gmail.com>
*/

namespace App.Configs {

    /**
     * The {@code Settings} class is responsible for defining all 
     * the texts that are displayed in the application and must be translated.
     *
     * @see Granite.Services.Settings
     * @since 1.0.0
     */
    public class Settings : Granite.Services.Settings {

        /**
         * This static property represents the {@code Settings} type.
         */
        private static Settings? instance;

        /**
         * This property will represent the location x of the screen.
         * Variable of type {@code int} as declared.
         */
        public int window_x { get; set; }

        /**
         * This property will represent the location y of the screen.
         * Variable of type {@code int} as declared.
         */
        public int window_y { get; set; }
       
        /**
         * Constructs a new {@code Settings} object 
         * and sets the default exit folder.
         */
        private Settings () {
            base (Constants.ID);
        }

        /**
         * Returns a single instance of this class.
         * 
         * @return {@code Settings}
         */
        public static unowned Settings get_instance () {
            if (instance == null) {
                instance = new Settings ();
            }

            return instance;
        }
    }
}
