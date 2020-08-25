package _05_netflix;

public class Netflix {
public static void main(String[] args) {
Movie m = 	new Movie("Scooby-Doo", 5);
Movie a = new Movie("Spencer", 11);
Movie b = new Movie("fun", 3);
Movie c = new Movie("hi", 1);
Movie d = new Movie("Wassapp", 10);
m.getTicketPrice();
a.getTicketPrice();
b.getTicketPrice();
c.getTicketPrice();
d.getTicketPrice();
	NetflixQueue q = new NetflixQueue();
	q.addMovie(m);
	q.addMovie(a);
	q.addMovie(b);
	q.addMovie(c);
	q.addMovie(d);
	System.out.println(q);
	
	}
}

