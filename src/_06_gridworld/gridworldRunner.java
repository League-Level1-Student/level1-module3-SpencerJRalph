package _06_gridworld;

import java.awt.Color;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class gridworldRunner {
	public static void main(String[] args) {
		World w = new World();
		w.show();
		Bug b = new Bug();
		Location l = new Location(8, 1);
		w.add(l, b);
		Location o = new Location(2, 7);
		Bug u = new Bug();
		u.setColor(Color.BLUE);
		w.add(o, u);
		for (int i = 0; i < 2; i++) {
			u.turn();

		}
		Flower f = new Flower();
		Location s = new Location(2, 6);
		w.add(s, f);
		Location d = new Location(2, 8);
		Flower c = new Flower();
		w.add(d, c);
		for (int i = 0; i < 10; i++) {
			for (int j = 0; j < 10; j++) {
				Location z = new Location(i,j);
				Flower e = new Flower();
				w.add(z, e);
			}
		}
	}
}
