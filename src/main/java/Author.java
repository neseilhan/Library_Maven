import jakarta.persistence.*;

@Entity
@Table(name = "author")
public class Author {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "author_id", columnDefinition = "serial")
    private int id; //veritabanındaki isme karsılık gelmek zorunda degil.

    @Column(name = "author_name", length = 100, nullable = false)
    private String authorName;

    @Column(name = "birth_date", nullable = false)
    private String birthDate;

    @Column(name = "country")
    private String country;
}
