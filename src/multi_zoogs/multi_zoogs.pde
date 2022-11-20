Zoog[] zoogs = new Zoog[200];

void setup() {
    size(400, 400);
    for (int i = 0; i < zoogs.length; i++) {
        zoogs[i] = new Zoog(random(width), random(height), 30, 30, 8);
    }
}

void draw() {
    background(255);
    for (int i = 0; i < zoogs.length; i++) {
        zoogs[i].display();
        zoogs[i].jiggle();
        zoogs[i].jiggle_to_mouse();
    } 
}