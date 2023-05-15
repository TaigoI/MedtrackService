package com.medtrack.backend.entities.dataset;

import com.medtrack.backend.commands.dataset.Presentation.PresentationCommand;
import com.medtrack.backend.util.Searchable;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "presentation")
public class Presentation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String searchable;

    public Presentation(PresentationCommand command) {
        updateWithCommand(command);
    }

    public void updateWithCommand(PresentationCommand command) {
        this.name = command.getName();
        this.searchable = Searchable.toSimilarity(command.getName());
    }

}
