package ee.bcs.talgud.domain.projectuser;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ProjectUserRepository extends JpaRepository<ProjectUser, Integer> {
    @Query("select p from ProjectUser p where p.project.id = ?1")
    List<ProjectUser> findByProject_Id(Integer id);
}