package com.medtrack.backend.entities.dataset;

import com.medtrack.backend.commands.dataset.Medication.MedicationCommand;
import com.medtrack.backend.util.Searchable;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "medication")
public class Medication {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String searchable;

    public Medication(MedicationCommand command) {
        updateWithCommand(command);
    }

    public void updateWithCommand(MedicationCommand command) {
        this.name = command.getName();
        this.searchable = Searchable.toSimilarity(command.getName());
    }

}
