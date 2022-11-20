class Zoog {
    //Zoog's variables
    float x;
    float y;
    float w;
    float h;
    float eyeSize;
    //Zoog constructor
    Zoog(float tempX, float tempY, float tempW, float tempH, float tempEyeSize) {
        x = tempX;
        y = tempY;
        w = tempW;
        h = tempH;
        eyeSize = tempEyeSize;
    }
    
    void jiggle() {
        // Change the location
        x = x + random( -1, 1);
        y = y + random( -1, 1);
        // Constrain Zoog to window
        x = constrain(x, 0, width);
        y = constrain(y, 0, height);
    }

    void jiggle_to_mouse() {
        // Change the location
        float speedX = (mouseX > x) ? random(0, 1) : random(-1, 0);
        float speedY = (mouseY > y) ? random(0, 1) : random(-1, 0);
        x = x + speedX;
        y = y + speedY;
        // Constrain Zoog to window
        x = constrain(x, 0, width);
        y = constrain(y, 0, height);
    }
    // Display Zoog
    void display() {
        // Draw Zoog'sarms with a for loop
        for (float i = y - h / 3; i < y + h / 2; i += 10) {
            stroke(0);
            line(x - w / 4, i, x + w / 4, i);
        }
        // Set ellipses and rects to CENTER mode
        ellipseMode(CENTER);
        rectMode(CENTER);
        // Draw Zoog'sbody
        stroke(0);
        fill(175);
        rect(x, y, w / 6, h);
        // Draw Zoog'shead
        stroke(0);
        fill(255);
        ellipse(x, y - h, w, h);
        // Draw Zoog's eyes
        fill(0);
        ellipse(x - w / 3, y - h, eyeSize, eyeSize * 2);
        ellipse(x + w / 3, y - h, eyeSize, eyeSize * 2);
        // Draw Zoog's legs
        stroke(0);
        line(x - w / 12, y + h / 2, x - w / 4, y + h / 2 + 10);
        line(x + w / 12, y + h / 2, x + w / 4, y + h / 2 + 10);
    }
}