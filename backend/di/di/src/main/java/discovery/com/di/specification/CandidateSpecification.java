package discovery.com.di.specification;

import discovery.com.di.model.*;
import org.springframework.data.jpa.domain.Specification;
import jakarta.persistence.criteria.*;

public class CandidateSpecification {

    public static Specification<Candidate> search(String search) {
        return (root, query, cb) -> {

            if (search == null || search.isEmpty()) return null;

            String like = "%" + search.toLowerCase() + "%";

            Join<Candidate, CandidateSkill> skillJoin =
                    root.join("skills", JoinType.LEFT);

            return cb.or(
                    cb.like(cb.lower(root.get("name")), like),
                    cb.like(cb.lower(root.get("role")), like),
                    cb.like(cb.lower(skillJoin.get("skill")), like)
            );
        };
    }

    public static Specification<Candidate> hasRole(String roleId) {
        return (root, query, cb) ->
                roleId == null ? null :
                        cb.equal(root.get("roleEntity").get("id"), roleId);
    }

    public static Specification<Candidate> hasCategory(java.util.List<String> roleIds) {
        return (root, query, cb) -> {
            if (roleIds == null || roleIds.isEmpty()) {
                return cb.equal(cb.literal(1), 0); // Always false if no categories match
            }
            return root.get("roleEntity").get("id").in(roleIds);
        };
    }
}