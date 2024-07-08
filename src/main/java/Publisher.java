import jakarta.persistence.*;

@Entity
@Table(name = "publisher")
public class Publisher {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "publisher_id", columnDefinition = "serial")
    private int id; //veritabanındaki isme karsılık gelmek zorunda degil.

    @Column(name = "publisher_name", length = 100, nullable = false)
    private String name;

    @Column(name = "establishment", nullable = false)
    private String establishment;

    @Column(name = "address")
    private String address;
}