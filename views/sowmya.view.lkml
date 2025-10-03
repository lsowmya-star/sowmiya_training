view: sowmya {}
# If necessary, uncomment the line below to include explore_source.
# include: "sowmiya_training.model.lkml"

  view: add_a_unique_name_1759473947 {
    derived_table: {
      explore_source: orders {
        column: count {}
        column: state { field: users.state }
        filters: {
          field: orders.status
          value: "COMPLETED"
        }
      }
    }

    dimension: count {
      description: ""
      type: number
    }
    dimension: state {
      description: ""
    }
  }

