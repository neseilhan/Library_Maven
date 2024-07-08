import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "book_borrowing")
public class BookBorrowing {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "book_borrowing_id", columnDefinition = "serial")
    private int id; //veritabanındaki isme karsılık gelmek zorunda degil.

    @Column(name = "borrower_name", length = 100, nullable = false)
    private String name;

    @Column(name = "borrowing_date", nullable = false)
    private Date borrowingDate;

    @Column(name = "return_date", nullable = false)
    private Date return_date;
}