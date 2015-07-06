module Foghorn::Exceptions
  class Foghorn::Exceptions::Base
    def self.phrases
      [
        "Love that dog … love that dog",
        "What's it all about boy, elucidate!",
        "That's a joke, I say that's a joke son",
        "Go, I say go away boy, you bother me",
        "His muscles are as soggy as a used tea bag",
        "I made a funny son and you're not laughin'",
        "That boy's about as sharp as a bowling ball",
        "I keep pitchin' ‘em and you keep missin' ‘em",
        "That boy's as timid as a canary at a cat show",
        "Fortunately I always keep a spare in my locker",
        "That woman's as cold as a nudist on an iceberg",
        "Nice mannered kid, just a little on the dumb side",
        "That kid's about as sharp as a pound of wet liver",
        "You're way off, I say you're way off this time son!",
        "Nice girl, but about as sharp as a sack of wet mice",
        "Nice boy but he's got more nerve than a bum tooth",
        "I say, boy, pay attention when I'm talkin' to ya, boy",
        "Pay attention, boy, I'm cuttin' but you ain't bleedin'!",
        "Smart boy, got a mind like a steel trap – full of mice",
        "He's so dumb he thinks a Mexican border pays rent",
        "Hmmm, bare, I say bare as a cooch dancers midriff",
        "Oh, that woman, got a mouth like an outboard motor",
        "That dog's like taxes, he just don't know when to stop",
        "That boy's as strong as an ox, and just about as smart",
        "Now I wonder what ol' busy body widow hen is up to",
        "Boy's gotta mouth like a cannon, always shootin' it off",
        "This boy's more mixed up than a feather in a whirlwind",
        "That dog, I say that dog's strictly GI – gibberin idiot that is",
        "Don't, I say don't bother me dog, can't ya see I'm thinkin'",
        "For-I say fortunately I always carry a spare set of feathers",
        "That, I say that boy's just like a tatoo, gets under your skin",
        "Kid don't quit talkin' so much he'll get his tongue sunburned",
        "That dog, I say that dog is lower than a snake full of buckshot",
        "That dog's as subtle as a hand grenade in a barrrel of oat meal",
        "Boy, you cover about as much as a flapper's skirt in a high wind",
        "Pay attention to me boy! I'm not just talkin' to hear my head roar",
        "That's the trouble with that fool dog, always shootin' his mouth off",
        "That's what I've been – I say, that's what I've been telling you, boy!",
        "Now what, I say now what's that skinny old hen doin' up on the barn",
        "That, I say that dog's busier than a centipede at a toe countin' contest",
        "Now cut that out boy, or I'll spank you where the feathers are thinnest",
        "Look sister is any of this filterin' through that little blue bonnet of yours",
        "I got, I say I got this boy as fidgety as a bubble dancer with a slow leak",
        "Stop, I say stop it boy, you're doin' alot of choppin' but no chips are flyin'",
        "This is going to cause more confusion than a mouse in a burlesque show",
        "You know there might, I say there just might be a market for bottled duck",
        "What's, I say what's the big idea wrappin' a lariat around my adams apple",
        "Fortunately I keep my feathers numbered, for, for just such an emergency",
        "What in the, I say what in the name of Jesse James do you suppose that is",
        "Gal reminds me of a highway between Forth Worth and Dallas – no curves",
        "Now what, I say what's the big idea bashin' me in the bazooka that-a-way boy!",
        "She remi – I say, she reminds me of Paul Revere's ride, a little light in the belfry",
        "Now what, I say what's the big idea bashin' me on the noggin' with a rollin' pin!",
        "Now who's, I say who's responsible for this unwarranted attack on my person!",
        "This boy's making more noise than a couple of skeletons throwin' a fit on a tin roof",
        "The snow, I say the snow's so deep the farmers have to jack up the cows so they can milk'em",
        "What a day for trampin' through the woods … lump dum do di do do doh, doo dah, doo dah",
        "Now that, I say that's no way for a kid to be wastin' his time, readin' that long-haired gobbledegook",
        "It's sure, I say it's sure quiet around here, you could hear a caterpillar sneakin' across a moss bed in tennis shoes",
        "As senior rooster 'round here, it's my duty, and my pleasure, to instruct junior roosters in the ancient art of roostery",
        "Hey boy, what's the idea jackin' that pot up under me?  Jack?  Pot?  Ahuh, huh … jack pot, that's a joke son, don't ya get it?"
      ]
    end

    def self.phrase
      self.phrases.sample
    end
  end

end

class StandardError
  def to_s(*args)
    "#{Foghorn::Exceptions::Base.phrase}\n#{self.class}: #{super}"
  end
end
