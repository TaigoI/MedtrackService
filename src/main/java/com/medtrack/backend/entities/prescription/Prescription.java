package com.medtrack.backend.entities.prescription;

import com.medtrack.backend.commands.prescription.Prescription.PrescriptionCommand;
import com.medtrack.backend.entities.user.User;
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
    private Long id;

    private String title;
    private String description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    @CreationTimestamp
    private LocalDateTime createdAt;

    @OneToMany(mappedBy = "prescription")
    private List<PrescriptionItem> itemList;

    private Boolean template;
    private String templateTitle;
    private String templateDescription;

    public Prescription(PrescriptionCommand command, User user) {
        this.title = command.getTitle();
        this.description = command.getDescription();
        this.user = user;
        this.template = command.getTemplate();
        this.templateTitle = command.getTemplateTitle();
        this.templateDescription = command.getTemplateDescription();
    }

}
