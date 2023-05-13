package com.medtrack.backend.entities.prescription;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Prescription {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long prescriptionId;

    String title;

    @CreationTimestamp
    LocalDateTime createdAt;

    @OneToMany(mappedBy = "prescription")
    List<PrescriptionItem> itemList;

}
