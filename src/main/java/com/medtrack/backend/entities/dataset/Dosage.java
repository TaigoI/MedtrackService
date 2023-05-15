package com.medtrack.backend.entities.dataset;

import com.medtrack.backend.commands.dataset.Dosage.DosageCommand;
import com.medtrack.backend.util.Searchable;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "dosage")
public class Dosage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String amount;
    private String unit;
    private String searchable;

    public Dosage(DosageCommand command) {
        updateWithCommand(command);
    }

    public void updateWithCommand(DosageCommand command) {
        this.amount = command.getAmount();
        this.unit = command.getUnit();
        this.searchable = Searchable.toSimilarity(amount + unit);
    }

}
