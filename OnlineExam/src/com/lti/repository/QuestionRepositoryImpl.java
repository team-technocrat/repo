package com.lti.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.model.Choices;
import com.lti.model.Questions;

@Repository("questionRepository")
public class QuestionRepositoryImpl implements QuestionRepository {

	@PersistenceContext
	EntityManager em;
	
	@Override
	@Transactional
	public Questions addQuestion(Questions q) 
	{
		em.persist(q);
		return q;
	}

	@Override
	@Transactional
	public Questions updateQuestion(Questions q) 
	{
		em.merge(q);
		return q;	
	}

	@Override
	public List<Questions> findAllQuestions() 
	{
		String q1="select q from Questions q";
		javax.persistence.TypedQuery<Questions> query=em.createQuery(q1,Questions.class);
		List<Questions> l=query.getResultList();
		
		for(Questions b:l)
		{
			System.out.println("\n\n----------"+b);
		}
			/*System.out.println("in dao");
			String ql = " from Users";
			Query q = em.createQuery(ql);
			return q.getResultList();*/
		
	return l;

	}

	@Override
	public Questions findQuestions(int question_id) {
		// TODO Auto-generated method stub
		Questions q1 = em.find(Questions.class, new Integer(question_id));
		return q1;
	}

	@Override
	@Transactional
	public void removeQuestion(Questions q) {
		// TODO Auto-generated method stub
		q=em.merge(q);
		em.remove(q);
	}

	@Override
	public List<Questions> findAllQuestionsWithChoice() {
		// TODO Auto-generated method stub
		String q1="select q from Questions q";
		TypedQuery<Questions> query = em.createQuery(q1, Questions.class);
			    List<Questions> l = query.getResultList();
	for(Questions b:l)
		{
			System.out.println("\n\n----------"+b);
		}
			/*System.out.println("in dao");
			String ql = " from Questions";
		 q = em.createQuery(l);
			return q.getResultList();*/
		
	return l;
	}
	

}
