import std.stdio;

import dsfml.graphics;
import dsfml.system;

void main()
{
	RenderWindow window = new RenderWindow(VideoMode(800, 600), "DSFML!");

	while (window.isOpen()) {
		Event event;
		while (window.pollEvent(event)) {
			if (event.type == Event.EventType.Closed) {
				window.close();
			}
		}

		window.clear(Color(255, 255, 0));
		window.display();
	}
}
