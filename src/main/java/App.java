import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

public class App {
    public static void main(String[] args) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("library");
        //The settings to be used when connecting to the database have been determined.
        EntityManager entityManager = entityManagerFactory.createEntityManager();
//        System.out.println("test");

        //Initiates and executes transaction operations.
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        transaction.commit();


    }
}
