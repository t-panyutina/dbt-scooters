{% docs event_types %}

### Event Types

The `event_types` table provides a mapping between the unique identifiers of event types and their textual representations. This dataset is essential for interpreting the types of events recorded in the user events table. Each row in the `event_types` table corresponds to a specific event type that users can trigger within the application. The table includes the following columns:

- `type_id`: An integer representing the unique identifier for each event type. This ID is used in the user events table to refer to specific event types.
- `type`: A string providing the textual name of the event type. This name describes the nature of the event and is used for reporting and analysis purposes.

#### Columns

- **type_id**: 
  - **Description**: Unique identifier for the event type.
  - **Type**: Integer
  - **Example**: 0, 1, 2, 3

- **type**: 
  - **Description**: Textual name of the event type.
  - **Type**: String
  - **Example**: "start_search", "book_scooter", "release_scooter", "cancel_search"

#### Example Entries

- `type_id`: 0, `type`: "start_search"
  - Represents an event where a user initiates a search.

- `type_id`: 1, `type`: "book_scooter"
  - Represents an event where a user books a scooter.

- `type_id`: 2, `type`: "release_scooter"
  - Represents an event where a user releases a scooter after use.

- `type_id`: 3, `type`: "cancel_search"
  - Represents an event where a user cancels a previously initiated search.

This table is crucial for the accurate categorization and analysis of user actions within the application. By referencing the `event_types` table, analysts can better understand user behavior and the distribution of different event types within the system.

{% enddocs %}