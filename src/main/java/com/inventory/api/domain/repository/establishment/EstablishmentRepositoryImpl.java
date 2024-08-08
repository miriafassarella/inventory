/*package com.inventory.api.domain.repository.establishment;

import com.inventory.api.domain.model.Establishment;
import com.inventory.api.domain.repository.filter.EstablishmentFilter;
import org.springframework.util.StringUtils;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

public class EstablishmentRepositoryImpl {

    @PersistenceContext
    private EntityManager manager;

    public List<Establishment> filter(EstablishmentFilter establishmentFilter){
        CriteriaBuilder builder = manager.getCriteriaBuilder();
        CriteriaQuery<Establishment> criteria = builder.createQuery(Establishment.class);
        Root<Establishment> root = criteria.from(Establishment.class);

        Predicate[] predicates = createRestrictions(establishmentFilter, builder, root);
        criteria.where(predicates);

        TypedQuery<Establishment> query = manager.createQuery(criteria);

        return query.getResultList();
    }

    private Predicate[] createRestrictions(EstablishmentFilter establishmentFilter, CriteriaBuilder builder, Root<Establishment> root) {
        List<Predicate> predicates = new ArrayList<>();

        if(!StringUtils.isEmpty(establishmentFilter.getBoardName())){

            predicates.add(builder.like(
                    builder.lower(root.get("board")), "%" + establishmentFilter.getBoardName().toLowerCase() + "%"
            ));
        }
        return predicates.toArray(new Predicate[predicates.size()]);
    }
}
*/