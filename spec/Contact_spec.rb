require 'Contacts'

context "#all_numbers" do
it "returns an array of any 11 digit numbers it finds within the list of diary entries" do
    contact = Contacts.new
    entry1 = Entry.new("Dear Diary, Infuriating! That is the only word to describe this disastrous monstrosity of a day. Eurgh – just thinking about that little brat makes me shudder. Hercules – the child set to ruin my plans, to ruin my life, was presented to Olympia today. When I first heard the news, I was quite excited: a new baby had been born into the family - a nephew for me. Feeling as though I should visit (seeing as how everyone else was there) I put on my best black robes and made my way to Olympia. When I arrived, I tried to crack a few jokes, trying to make an effort, but all the Gods looked down their noses at me – snobs!  Then, Zeus came wading over with a grin like a Cheshire cat on his face, and his tan showing off those ridiculous, god-like muscles and fake smile! He is so annoying: he was always the favourite brother! 59813472206 When I finally reached the smelly, little cot, I gave Hercules a present. Even though it was a spiky, rusty, old rattle, it was still a present. I despised the volatile creature instantly. The ungrateful brat threw it on the floor and picked me up by my finger - he nearly broke it in half! I can tell he’s the son of the ‘almighty’ Zeus – his awful golden curls and olive skin tone, the way people were fawning over him. Eurgh! Whilst recovering from the throb in my finger, everyone laughed at me. I felt absolutely humiliated!  I can’t believe that horrid child will take my place as the next heir to the throne.  Well…hopefully not! After being ridiculed by that revolting child, I could tell I wasn’t wanted at the party, so I told Zeus that I had lots of work to do and needed to get back to the underworld.  Zeus made a joke about me being “dead boring”.  Despite a silence when I cracked a joke, everyone laughed at his! Golden boy, he makes me so  34714380460 angry! Eventually, I stormed back to the underworld and decided I wasn’t going to be treated like that! After a meeting with my friends, the three witches, and much  51080711626 charming and persuasion, they helped me answer my lie problems. How could I get rid of this bouncing baby brat? How could I ensure my place at the throne of Olympia? The witches showed me the future and how my kingship could become possible. In eighteen years precisely, the planets will align. On that day, the monsters, whom Zeus has imprisoned, will be released under the planet’s power. Hopefully – no…definitely - the monsters will be strong enough to defeat Zeus - to kill him! Their revenge is sure to be like no other – after all, they have been down there for centuries! In eighteen years, Zeus will die! Then, and only then, will I be able to take over Olympia.")
    expect(contact.parse(entry1)).to eq ['59813472206', '34714380460', '51080711626']
end
end