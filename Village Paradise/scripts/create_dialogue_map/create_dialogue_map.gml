var _kit_dialogue = ds_list_create();
var _lilly_dialogue = ds_list_create();


//Kit Dialogue Choices
kd_[0, 0] = "I always try to make the best of each day.";

kd_[1, 0] = "This weather feels great on my fur.";
kd_[1, 1] = "I wish it could feel like this forever.";

kd_[2, 0] = "Have you heard about Lilly?";
kd_[2, 1] = "I heard that she is a pretty good cook.";
kd_[2, 2] = "Maybe one day I can try one of her famous dishes.";


//Lilly Dialogue Choices
ld_[0, 0] = "It's nice to have some peace and quiet every now and then.";

ld_[1, 0] = "On my free time, I like to relax and read a nice book.";
ld_[1, 1] = "I always enjoy reading fantasy books with elves and magic.";

ld_[2, 0] = "I've been hearing the neighbors say good things about my cooking.";
ld_[2, 1] = "But, to be honest, I don't think my cooking is that good.";
ld_[2, 2] = "But, it's also nice to hear that some people do enjoy my food.";



ds_list_add(_kit_dialogue, kd_);
ds_list_add(_lilly_dialogue, ld_);

ds_map_add_list(global.dialogue, "kit_dialogue", _kit_dialogue);
ds_map_add_list(global.dialogue, "lilly_dialogue", _lilly_dialogue);