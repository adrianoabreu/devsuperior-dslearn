package com.devsuperior.dslearnbds.entities;

import java.io.Serializable;
import java.time.Instant;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.devsuperior.dslearnbds.entities.pk.EnrollmentPK;

@Entity
@Table(name = "tb_enrollment")  //Anotação que define o nome da tabela no banco de dados
public class Enrollment implements Serializable{

	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private EnrollmentPK id = new EnrollmentPK(); // chave primária composta da tabela Enrollment
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant enrollMoment;  // data da matrícula
	
	@Column(columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant refundMoment;  // data em que ocorreu o reembolso
	private boolean available;     // flag de matrícula ativada ou desativada
	private boolean onlyUpdate;    // flag de matrícula regular ou de atualização de conteúdos do curso
	
	public Enrollment() {
		
	}

	public Enrollment(User user, Offer offer, Instant enrollMoment, Instant refundMoment, boolean available,
			boolean onlyUpdate) {
		super();
		this.id.setUser(user);
		this.id.setOffer(offer);
		this.enrollMoment = enrollMoment;
		this.refundMoment = refundMoment;
		this.available = available;
		this.onlyUpdate = onlyUpdate;
	}

	public User getStudent() {
		return id.getUser();
	}

	public void setStudent(User user) {
		this.id.setUser(user);
	}
	
	public Offer getOffer() {
		return id.getOffer();
	}

	public void setOffer(Offer offer) {
		this.id.setOffer(offer);
	}

	public Instant getEnrollMoment() {
		return enrollMoment;
	}

	public void setEnrollMoment(Instant enrollMoment) {
		this.enrollMoment = enrollMoment;
	}

	public Instant getRefundMoment() {
		return refundMoment;
	}

	public void setRefundMoment(Instant refundMoment) {
		this.refundMoment = refundMoment;
	}

	public boolean isAvailable() {
		return available;
	}

	public void setAvailable(boolean available) {
		this.available = available;
	}

	public boolean isOnlyUpdate() {
		return onlyUpdate;
	}

	public void setOnlyUpdate(boolean onlyUpdate) {
		this.onlyUpdate = onlyUpdate;
	}
	
	
	
}
