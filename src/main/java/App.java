import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class App {
    public static void main(String[] args) {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("library");
        //The settings to be used when connecting to the database have been determined.
        EntityManager entityManager = entityManagerFactory.createEntityManager();
//        System.out.println("test");

        //Initiates and executes transaction operations.
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();

        // Add publisher
        Publisher publisher1 = new Publisher();
        publisher1.setName("Penguin Random House");
        publisher1.setEstablishment("1927");
        publisher1.setAddress("1745 Broadway, New York, NY 10019, ABD");
        entityManager.persist(publisher1);

        Publisher publisher2 = new Publisher();
        publisher2.setName("HarperCollins");
        publisher2.setEstablishment("1989");
        publisher2.setAddress("195 Broadway, New York, NY 10007, ABD");
        entityManager.persist(publisher2);

        Publisher publisher3 = new Publisher();
        publisher3.setName("Simon & Schuster");
        publisher3.setEstablishment("1924");
        publisher3.setAddress("1230 Avenue of the Americas, New York, NY 10020, ABD");
        entityManager.persist(publisher3);

//         Add category
        Category category1 = new Category();
        category1.setName("Science Fiction");
        category1.setDescripton("Stories set in the future or alternate realities, focusing on advanced science and technology.");
        entityManager.persist(category1);

        Category category2 = new Category();
        category2.setName("Mystery");
        category2.setDescripton("Books centered on solving a crime or mysterious event, often featuring detectives.");
        entityManager.persist(category2);

        Category category3 = new Category();
        category3.setName("Historical Fiction");
        category3.setDescripton("Fictional stories set in real historical periods, blending fact and imagination.");
        entityManager.persist(category3);

        // Add author
        Author author1 = new Author();
        author1.setAuthorName("Stieg Larsson");
        author1.setBirthDate("1954");
        author1.setCountry("Sweden");
        entityManager.persist(author1);

        Author author2 = new Author();
        author2.setAuthorName("Agatha Christie");
        author2.setBirthDate("1890");
        author2.setCountry("United Kingdom");
        entityManager.persist(author2);

        Author author3 = new Author();
        author3.setAuthorName("Frank Herbert");
        author3.setBirthDate("1920");
        author3.setCountry("United States");
        entityManager.persist(author3);

        // Add book
        Book book1 = new Book();
        book1.setName("The Girl with the Dragon Tattoo");
        book1.setPublicationYear("2005");
        book1.setStock(1500);
        book1.setAuthor(author1);
        Set<Category> categorySet1 = new HashSet<>();
        categorySet1.add(category1);
        categorySet1.add(category2);
        book1.setCategorySet(categorySet1);
        book1.setPublisher(publisher1);
        entityManager.persist(book1);


        Book book2 = new Book();
        book2.setName("Dune");
        book2.setPublicationYear("1965");
        book2.setStock(1500);
        book2.setAuthor(author3);
        Set<Category> categorySet2 = new HashSet<>();
        categorySet2.add(category1);
        book2.setCategorySet(categorySet2);
        book2.setPublisher(publisher1);
        entityManager.persist(book2);

        Book book3 = new Book();
        book3.setName("And Then There Were None");
        book3.setPublicationYear("1939");
        book3.setStock(1500);
        book3.setAuthor(author2);
        Set<Category> categorySet3 = new HashSet<>();
        categorySet3.add(category3);
        book3.setCategorySet(categorySet3);
        book3.setPublisher(publisher2);
        entityManager.persist(book3);

//        Add book borrowing
        BookBorrowing bookBorrowing1 = new BookBorrowing();
        bookBorrowing1.setName("Nese ilhan");
        bookBorrowing1.setBorrowingDate(LocalDate.now());
        bookBorrowing1.setReturn_date(LocalDate.parse("28/07/2024", DateTimeFormatter.ofPattern("dd/MM/yyyy")));
        bookBorrowing1.setBook(book2);
        entityManager.persist(bookBorrowing1);

        BookBorrowing bookBorrowing2 = new BookBorrowing();
        bookBorrowing2.setName("Ozan Tuyluoglu");
        bookBorrowing2.setBorrowingDate(LocalDate.parse("15/06/2024", DateTimeFormatter.ofPattern("dd/MM/yyyy")));
        bookBorrowing2.setBook(book1);
        bookBorrowing2.setReturn_date(LocalDate.parse("03/07/2024", DateTimeFormatter.ofPattern("dd/MM/yyyy")));
        entityManager.persist(bookBorrowing2);



        transaction.commit();


    }
}
