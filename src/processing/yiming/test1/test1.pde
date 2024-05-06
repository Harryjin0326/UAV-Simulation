float angle = 0;
float radius = 5;
int increment = 5;
int mouseClick = 0;
int x = 0;
int y = 0;
boolean mouseBool = false;

void setup() {
    size(600, 600);
    background(0);
}

void draw() {

    if(mouseBool){
        translate(x, y); // Move the origin to the center of the canvas
        strokeWeight(4);
        stroke(255, 0, 0); // Set stroke color to red
        float x = cos(radians(angle)) * radius; // Calculate x-coordinate based on angle and radius
        float y = sin(radians(angle)) * radius; // Calculate y-coordinate based on angle and radius
        float d = dist(0, 0, x, y);
        point(x, y); // Draw a point at the calculated position
        angle += ((increment / d) * 150); // Increment the angle for the next point
        angle %= 360;
        // println(angle);
        radius += 1 / d * 50; // Increase the radius for the next point
    }
}

void mouseClicked(){
    mouseClick ++;
     if(mouseClick%2 == 1){
        x = mouseX;
        y = mouseY;
        mouseBool = true;
    }

    if(mouseClick%2 == 0){
        mouseBool = false;
        background(0);
        angle = 0;
        radius = 5;
    }
}