import jakarta.persistence.*;

@Entity
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "category_id", columnDefinition = "serial")
    private int id; //veritabanındaki isme karsılık gelmek zorunda degil.

    @Column(name = "category_name", length = 100, nullable = false)
    private String name;

    @Column(name = "discription", nullable = false)
    private String descripton;

}
