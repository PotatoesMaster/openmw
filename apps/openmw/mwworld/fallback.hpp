#ifndef GAME_MWWORLD_FALLBACK_H
#define GAME_MWWORLD_FALLBACK_H

#include <map>
#include <string>

#include <OgreColourValue.h>

namespace MWWorld
{
    class Fallback
    {
            const std::map<std::string,std::string> mFallbackMap;
        public:
            Fallback(const std::map<std::string,std::string>& fallback);
            std::string getFallbackString(const std::string& fall, const std::string& defval = "") const;
            float getFallbackFloat(const std::string& fall, float defval = .0f) const;
            bool getFallbackBool(const std::string& fall, bool defval = false) const;
            Ogre::ColourValue getFallbackColour(const std::string& fall,
                    const Ogre::ColourValue& defval = Ogre::ColourValue(0,0,0)) const;
    };
}
#endif
