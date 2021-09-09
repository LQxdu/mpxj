module MPXJ
  module TaskMethods
    # Retrieve the Active value
    #
    # @return Active value
    def active
      get_boolean_value(attribute_values['active'])
    end

    # Retrieve the Activity ID value
    #
    # @return Activity ID value
    def activity_id
      attribute_values['activity_id']
    end

    # Retrieve the Activity Status value
    #
    # @return Activity Status value
    def activity_status
      attribute_values['activity_status']
    end

    # Retrieve the Activity Type value
    #
    # @return Activity Type value
    def activity_type
      attribute_values['activity_type']
    end

    # Retrieve the Actual Cost value
    #
    # @return Actual Cost value
    def actual_cost
      get_float_value(attribute_values['actual_cost'])
    end

    # Retrieve the Actual Duration value
    #
    # @return Actual Duration value
    def actual_duration
      get_duration_value(attribute_values['actual_duration'])
    end

    # Retrieve the Actual Duration Units value
    #
    # @return Actual Duration Units value
    def actual_duration_units
      attribute_values['actual_duration_units']
    end

    # Retrieve the Actual Finish value
    #
    # @return Actual Finish value
    def actual_finish
      get_date_value(attribute_values['actual_finish'])
    end

    # Retrieve the Actual Overtime Cost value
    #
    # @return Actual Overtime Cost value
    def actual_overtime_cost
      get_float_value(attribute_values['actual_overtime_cost'])
    end

    # Retrieve the Actual Overtime Work value
    #
    # @return Actual Overtime Work value
    def actual_overtime_work
      get_duration_value(attribute_values['actual_overtime_work'])
    end

    # Retrieve the Actual Overtime Work Protected value
    #
    # @return Actual Overtime Work Protected value
    def actual_overtime_work_protected
      get_duration_value(attribute_values['actual_overtime_work_protected'])
    end

    # Retrieve the Actual Start value
    #
    # @return Actual Start value
    def actual_start
      get_date_value(attribute_values['actual_start'])
    end

    # Retrieve the Actual Work value
    #
    # @return Actual Work value
    def actual_work
      get_duration_value(attribute_values['actual_work'])
    end

    # Retrieve the Actual Work Protected value
    #
    # @return Actual Work Protected value
    def actual_work_protected
      get_duration_value(attribute_values['actual_work_protected'])
    end

    # Retrieve the ACWP value
    #
    # @return ACWP value
    def acwp
      get_float_value(attribute_values['acwp'])
    end

    # Retrieve the Assignment value
    #
    # @return Assignment value
    def assignment
      attribute_values['assignment']
    end

    # Retrieve the Assignment Delay value
    #
    # @return Assignment Delay value
    def assignment_delay
      attribute_values['assignment_delay']
    end

    # Retrieve the Assignment Owner value
    #
    # @return Assignment Owner value
    def assignment_owner
      attribute_values['assignment_owner']
    end

    # Retrieve the Assignment Units value
    #
    # @return Assignment Units value
    def assignment_units
      attribute_values['assignment_units']
    end

    # Retrieve the Baseline10 Budget Cost value
    #
    # @return Baseline10 Budget Cost value
    def baseline10_budget_cost
      get_float_value(attribute_values['baseline10_budget_cost'])
    end

    # Retrieve the Baseline10 Budget Work value
    #
    # @return Baseline10 Budget Work value
    def baseline10_budget_work
      get_float_value(attribute_values['baseline10_budget_work'])
    end

    # Retrieve the Baseline10 Cost value
    #
    # @return Baseline10 Cost value
    def baseline10_cost
      get_float_value(attribute_values['baseline10_cost'])
    end

    # Retrieve the Baseline10 Deliverable Finish value
    #
    # @return Baseline10 Deliverable Finish value
    def baseline10_deliverable_finish
      get_date_value(attribute_values['baseline10_deliverable_finish'])
    end

    # Retrieve the Baseline10 Deliverable Start value
    #
    # @return Baseline10 Deliverable Start value
    def baseline10_deliverable_start
      get_date_value(attribute_values['baseline10_deliverable_start'])
    end

    # Retrieve the Baseline10 Duration value
    #
    # @return Baseline10 Duration value
    def baseline10_duration
      get_duration_value(attribute_values['baseline10_duration'])
    end

    # Retrieve the Baseline10 Duration Estimated value
    #
    # @return Baseline10 Duration Estimated value
    def baseline10_duration_estimated
      get_boolean_value(attribute_values['baseline10_duration_estimated'])
    end

    # Retrieve the Baseline10 Duration Units value
    #
    # @return Baseline10 Duration Units value
    def baseline10_duration_units
      attribute_values['baseline10_duration_units']
    end

    # Retrieve the Baseline10 Estimated Duration value
    #
    # @return Baseline10 Estimated Duration value
    def baseline10_estimated_duration
      get_duration_value(attribute_values['baseline10_estimated_duration'])
    end

    # Retrieve the Baseline10 Estimated Finish value
    #
    # @return Baseline10 Estimated Finish value
    def baseline10_estimated_finish
      get_date_value(attribute_values['baseline10_estimated_finish'])
    end

    # Retrieve the Baseline10 Estimated Start value
    #
    # @return Baseline10 Estimated Start value
    def baseline10_estimated_start
      get_date_value(attribute_values['baseline10_estimated_start'])
    end

    # Retrieve the Baseline10 Finish value
    #
    # @return Baseline10 Finish value
    def baseline10_finish
      get_date_value(attribute_values['baseline10_finish'])
    end

    # Retrieve the Baseline10 Fixed Cost value
    #
    # @return Baseline10 Fixed Cost value
    def baseline10_fixed_cost
      get_float_value(attribute_values['baseline10_fixed_cost'])
    end

    # Retrieve the Baseline10 Fixed Cost Accrual value
    #
    # @return Baseline10 Fixed Cost Accrual value
    def baseline10_fixed_cost_accrual
      attribute_values['baseline10_fixed_cost_accrual']
    end

    # Retrieve the Baseline10 Start value
    #
    # @return Baseline10 Start value
    def baseline10_start
      get_date_value(attribute_values['baseline10_start'])
    end

    # Retrieve the Baseline10 Work value
    #
    # @return Baseline10 Work value
    def baseline10_work
      get_duration_value(attribute_values['baseline10_work'])
    end

    # Retrieve the Baseline1 Budget Cost value
    #
    # @return Baseline1 Budget Cost value
    def baseline1_budget_cost
      get_float_value(attribute_values['baseline1_budget_cost'])
    end

    # Retrieve the Baseline1 Budget Work value
    #
    # @return Baseline1 Budget Work value
    def baseline1_budget_work
      get_float_value(attribute_values['baseline1_budget_work'])
    end

    # Retrieve the Baseline1 Cost value
    #
    # @return Baseline1 Cost value
    def baseline1_cost
      get_float_value(attribute_values['baseline1_cost'])
    end

    # Retrieve the Baseline1 Deliverable Finish value
    #
    # @return Baseline1 Deliverable Finish value
    def baseline1_deliverable_finish
      get_date_value(attribute_values['baseline1_deliverable_finish'])
    end

    # Retrieve the Baseline1 Deliverable Start value
    #
    # @return Baseline1 Deliverable Start value
    def baseline1_deliverable_start
      get_date_value(attribute_values['baseline1_deliverable_start'])
    end

    # Retrieve the Baseline1 Duration value
    #
    # @return Baseline1 Duration value
    def baseline1_duration
      get_duration_value(attribute_values['baseline1_duration'])
    end

    # Retrieve the Baseline1 Duration Estimated value
    #
    # @return Baseline1 Duration Estimated value
    def baseline1_duration_estimated
      get_boolean_value(attribute_values['baseline1_duration_estimated'])
    end

    # Retrieve the Baseline1 Duration Units value
    #
    # @return Baseline1 Duration Units value
    def baseline1_duration_units
      attribute_values['baseline1_duration_units']
    end

    # Retrieve the Baseline1 Estimated Duration value
    #
    # @return Baseline1 Estimated Duration value
    def baseline1_estimated_duration
      get_duration_value(attribute_values['baseline1_estimated_duration'])
    end

    # Retrieve the Baseline1 Estimated Finish value
    #
    # @return Baseline1 Estimated Finish value
    def baseline1_estimated_finish
      get_date_value(attribute_values['baseline1_estimated_finish'])
    end

    # Retrieve the Baseline1 Estimated Start value
    #
    # @return Baseline1 Estimated Start value
    def baseline1_estimated_start
      get_date_value(attribute_values['baseline1_estimated_start'])
    end

    # Retrieve the Baseline1 Finish value
    #
    # @return Baseline1 Finish value
    def baseline1_finish
      get_date_value(attribute_values['baseline1_finish'])
    end

    # Retrieve the Baseline1 Fixed Cost value
    #
    # @return Baseline1 Fixed Cost value
    def baseline1_fixed_cost
      get_float_value(attribute_values['baseline1_fixed_cost'])
    end

    # Retrieve the Baseline1 Fixed Cost Accrual value
    #
    # @return Baseline1 Fixed Cost Accrual value
    def baseline1_fixed_cost_accrual
      attribute_values['baseline1_fixed_cost_accrual']
    end

    # Retrieve the Baseline1 Start value
    #
    # @return Baseline1 Start value
    def baseline1_start
      get_date_value(attribute_values['baseline1_start'])
    end

    # Retrieve the Baseline1 Work value
    #
    # @return Baseline1 Work value
    def baseline1_work
      get_duration_value(attribute_values['baseline1_work'])
    end

    # Retrieve the Baseline2 Budget Cost value
    #
    # @return Baseline2 Budget Cost value
    def baseline2_budget_cost
      get_float_value(attribute_values['baseline2_budget_cost'])
    end

    # Retrieve the Baseline2 Budget Work value
    #
    # @return Baseline2 Budget Work value
    def baseline2_budget_work
      get_float_value(attribute_values['baseline2_budget_work'])
    end

    # Retrieve the Baseline2 Cost value
    #
    # @return Baseline2 Cost value
    def baseline2_cost
      get_float_value(attribute_values['baseline2_cost'])
    end

    # Retrieve the Baseline2 Deliverable Finish value
    #
    # @return Baseline2 Deliverable Finish value
    def baseline2_deliverable_finish
      get_date_value(attribute_values['baseline2_deliverable_finish'])
    end

    # Retrieve the Baseline2 Deliverable Start value
    #
    # @return Baseline2 Deliverable Start value
    def baseline2_deliverable_start
      get_date_value(attribute_values['baseline2_deliverable_start'])
    end

    # Retrieve the Baseline2 Duration value
    #
    # @return Baseline2 Duration value
    def baseline2_duration
      get_duration_value(attribute_values['baseline2_duration'])
    end

    # Retrieve the Baseline2 Duration Estimated value
    #
    # @return Baseline2 Duration Estimated value
    def baseline2_duration_estimated
      get_boolean_value(attribute_values['baseline2_duration_estimated'])
    end

    # Retrieve the Baseline2 Duration Units value
    #
    # @return Baseline2 Duration Units value
    def baseline2_duration_units
      attribute_values['baseline2_duration_units']
    end

    # Retrieve the Baseline2 Estimated Duration value
    #
    # @return Baseline2 Estimated Duration value
    def baseline2_estimated_duration
      get_duration_value(attribute_values['baseline2_estimated_duration'])
    end

    # Retrieve the Baseline2 Estimated Finish value
    #
    # @return Baseline2 Estimated Finish value
    def baseline2_estimated_finish
      get_date_value(attribute_values['baseline2_estimated_finish'])
    end

    # Retrieve the Baseline2 Estimated Start value
    #
    # @return Baseline2 Estimated Start value
    def baseline2_estimated_start
      get_date_value(attribute_values['baseline2_estimated_start'])
    end

    # Retrieve the Baseline2 Finish value
    #
    # @return Baseline2 Finish value
    def baseline2_finish
      get_date_value(attribute_values['baseline2_finish'])
    end

    # Retrieve the Baseline2 Fixed Cost value
    #
    # @return Baseline2 Fixed Cost value
    def baseline2_fixed_cost
      get_float_value(attribute_values['baseline2_fixed_cost'])
    end

    # Retrieve the Baseline2 Fixed Cost Accrual value
    #
    # @return Baseline2 Fixed Cost Accrual value
    def baseline2_fixed_cost_accrual
      attribute_values['baseline2_fixed_cost_accrual']
    end

    # Retrieve the Baseline2 Start value
    #
    # @return Baseline2 Start value
    def baseline2_start
      get_date_value(attribute_values['baseline2_start'])
    end

    # Retrieve the Baseline2 Work value
    #
    # @return Baseline2 Work value
    def baseline2_work
      get_duration_value(attribute_values['baseline2_work'])
    end

    # Retrieve the Baseline3 Budget Cost value
    #
    # @return Baseline3 Budget Cost value
    def baseline3_budget_cost
      get_float_value(attribute_values['baseline3_budget_cost'])
    end

    # Retrieve the Baseline3 Budget Work value
    #
    # @return Baseline3 Budget Work value
    def baseline3_budget_work
      get_float_value(attribute_values['baseline3_budget_work'])
    end

    # Retrieve the Baseline3 Cost value
    #
    # @return Baseline3 Cost value
    def baseline3_cost
      get_float_value(attribute_values['baseline3_cost'])
    end

    # Retrieve the Baseline3 Deliverable Finish value
    #
    # @return Baseline3 Deliverable Finish value
    def baseline3_deliverable_finish
      get_date_value(attribute_values['baseline3_deliverable_finish'])
    end

    # Retrieve the Baseline3 Deliverable Start value
    #
    # @return Baseline3 Deliverable Start value
    def baseline3_deliverable_start
      get_date_value(attribute_values['baseline3_deliverable_start'])
    end

    # Retrieve the Baseline3 Duration value
    #
    # @return Baseline3 Duration value
    def baseline3_duration
      get_duration_value(attribute_values['baseline3_duration'])
    end

    # Retrieve the Baseline3 Duration Estimated value
    #
    # @return Baseline3 Duration Estimated value
    def baseline3_duration_estimated
      get_boolean_value(attribute_values['baseline3_duration_estimated'])
    end

    # Retrieve the Baseline3 Duration Units value
    #
    # @return Baseline3 Duration Units value
    def baseline3_duration_units
      attribute_values['baseline3_duration_units']
    end

    # Retrieve the Baseline3 Estimated Duration value
    #
    # @return Baseline3 Estimated Duration value
    def baseline3_estimated_duration
      get_duration_value(attribute_values['baseline3_estimated_duration'])
    end

    # Retrieve the Baseline3 Estimated Finish value
    #
    # @return Baseline3 Estimated Finish value
    def baseline3_estimated_finish
      get_date_value(attribute_values['baseline3_estimated_finish'])
    end

    # Retrieve the Baseline3 Estimated Start value
    #
    # @return Baseline3 Estimated Start value
    def baseline3_estimated_start
      get_date_value(attribute_values['baseline3_estimated_start'])
    end

    # Retrieve the Baseline3 Finish value
    #
    # @return Baseline3 Finish value
    def baseline3_finish
      get_date_value(attribute_values['baseline3_finish'])
    end

    # Retrieve the Baseline3 Fixed Cost value
    #
    # @return Baseline3 Fixed Cost value
    def baseline3_fixed_cost
      get_float_value(attribute_values['baseline3_fixed_cost'])
    end

    # Retrieve the Baseline3 Fixed Cost Accrual value
    #
    # @return Baseline3 Fixed Cost Accrual value
    def baseline3_fixed_cost_accrual
      attribute_values['baseline3_fixed_cost_accrual']
    end

    # Retrieve the Baseline3 Start value
    #
    # @return Baseline3 Start value
    def baseline3_start
      get_date_value(attribute_values['baseline3_start'])
    end

    # Retrieve the Baseline3 Work value
    #
    # @return Baseline3 Work value
    def baseline3_work
      get_duration_value(attribute_values['baseline3_work'])
    end

    # Retrieve the Baseline4 Budget Cost value
    #
    # @return Baseline4 Budget Cost value
    def baseline4_budget_cost
      get_float_value(attribute_values['baseline4_budget_cost'])
    end

    # Retrieve the Baseline4 Budget Work value
    #
    # @return Baseline4 Budget Work value
    def baseline4_budget_work
      get_float_value(attribute_values['baseline4_budget_work'])
    end

    # Retrieve the Baseline4 Cost value
    #
    # @return Baseline4 Cost value
    def baseline4_cost
      get_float_value(attribute_values['baseline4_cost'])
    end

    # Retrieve the Baseline4 Deliverable Finish value
    #
    # @return Baseline4 Deliverable Finish value
    def baseline4_deliverable_finish
      get_date_value(attribute_values['baseline4_deliverable_finish'])
    end

    # Retrieve the Baseline4 Deliverable Start value
    #
    # @return Baseline4 Deliverable Start value
    def baseline4_deliverable_start
      get_date_value(attribute_values['baseline4_deliverable_start'])
    end

    # Retrieve the Baseline4 Duration value
    #
    # @return Baseline4 Duration value
    def baseline4_duration
      get_duration_value(attribute_values['baseline4_duration'])
    end

    # Retrieve the Baseline4 Duration Estimated value
    #
    # @return Baseline4 Duration Estimated value
    def baseline4_duration_estimated
      get_boolean_value(attribute_values['baseline4_duration_estimated'])
    end

    # Retrieve the Baseline4 Duration Units value
    #
    # @return Baseline4 Duration Units value
    def baseline4_duration_units
      attribute_values['baseline4_duration_units']
    end

    # Retrieve the Baseline4 Estimated Duration value
    #
    # @return Baseline4 Estimated Duration value
    def baseline4_estimated_duration
      get_duration_value(attribute_values['baseline4_estimated_duration'])
    end

    # Retrieve the Baseline4 Estimated Finish value
    #
    # @return Baseline4 Estimated Finish value
    def baseline4_estimated_finish
      get_date_value(attribute_values['baseline4_estimated_finish'])
    end

    # Retrieve the Baseline4 Estimated Start value
    #
    # @return Baseline4 Estimated Start value
    def baseline4_estimated_start
      get_date_value(attribute_values['baseline4_estimated_start'])
    end

    # Retrieve the Baseline4 Finish value
    #
    # @return Baseline4 Finish value
    def baseline4_finish
      get_date_value(attribute_values['baseline4_finish'])
    end

    # Retrieve the Baseline4 Fixed Cost value
    #
    # @return Baseline4 Fixed Cost value
    def baseline4_fixed_cost
      get_float_value(attribute_values['baseline4_fixed_cost'])
    end

    # Retrieve the Baseline4 Fixed Cost Accrual value
    #
    # @return Baseline4 Fixed Cost Accrual value
    def baseline4_fixed_cost_accrual
      attribute_values['baseline4_fixed_cost_accrual']
    end

    # Retrieve the Baseline4 Start value
    #
    # @return Baseline4 Start value
    def baseline4_start
      get_date_value(attribute_values['baseline4_start'])
    end

    # Retrieve the Baseline4 Work value
    #
    # @return Baseline4 Work value
    def baseline4_work
      get_duration_value(attribute_values['baseline4_work'])
    end

    # Retrieve the Baseline5 Budget Cost value
    #
    # @return Baseline5 Budget Cost value
    def baseline5_budget_cost
      get_float_value(attribute_values['baseline5_budget_cost'])
    end

    # Retrieve the Baseline5 Budget Work value
    #
    # @return Baseline5 Budget Work value
    def baseline5_budget_work
      get_float_value(attribute_values['baseline5_budget_work'])
    end

    # Retrieve the Baseline5 Cost value
    #
    # @return Baseline5 Cost value
    def baseline5_cost
      get_float_value(attribute_values['baseline5_cost'])
    end

    # Retrieve the Baseline5 Deliverable Finish value
    #
    # @return Baseline5 Deliverable Finish value
    def baseline5_deliverable_finish
      get_date_value(attribute_values['baseline5_deliverable_finish'])
    end

    # Retrieve the Baseline5 Deliverable Start value
    #
    # @return Baseline5 Deliverable Start value
    def baseline5_deliverable_start
      get_date_value(attribute_values['baseline5_deliverable_start'])
    end

    # Retrieve the Baseline5 Duration value
    #
    # @return Baseline5 Duration value
    def baseline5_duration
      get_duration_value(attribute_values['baseline5_duration'])
    end

    # Retrieve the Baseline5 Duration Estimated value
    #
    # @return Baseline5 Duration Estimated value
    def baseline5_duration_estimated
      get_boolean_value(attribute_values['baseline5_duration_estimated'])
    end

    # Retrieve the Baseline5 Duration Units value
    #
    # @return Baseline5 Duration Units value
    def baseline5_duration_units
      attribute_values['baseline5_duration_units']
    end

    # Retrieve the Baseline5 Estimated Duration value
    #
    # @return Baseline5 Estimated Duration value
    def baseline5_estimated_duration
      get_duration_value(attribute_values['baseline5_estimated_duration'])
    end

    # Retrieve the Baseline5 Estimated Finish value
    #
    # @return Baseline5 Estimated Finish value
    def baseline5_estimated_finish
      get_date_value(attribute_values['baseline5_estimated_finish'])
    end

    # Retrieve the Baseline5 Estimated Start value
    #
    # @return Baseline5 Estimated Start value
    def baseline5_estimated_start
      get_date_value(attribute_values['baseline5_estimated_start'])
    end

    # Retrieve the Baseline5 Finish value
    #
    # @return Baseline5 Finish value
    def baseline5_finish
      get_date_value(attribute_values['baseline5_finish'])
    end

    # Retrieve the Baseline5 Fixed Cost value
    #
    # @return Baseline5 Fixed Cost value
    def baseline5_fixed_cost
      get_float_value(attribute_values['baseline5_fixed_cost'])
    end

    # Retrieve the Baseline5 Fixed Cost Accrual value
    #
    # @return Baseline5 Fixed Cost Accrual value
    def baseline5_fixed_cost_accrual
      attribute_values['baseline5_fixed_cost_accrual']
    end

    # Retrieve the Baseline5 Start value
    #
    # @return Baseline5 Start value
    def baseline5_start
      get_date_value(attribute_values['baseline5_start'])
    end

    # Retrieve the Baseline5 Work value
    #
    # @return Baseline5 Work value
    def baseline5_work
      get_duration_value(attribute_values['baseline5_work'])
    end

    # Retrieve the Baseline6 Budget Cost value
    #
    # @return Baseline6 Budget Cost value
    def baseline6_budget_cost
      get_float_value(attribute_values['baseline6_budget_cost'])
    end

    # Retrieve the Baseline6 Budget Work value
    #
    # @return Baseline6 Budget Work value
    def baseline6_budget_work
      get_float_value(attribute_values['baseline6_budget_work'])
    end

    # Retrieve the Baseline6 Cost value
    #
    # @return Baseline6 Cost value
    def baseline6_cost
      get_float_value(attribute_values['baseline6_cost'])
    end

    # Retrieve the Baseline6 Deliverable Finish value
    #
    # @return Baseline6 Deliverable Finish value
    def baseline6_deliverable_finish
      get_date_value(attribute_values['baseline6_deliverable_finish'])
    end

    # Retrieve the Baseline6 Deliverable Start value
    #
    # @return Baseline6 Deliverable Start value
    def baseline6_deliverable_start
      get_date_value(attribute_values['baseline6_deliverable_start'])
    end

    # Retrieve the Baseline6 Duration value
    #
    # @return Baseline6 Duration value
    def baseline6_duration
      get_duration_value(attribute_values['baseline6_duration'])
    end

    # Retrieve the Baseline6 Duration Estimated value
    #
    # @return Baseline6 Duration Estimated value
    def baseline6_duration_estimated
      get_boolean_value(attribute_values['baseline6_duration_estimated'])
    end

    # Retrieve the Baseline6 Duration Units value
    #
    # @return Baseline6 Duration Units value
    def baseline6_duration_units
      attribute_values['baseline6_duration_units']
    end

    # Retrieve the Baseline6 Estimated Duration value
    #
    # @return Baseline6 Estimated Duration value
    def baseline6_estimated_duration
      get_duration_value(attribute_values['baseline6_estimated_duration'])
    end

    # Retrieve the Baseline6 Estimated Finish value
    #
    # @return Baseline6 Estimated Finish value
    def baseline6_estimated_finish
      get_date_value(attribute_values['baseline6_estimated_finish'])
    end

    # Retrieve the Baseline6 Estimated Start value
    #
    # @return Baseline6 Estimated Start value
    def baseline6_estimated_start
      get_date_value(attribute_values['baseline6_estimated_start'])
    end

    # Retrieve the Baseline6 Finish value
    #
    # @return Baseline6 Finish value
    def baseline6_finish
      get_date_value(attribute_values['baseline6_finish'])
    end

    # Retrieve the Baseline6 Fixed Cost value
    #
    # @return Baseline6 Fixed Cost value
    def baseline6_fixed_cost
      get_float_value(attribute_values['baseline6_fixed_cost'])
    end

    # Retrieve the Baseline6 Fixed Cost Accrual value
    #
    # @return Baseline6 Fixed Cost Accrual value
    def baseline6_fixed_cost_accrual
      attribute_values['baseline6_fixed_cost_accrual']
    end

    # Retrieve the Baseline6 Start value
    #
    # @return Baseline6 Start value
    def baseline6_start
      get_date_value(attribute_values['baseline6_start'])
    end

    # Retrieve the Baseline6 Work value
    #
    # @return Baseline6 Work value
    def baseline6_work
      get_duration_value(attribute_values['baseline6_work'])
    end

    # Retrieve the Baseline7 Budget Cost value
    #
    # @return Baseline7 Budget Cost value
    def baseline7_budget_cost
      get_float_value(attribute_values['baseline7_budget_cost'])
    end

    # Retrieve the Baseline7 Budget Work value
    #
    # @return Baseline7 Budget Work value
    def baseline7_budget_work
      get_float_value(attribute_values['baseline7_budget_work'])
    end

    # Retrieve the Baseline7 Cost value
    #
    # @return Baseline7 Cost value
    def baseline7_cost
      get_float_value(attribute_values['baseline7_cost'])
    end

    # Retrieve the Baseline7 Deliverable Finish value
    #
    # @return Baseline7 Deliverable Finish value
    def baseline7_deliverable_finish
      get_date_value(attribute_values['baseline7_deliverable_finish'])
    end

    # Retrieve the Baseline7 Deliverable Start value
    #
    # @return Baseline7 Deliverable Start value
    def baseline7_deliverable_start
      get_date_value(attribute_values['baseline7_deliverable_start'])
    end

    # Retrieve the Baseline7 Duration value
    #
    # @return Baseline7 Duration value
    def baseline7_duration
      get_duration_value(attribute_values['baseline7_duration'])
    end

    # Retrieve the Baseline7 Duration Estimated value
    #
    # @return Baseline7 Duration Estimated value
    def baseline7_duration_estimated
      get_boolean_value(attribute_values['baseline7_duration_estimated'])
    end

    # Retrieve the Baseline7 Duration Units value
    #
    # @return Baseline7 Duration Units value
    def baseline7_duration_units
      attribute_values['baseline7_duration_units']
    end

    # Retrieve the Baseline7 Estimated Duration value
    #
    # @return Baseline7 Estimated Duration value
    def baseline7_estimated_duration
      get_duration_value(attribute_values['baseline7_estimated_duration'])
    end

    # Retrieve the Baseline7 Estimated Finish value
    #
    # @return Baseline7 Estimated Finish value
    def baseline7_estimated_finish
      get_date_value(attribute_values['baseline7_estimated_finish'])
    end

    # Retrieve the Baseline7 Estimated Start value
    #
    # @return Baseline7 Estimated Start value
    def baseline7_estimated_start
      get_date_value(attribute_values['baseline7_estimated_start'])
    end

    # Retrieve the Baseline7 Finish value
    #
    # @return Baseline7 Finish value
    def baseline7_finish
      get_date_value(attribute_values['baseline7_finish'])
    end

    # Retrieve the Baseline7 Fixed Cost value
    #
    # @return Baseline7 Fixed Cost value
    def baseline7_fixed_cost
      get_float_value(attribute_values['baseline7_fixed_cost'])
    end

    # Retrieve the Baseline7 Fixed Cost Accrual value
    #
    # @return Baseline7 Fixed Cost Accrual value
    def baseline7_fixed_cost_accrual
      attribute_values['baseline7_fixed_cost_accrual']
    end

    # Retrieve the Baseline7 Start value
    #
    # @return Baseline7 Start value
    def baseline7_start
      get_date_value(attribute_values['baseline7_start'])
    end

    # Retrieve the Baseline7 Work value
    #
    # @return Baseline7 Work value
    def baseline7_work
      get_duration_value(attribute_values['baseline7_work'])
    end

    # Retrieve the Baseline8 Budget Cost value
    #
    # @return Baseline8 Budget Cost value
    def baseline8_budget_cost
      get_float_value(attribute_values['baseline8_budget_cost'])
    end

    # Retrieve the Baseline8 Budget Work value
    #
    # @return Baseline8 Budget Work value
    def baseline8_budget_work
      get_float_value(attribute_values['baseline8_budget_work'])
    end

    # Retrieve the Baseline8 Cost value
    #
    # @return Baseline8 Cost value
    def baseline8_cost
      get_float_value(attribute_values['baseline8_cost'])
    end

    # Retrieve the Baseline8 Deliverable Finish value
    #
    # @return Baseline8 Deliverable Finish value
    def baseline8_deliverable_finish
      get_date_value(attribute_values['baseline8_deliverable_finish'])
    end

    # Retrieve the Baseline8 Deliverable Start value
    #
    # @return Baseline8 Deliverable Start value
    def baseline8_deliverable_start
      get_date_value(attribute_values['baseline8_deliverable_start'])
    end

    # Retrieve the Baseline8 Duration value
    #
    # @return Baseline8 Duration value
    def baseline8_duration
      get_duration_value(attribute_values['baseline8_duration'])
    end

    # Retrieve the Baseline8 Duration Estimated value
    #
    # @return Baseline8 Duration Estimated value
    def baseline8_duration_estimated
      get_boolean_value(attribute_values['baseline8_duration_estimated'])
    end

    # Retrieve the Baseline8 Duration Units value
    #
    # @return Baseline8 Duration Units value
    def baseline8_duration_units
      attribute_values['baseline8_duration_units']
    end

    # Retrieve the Baseline8 Estimated Duration value
    #
    # @return Baseline8 Estimated Duration value
    def baseline8_estimated_duration
      get_duration_value(attribute_values['baseline8_estimated_duration'])
    end

    # Retrieve the Baseline8 Estimated Finish value
    #
    # @return Baseline8 Estimated Finish value
    def baseline8_estimated_finish
      get_date_value(attribute_values['baseline8_estimated_finish'])
    end

    # Retrieve the Baseline8 Estimated Start value
    #
    # @return Baseline8 Estimated Start value
    def baseline8_estimated_start
      get_date_value(attribute_values['baseline8_estimated_start'])
    end

    # Retrieve the Baseline8 Finish value
    #
    # @return Baseline8 Finish value
    def baseline8_finish
      get_date_value(attribute_values['baseline8_finish'])
    end

    # Retrieve the Baseline8 Fixed Cost value
    #
    # @return Baseline8 Fixed Cost value
    def baseline8_fixed_cost
      get_float_value(attribute_values['baseline8_fixed_cost'])
    end

    # Retrieve the Baseline8 Fixed Cost Accrual value
    #
    # @return Baseline8 Fixed Cost Accrual value
    def baseline8_fixed_cost_accrual
      attribute_values['baseline8_fixed_cost_accrual']
    end

    # Retrieve the Baseline8 Start value
    #
    # @return Baseline8 Start value
    def baseline8_start
      get_date_value(attribute_values['baseline8_start'])
    end

    # Retrieve the Baseline8 Work value
    #
    # @return Baseline8 Work value
    def baseline8_work
      get_duration_value(attribute_values['baseline8_work'])
    end

    # Retrieve the Baseline9 Budget Cost value
    #
    # @return Baseline9 Budget Cost value
    def baseline9_budget_cost
      get_float_value(attribute_values['baseline9_budget_cost'])
    end

    # Retrieve the Baseline9 Budget Work value
    #
    # @return Baseline9 Budget Work value
    def baseline9_budget_work
      get_float_value(attribute_values['baseline9_budget_work'])
    end

    # Retrieve the Baseline9 Cost value
    #
    # @return Baseline9 Cost value
    def baseline9_cost
      get_float_value(attribute_values['baseline9_cost'])
    end

    # Retrieve the Baseline9 Deliverable Finish value
    #
    # @return Baseline9 Deliverable Finish value
    def baseline9_deliverable_finish
      get_date_value(attribute_values['baseline9_deliverable_finish'])
    end

    # Retrieve the Baseline9 Deliverable Start value
    #
    # @return Baseline9 Deliverable Start value
    def baseline9_deliverable_start
      get_date_value(attribute_values['baseline9_deliverable_start'])
    end

    # Retrieve the Baseline9 Duration value
    #
    # @return Baseline9 Duration value
    def baseline9_duration
      get_duration_value(attribute_values['baseline9_duration'])
    end

    # Retrieve the Baseline9 Duration Estimated value
    #
    # @return Baseline9 Duration Estimated value
    def baseline9_duration_estimated
      get_boolean_value(attribute_values['baseline9_duration_estimated'])
    end

    # Retrieve the Baseline9 Duration Units value
    #
    # @return Baseline9 Duration Units value
    def baseline9_duration_units
      attribute_values['baseline9_duration_units']
    end

    # Retrieve the Baseline9 Estimated Duration value
    #
    # @return Baseline9 Estimated Duration value
    def baseline9_estimated_duration
      get_duration_value(attribute_values['baseline9_estimated_duration'])
    end

    # Retrieve the Baseline9 Estimated Finish value
    #
    # @return Baseline9 Estimated Finish value
    def baseline9_estimated_finish
      get_date_value(attribute_values['baseline9_estimated_finish'])
    end

    # Retrieve the Baseline9 Estimated Start value
    #
    # @return Baseline9 Estimated Start value
    def baseline9_estimated_start
      get_date_value(attribute_values['baseline9_estimated_start'])
    end

    # Retrieve the Baseline9 Finish value
    #
    # @return Baseline9 Finish value
    def baseline9_finish
      get_date_value(attribute_values['baseline9_finish'])
    end

    # Retrieve the Baseline9 Fixed Cost value
    #
    # @return Baseline9 Fixed Cost value
    def baseline9_fixed_cost
      get_float_value(attribute_values['baseline9_fixed_cost'])
    end

    # Retrieve the Baseline9 Fixed Cost Accrual value
    #
    # @return Baseline9 Fixed Cost Accrual value
    def baseline9_fixed_cost_accrual
      attribute_values['baseline9_fixed_cost_accrual']
    end

    # Retrieve the Baseline9 Start value
    #
    # @return Baseline9 Start value
    def baseline9_start
      get_date_value(attribute_values['baseline9_start'])
    end

    # Retrieve the Baseline9 Work value
    #
    # @return Baseline9 Work value
    def baseline9_work
      get_duration_value(attribute_values['baseline9_work'])
    end

    # Retrieve the Baseline Budget Cost value
    #
    # @return Baseline Budget Cost value
    def baseline_budget_cost
      get_float_value(attribute_values['baseline_budget_cost'])
    end

    # Retrieve the Baseline Budget Work value
    #
    # @return Baseline Budget Work value
    def baseline_budget_work
      get_duration_value(attribute_values['baseline_budget_work'])
    end

    # Retrieve the Baseline Cost value
    #
    # @return Baseline Cost value
    def baseline_cost
      get_float_value(attribute_values['baseline_cost'])
    end

    # Retrieve the Baseline Deliverable Finish value
    #
    # @return Baseline Deliverable Finish value
    def baseline_deliverable_finish
      get_date_value(attribute_values['baseline_deliverable_finish'])
    end

    # Retrieve the Baseline Deliverable Start value
    #
    # @return Baseline Deliverable Start value
    def baseline_deliverable_start
      get_date_value(attribute_values['baseline_deliverable_start'])
    end

    # Retrieve the Baseline Duration value
    #
    # @return Baseline Duration value
    def baseline_duration
      get_duration_value(attribute_values['baseline_duration'])
    end

    # Retrieve the Baseline Duration Estimated value
    #
    # @return Baseline Duration Estimated value
    def baseline_duration_estimated
      get_boolean_value(attribute_values['baseline_duration_estimated'])
    end

    # Retrieve the Baseline Duration Units value
    #
    # @return Baseline Duration Units value
    def baseline_duration_units
      attribute_values['baseline_duration_units']
    end

    # Retrieve the Baseline Estimated Duration value
    #
    # @return Baseline Estimated Duration value
    def baseline_estimated_duration
      get_duration_value(attribute_values['baseline_estimated_duration'])
    end

    # Retrieve the Baseline Estimated Finish value
    #
    # @return Baseline Estimated Finish value
    def baseline_estimated_finish
      get_date_value(attribute_values['baseline_estimated_finish'])
    end

    # Retrieve the Baseline Estimated Start value
    #
    # @return Baseline Estimated Start value
    def baseline_estimated_start
      get_date_value(attribute_values['baseline_estimated_start'])
    end

    # Retrieve the Baseline Finish value
    #
    # @return Baseline Finish value
    def baseline_finish
      get_date_value(attribute_values['baseline_finish'])
    end

    # Retrieve the Baseline Fixed Cost value
    #
    # @return Baseline Fixed Cost value
    def baseline_fixed_cost
      get_float_value(attribute_values['baseline_fixed_cost'])
    end

    # Retrieve the Baseline Fixed Cost Accrual value
    #
    # @return Baseline Fixed Cost Accrual value
    def baseline_fixed_cost_accrual
      attribute_values['baseline_fixed_cost_accrual']
    end

    # Retrieve the Baseline Start value
    #
    # @return Baseline Start value
    def baseline_start
      get_date_value(attribute_values['baseline_start'])
    end

    # Retrieve the Baseline Work value
    #
    # @return Baseline Work value
    def baseline_work
      get_duration_value(attribute_values['baseline_work'])
    end

    # Retrieve the BCWP value
    #
    # @return BCWP value
    def bcwp
      get_float_value(attribute_values['bcwp'])
    end

    # Retrieve the BCWS value
    #
    # @return BCWS value
    def bcws
      get_float_value(attribute_values['bcws'])
    end

    # Retrieve the Bid Item value
    #
    # @return Bid Item value
    def bid_item
      attribute_values['bid_item']
    end

    # Retrieve the Board Status value
    #
    # @return Board Status value
    def board_status
      attribute_values['board_status']
    end

    # Retrieve the Budget Cost value
    #
    # @return Budget Cost value
    def budget_cost
      get_float_value(attribute_values['budget_cost'])
    end

    # Retrieve the Budget Work value
    #
    # @return Budget Work value
    def budget_work
      get_duration_value(attribute_values['budget_work'])
    end

    # Retrieve the Task Calendar value
    #
    # @return Task Calendar value
    def calendar
      attribute_values['calendar']
    end

    # Retrieve the Calendar Unique ID value
    #
    # @return Calendar Unique ID value
    def calendar_unique_id
      get_integer_value(attribute_values['calendar_unique_id'])
    end

    # Retrieve the Category of Work value
    #
    # @return Category of Work value
    def category_of_work
      attribute_values['category_of_work']
    end

    # Retrieve the Complete Through value
    #
    # @return Complete Through value
    def complete_through
      get_date_value(attribute_values['complete_through'])
    end

    # Retrieve the Confirmed value
    #
    # @return Confirmed value
    def confirmed
      get_boolean_value(attribute_values['confirmed'])
    end

    # Retrieve the Constraint Date value
    #
    # @return Constraint Date value
    def constraint_date
      get_date_value(attribute_values['constraint_date'])
    end

    # Retrieve the Constraint Type value
    #
    # @return Constraint Type value
    def constraint_type
      attribute_values['constraint_type']
    end

    # Retrieve the Contact value
    #
    # @return Contact value
    def contact
      attribute_values['contact']
    end

    # Retrieve the Cost value
    #
    # @return Cost value
    def cost
      get_float_value(attribute_values['cost'])
    end

    # Retrieve the Cost1 value
    #
    # @return Cost1 value
    def cost1
      get_float_value(attribute_values['cost1'])
    end

    # Retrieve the Cost10 value
    #
    # @return Cost10 value
    def cost10
      get_float_value(attribute_values['cost10'])
    end

    # Retrieve the Cost2 value
    #
    # @return Cost2 value
    def cost2
      get_float_value(attribute_values['cost2'])
    end

    # Retrieve the Cost3 value
    #
    # @return Cost3 value
    def cost3
      get_float_value(attribute_values['cost3'])
    end

    # Retrieve the Cost4 value
    #
    # @return Cost4 value
    def cost4
      get_float_value(attribute_values['cost4'])
    end

    # Retrieve the Cost5 value
    #
    # @return Cost5 value
    def cost5
      get_float_value(attribute_values['cost5'])
    end

    # Retrieve the Cost6 value
    #
    # @return Cost6 value
    def cost6
      get_float_value(attribute_values['cost6'])
    end

    # Retrieve the Cost7 value
    #
    # @return Cost7 value
    def cost7
      get_float_value(attribute_values['cost7'])
    end

    # Retrieve the Cost8 value
    #
    # @return Cost8 value
    def cost8
      get_float_value(attribute_values['cost8'])
    end

    # Retrieve the Cost9 value
    #
    # @return Cost9 value
    def cost9
      get_float_value(attribute_values['cost9'])
    end

    # Retrieve the Cost Rate Table value
    #
    # @return Cost Rate Table value
    def cost_rate_table
      attribute_values['cost_rate_table']
    end

    # Retrieve the Cost Variance value
    #
    # @return Cost Variance value
    def cost_variance
      get_float_value(attribute_values['cost_variance'])
    end

    # Retrieve the CPI value
    #
    # @return CPI value
    def cpi
      get_float_value(attribute_values['cpi'])
    end

    # Retrieve the Created value
    #
    # @return Created value
    def created
      get_date_value(attribute_values['created'])
    end

    # Retrieve the Critical value
    #
    # @return Critical value
    def critical
      get_boolean_value(attribute_values['critical'])
    end

    # Retrieve the CV value
    #
    # @return CV value
    def cv
      get_float_value(attribute_values['cv'])
    end

    # Retrieve the CV% value
    #
    # @return CV% value
    def cvpercent
      get_float_value(attribute_values['cvpercent'])
    end

    # Retrieve the Date1 value
    #
    # @return Date1 value
    def date1
      get_date_value(attribute_values['date1'])
    end

    # Retrieve the Date10 value
    #
    # @return Date10 value
    def date10
      get_date_value(attribute_values['date10'])
    end

    # Retrieve the Date2 value
    #
    # @return Date2 value
    def date2
      get_date_value(attribute_values['date2'])
    end

    # Retrieve the Date3 value
    #
    # @return Date3 value
    def date3
      get_date_value(attribute_values['date3'])
    end

    # Retrieve the Date4 value
    #
    # @return Date4 value
    def date4
      get_date_value(attribute_values['date4'])
    end

    # Retrieve the Date5 value
    #
    # @return Date5 value
    def date5
      get_date_value(attribute_values['date5'])
    end

    # Retrieve the Date6 value
    #
    # @return Date6 value
    def date6
      get_date_value(attribute_values['date6'])
    end

    # Retrieve the Date7 value
    #
    # @return Date7 value
    def date7
      get_date_value(attribute_values['date7'])
    end

    # Retrieve the Date8 value
    #
    # @return Date8 value
    def date8
      get_date_value(attribute_values['date8'])
    end

    # Retrieve the Date9 value
    #
    # @return Date9 value
    def date9
      get_date_value(attribute_values['date9'])
    end

    # Retrieve the Deadline value
    #
    # @return Deadline value
    def deadline
      get_date_value(attribute_values['deadline'])
    end

    # Retrieve the Deliverable Finish value
    #
    # @return Deliverable Finish value
    def deliverable_finish
      get_date_value(attribute_values['deliverable_finish'])
    end

    # Retrieve the Deliverable GUID value
    #
    # @return Deliverable GUID value
    def deliverable_guid
      attribute_values['deliverable_guid']
    end

    # Retrieve the Deliverable Name value
    #
    # @return Deliverable Name value
    def deliverable_name
      attribute_values['deliverable_name']
    end

    # Retrieve the Deliverable Start value
    #
    # @return Deliverable Start value
    def deliverable_start
      get_date_value(attribute_values['deliverable_start'])
    end

    # Retrieve the Deliverable Type value
    #
    # @return Deliverable Type value
    def deliverable_type
      attribute_values['deliverable_type']
    end

    # Retrieve the Department value
    #
    # @return Department value
    def department
      attribute_values['department']
    end

    # Retrieve the Duration value
    #
    # @return Duration value
    def duration
      get_duration_value(attribute_values['duration'])
    end

    # Retrieve the Duration1 value
    #
    # @return Duration1 value
    def duration1
      get_duration_value(attribute_values['duration1'])
    end

    # Retrieve the Duration10 value
    #
    # @return Duration10 value
    def duration10
      get_duration_value(attribute_values['duration10'])
    end

    # Retrieve the Duration10 Estimated value
    #
    # @return Duration10 Estimated value
    def duration10_estimated
      get_boolean_value(attribute_values['duration10_estimated'])
    end

    # Retrieve the Duration10 Units value
    #
    # @return Duration10 Units value
    def duration10_units
      attribute_values['duration10_units']
    end

    # Retrieve the Duration1 Estimated value
    #
    # @return Duration1 Estimated value
    def duration1_estimated
      get_boolean_value(attribute_values['duration1_estimated'])
    end

    # Retrieve the Duration1 Units value
    #
    # @return Duration1 Units value
    def duration1_units
      attribute_values['duration1_units']
    end

    # Retrieve the Duration2 value
    #
    # @return Duration2 value
    def duration2
      get_duration_value(attribute_values['duration2'])
    end

    # Retrieve the Duration2 Estimated value
    #
    # @return Duration2 Estimated value
    def duration2_estimated
      get_boolean_value(attribute_values['duration2_estimated'])
    end

    # Retrieve the Duration2 Units value
    #
    # @return Duration2 Units value
    def duration2_units
      attribute_values['duration2_units']
    end

    # Retrieve the Duration3 value
    #
    # @return Duration3 value
    def duration3
      get_duration_value(attribute_values['duration3'])
    end

    # Retrieve the Duration3 Estimated value
    #
    # @return Duration3 Estimated value
    def duration3_estimated
      get_boolean_value(attribute_values['duration3_estimated'])
    end

    # Retrieve the Duration3 Units value
    #
    # @return Duration3 Units value
    def duration3_units
      attribute_values['duration3_units']
    end

    # Retrieve the Duration4 value
    #
    # @return Duration4 value
    def duration4
      get_duration_value(attribute_values['duration4'])
    end

    # Retrieve the Duration4 Estimated value
    #
    # @return Duration4 Estimated value
    def duration4_estimated
      get_boolean_value(attribute_values['duration4_estimated'])
    end

    # Retrieve the Duration4 Units value
    #
    # @return Duration4 Units value
    def duration4_units
      attribute_values['duration4_units']
    end

    # Retrieve the Duration5 value
    #
    # @return Duration5 value
    def duration5
      get_duration_value(attribute_values['duration5'])
    end

    # Retrieve the Duration5 Estimated value
    #
    # @return Duration5 Estimated value
    def duration5_estimated
      get_boolean_value(attribute_values['duration5_estimated'])
    end

    # Retrieve the Duration5 Units value
    #
    # @return Duration5 Units value
    def duration5_units
      attribute_values['duration5_units']
    end

    # Retrieve the Duration6 value
    #
    # @return Duration6 value
    def duration6
      get_duration_value(attribute_values['duration6'])
    end

    # Retrieve the Duration6 Estimated value
    #
    # @return Duration6 Estimated value
    def duration6_estimated
      get_boolean_value(attribute_values['duration6_estimated'])
    end

    # Retrieve the Duration6 Units value
    #
    # @return Duration6 Units value
    def duration6_units
      attribute_values['duration6_units']
    end

    # Retrieve the Duration7 value
    #
    # @return Duration7 value
    def duration7
      get_duration_value(attribute_values['duration7'])
    end

    # Retrieve the Duration7 Estimated value
    #
    # @return Duration7 Estimated value
    def duration7_estimated
      get_boolean_value(attribute_values['duration7_estimated'])
    end

    # Retrieve the Duration7 Units value
    #
    # @return Duration7 Units value
    def duration7_units
      attribute_values['duration7_units']
    end

    # Retrieve the Duration8 value
    #
    # @return Duration8 value
    def duration8
      get_duration_value(attribute_values['duration8'])
    end

    # Retrieve the Duration8 Estimated value
    #
    # @return Duration8 Estimated value
    def duration8_estimated
      get_boolean_value(attribute_values['duration8_estimated'])
    end

    # Retrieve the Duration8 Units value
    #
    # @return Duration8 Units value
    def duration8_units
      attribute_values['duration8_units']
    end

    # Retrieve the Duration9 value
    #
    # @return Duration9 value
    def duration9
      get_duration_value(attribute_values['duration9'])
    end

    # Retrieve the Duration9 Estimated value
    #
    # @return Duration9 Estimated value
    def duration9_estimated
      get_boolean_value(attribute_values['duration9_estimated'])
    end

    # Retrieve the Duration9 Units value
    #
    # @return Duration9 Units value
    def duration9_units
      attribute_values['duration9_units']
    end

    # Retrieve the Duration value
    #
    # @return Duration value
    def duration_text
      attribute_values['duration_text']
    end

    # Retrieve the Duration Units value
    #
    # @return Duration Units value
    def duration_units
      attribute_values['duration_units']
    end

    # Retrieve the Duration Variance value
    #
    # @return Duration Variance value
    def duration_variance
      get_duration_value(attribute_values['duration_variance'])
    end

    # Retrieve the EAC value
    #
    # @return EAC value
    def eac
      get_float_value(attribute_values['eac'])
    end

    # Retrieve the Early Finish value
    #
    # @return Early Finish value
    def early_finish
      get_date_value(attribute_values['early_finish'])
    end

    # Retrieve the Early Start value
    #
    # @return Early Start value
    def early_start
      get_date_value(attribute_values['early_start'])
    end

    # Retrieve the Earned Value Method value
    #
    # @return Earned Value Method value
    def earned_value_method
      attribute_values['earned_value_method']
    end

    # Retrieve the Effort Driven value
    #
    # @return Effort Driven value
    def effort_driven
      get_boolean_value(attribute_values['effort_driven'])
    end

    # Retrieve the Enterprise Cost1 value
    #
    # @return Enterprise Cost1 value
    def enterprise_cost1
      get_float_value(attribute_values['enterprise_cost1'])
    end

    # Retrieve the Enterprise Cost10 value
    #
    # @return Enterprise Cost10 value
    def enterprise_cost10
      get_float_value(attribute_values['enterprise_cost10'])
    end

    # Retrieve the Enterprise Cost2 value
    #
    # @return Enterprise Cost2 value
    def enterprise_cost2
      get_float_value(attribute_values['enterprise_cost2'])
    end

    # Retrieve the Enterprise Cost3 value
    #
    # @return Enterprise Cost3 value
    def enterprise_cost3
      get_float_value(attribute_values['enterprise_cost3'])
    end

    # Retrieve the Enterprise Cost4 value
    #
    # @return Enterprise Cost4 value
    def enterprise_cost4
      get_float_value(attribute_values['enterprise_cost4'])
    end

    # Retrieve the Enterprise Cost5 value
    #
    # @return Enterprise Cost5 value
    def enterprise_cost5
      get_float_value(attribute_values['enterprise_cost5'])
    end

    # Retrieve the Enterprise Cost6 value
    #
    # @return Enterprise Cost6 value
    def enterprise_cost6
      get_float_value(attribute_values['enterprise_cost6'])
    end

    # Retrieve the Enterprise Cost7 value
    #
    # @return Enterprise Cost7 value
    def enterprise_cost7
      get_float_value(attribute_values['enterprise_cost7'])
    end

    # Retrieve the Enterprise Cost8 value
    #
    # @return Enterprise Cost8 value
    def enterprise_cost8
      get_float_value(attribute_values['enterprise_cost8'])
    end

    # Retrieve the Enterprise Cost9 value
    #
    # @return Enterprise Cost9 value
    def enterprise_cost9
      get_float_value(attribute_values['enterprise_cost9'])
    end

    # Retrieve the Enterprise Custom Field 1 value
    #
    # @return Enterprise Custom Field 1 value
    def enterprise_custom_field1
      attribute_values['enterprise_custom_field1']
    end

    # Retrieve the Enterprise Custom Field 10 value
    #
    # @return Enterprise Custom Field 10 value
    def enterprise_custom_field10
      attribute_values['enterprise_custom_field10']
    end

    # Retrieve the Enterprise Custom Field 100 value
    #
    # @return Enterprise Custom Field 100 value
    def enterprise_custom_field100
      attribute_values['enterprise_custom_field100']
    end

    # Retrieve the Enterprise Custom Field 101 value
    #
    # @return Enterprise Custom Field 101 value
    def enterprise_custom_field101
      attribute_values['enterprise_custom_field101']
    end

    # Retrieve the Enterprise Custom Field 102 value
    #
    # @return Enterprise Custom Field 102 value
    def enterprise_custom_field102
      attribute_values['enterprise_custom_field102']
    end

    # Retrieve the Enterprise Custom Field 103 value
    #
    # @return Enterprise Custom Field 103 value
    def enterprise_custom_field103
      attribute_values['enterprise_custom_field103']
    end

    # Retrieve the Enterprise Custom Field 104 value
    #
    # @return Enterprise Custom Field 104 value
    def enterprise_custom_field104
      attribute_values['enterprise_custom_field104']
    end

    # Retrieve the Enterprise Custom Field 105 value
    #
    # @return Enterprise Custom Field 105 value
    def enterprise_custom_field105
      attribute_values['enterprise_custom_field105']
    end

    # Retrieve the Enterprise Custom Field 106 value
    #
    # @return Enterprise Custom Field 106 value
    def enterprise_custom_field106
      attribute_values['enterprise_custom_field106']
    end

    # Retrieve the Enterprise Custom Field 107 value
    #
    # @return Enterprise Custom Field 107 value
    def enterprise_custom_field107
      attribute_values['enterprise_custom_field107']
    end

    # Retrieve the Enterprise Custom Field 108 value
    #
    # @return Enterprise Custom Field 108 value
    def enterprise_custom_field108
      attribute_values['enterprise_custom_field108']
    end

    # Retrieve the Enterprise Custom Field 109 value
    #
    # @return Enterprise Custom Field 109 value
    def enterprise_custom_field109
      attribute_values['enterprise_custom_field109']
    end

    # Retrieve the Enterprise Custom Field 11 value
    #
    # @return Enterprise Custom Field 11 value
    def enterprise_custom_field11
      attribute_values['enterprise_custom_field11']
    end

    # Retrieve the Enterprise Custom Field 110 value
    #
    # @return Enterprise Custom Field 110 value
    def enterprise_custom_field110
      attribute_values['enterprise_custom_field110']
    end

    # Retrieve the Enterprise Custom Field 111 value
    #
    # @return Enterprise Custom Field 111 value
    def enterprise_custom_field111
      attribute_values['enterprise_custom_field111']
    end

    # Retrieve the Enterprise Custom Field 112 value
    #
    # @return Enterprise Custom Field 112 value
    def enterprise_custom_field112
      attribute_values['enterprise_custom_field112']
    end

    # Retrieve the Enterprise Custom Field 113 value
    #
    # @return Enterprise Custom Field 113 value
    def enterprise_custom_field113
      attribute_values['enterprise_custom_field113']
    end

    # Retrieve the Enterprise Custom Field 114 value
    #
    # @return Enterprise Custom Field 114 value
    def enterprise_custom_field114
      attribute_values['enterprise_custom_field114']
    end

    # Retrieve the Enterprise Custom Field 115 value
    #
    # @return Enterprise Custom Field 115 value
    def enterprise_custom_field115
      attribute_values['enterprise_custom_field115']
    end

    # Retrieve the Enterprise Custom Field 116 value
    #
    # @return Enterprise Custom Field 116 value
    def enterprise_custom_field116
      attribute_values['enterprise_custom_field116']
    end

    # Retrieve the Enterprise Custom Field 117 value
    #
    # @return Enterprise Custom Field 117 value
    def enterprise_custom_field117
      attribute_values['enterprise_custom_field117']
    end

    # Retrieve the Enterprise Custom Field 118 value
    #
    # @return Enterprise Custom Field 118 value
    def enterprise_custom_field118
      attribute_values['enterprise_custom_field118']
    end

    # Retrieve the Enterprise Custom Field 119 value
    #
    # @return Enterprise Custom Field 119 value
    def enterprise_custom_field119
      attribute_values['enterprise_custom_field119']
    end

    # Retrieve the Enterprise Custom Field 12 value
    #
    # @return Enterprise Custom Field 12 value
    def enterprise_custom_field12
      attribute_values['enterprise_custom_field12']
    end

    # Retrieve the Enterprise Custom Field 120 value
    #
    # @return Enterprise Custom Field 120 value
    def enterprise_custom_field120
      attribute_values['enterprise_custom_field120']
    end

    # Retrieve the Enterprise Custom Field 121 value
    #
    # @return Enterprise Custom Field 121 value
    def enterprise_custom_field121
      attribute_values['enterprise_custom_field121']
    end

    # Retrieve the Enterprise Custom Field 122 value
    #
    # @return Enterprise Custom Field 122 value
    def enterprise_custom_field122
      attribute_values['enterprise_custom_field122']
    end

    # Retrieve the Enterprise Custom Field 123 value
    #
    # @return Enterprise Custom Field 123 value
    def enterprise_custom_field123
      attribute_values['enterprise_custom_field123']
    end

    # Retrieve the Enterprise Custom Field 124 value
    #
    # @return Enterprise Custom Field 124 value
    def enterprise_custom_field124
      attribute_values['enterprise_custom_field124']
    end

    # Retrieve the Enterprise Custom Field 125 value
    #
    # @return Enterprise Custom Field 125 value
    def enterprise_custom_field125
      attribute_values['enterprise_custom_field125']
    end

    # Retrieve the Enterprise Custom Field 126 value
    #
    # @return Enterprise Custom Field 126 value
    def enterprise_custom_field126
      attribute_values['enterprise_custom_field126']
    end

    # Retrieve the Enterprise Custom Field 127 value
    #
    # @return Enterprise Custom Field 127 value
    def enterprise_custom_field127
      attribute_values['enterprise_custom_field127']
    end

    # Retrieve the Enterprise Custom Field 128 value
    #
    # @return Enterprise Custom Field 128 value
    def enterprise_custom_field128
      attribute_values['enterprise_custom_field128']
    end

    # Retrieve the Enterprise Custom Field 129 value
    #
    # @return Enterprise Custom Field 129 value
    def enterprise_custom_field129
      attribute_values['enterprise_custom_field129']
    end

    # Retrieve the Enterprise Custom Field 13 value
    #
    # @return Enterprise Custom Field 13 value
    def enterprise_custom_field13
      attribute_values['enterprise_custom_field13']
    end

    # Retrieve the Enterprise Custom Field 130 value
    #
    # @return Enterprise Custom Field 130 value
    def enterprise_custom_field130
      attribute_values['enterprise_custom_field130']
    end

    # Retrieve the Enterprise Custom Field 131 value
    #
    # @return Enterprise Custom Field 131 value
    def enterprise_custom_field131
      attribute_values['enterprise_custom_field131']
    end

    # Retrieve the Enterprise Custom Field 132 value
    #
    # @return Enterprise Custom Field 132 value
    def enterprise_custom_field132
      attribute_values['enterprise_custom_field132']
    end

    # Retrieve the Enterprise Custom Field 133 value
    #
    # @return Enterprise Custom Field 133 value
    def enterprise_custom_field133
      attribute_values['enterprise_custom_field133']
    end

    # Retrieve the Enterprise Custom Field 134 value
    #
    # @return Enterprise Custom Field 134 value
    def enterprise_custom_field134
      attribute_values['enterprise_custom_field134']
    end

    # Retrieve the Enterprise Custom Field 135 value
    #
    # @return Enterprise Custom Field 135 value
    def enterprise_custom_field135
      attribute_values['enterprise_custom_field135']
    end

    # Retrieve the Enterprise Custom Field 136 value
    #
    # @return Enterprise Custom Field 136 value
    def enterprise_custom_field136
      attribute_values['enterprise_custom_field136']
    end

    # Retrieve the Enterprise Custom Field 137 value
    #
    # @return Enterprise Custom Field 137 value
    def enterprise_custom_field137
      attribute_values['enterprise_custom_field137']
    end

    # Retrieve the Enterprise Custom Field 138 value
    #
    # @return Enterprise Custom Field 138 value
    def enterprise_custom_field138
      attribute_values['enterprise_custom_field138']
    end

    # Retrieve the Enterprise Custom Field 139 value
    #
    # @return Enterprise Custom Field 139 value
    def enterprise_custom_field139
      attribute_values['enterprise_custom_field139']
    end

    # Retrieve the Enterprise Custom Field 14 value
    #
    # @return Enterprise Custom Field 14 value
    def enterprise_custom_field14
      attribute_values['enterprise_custom_field14']
    end

    # Retrieve the Enterprise Custom Field 140 value
    #
    # @return Enterprise Custom Field 140 value
    def enterprise_custom_field140
      attribute_values['enterprise_custom_field140']
    end

    # Retrieve the Enterprise Custom Field 141 value
    #
    # @return Enterprise Custom Field 141 value
    def enterprise_custom_field141
      attribute_values['enterprise_custom_field141']
    end

    # Retrieve the Enterprise Custom Field 142 value
    #
    # @return Enterprise Custom Field 142 value
    def enterprise_custom_field142
      attribute_values['enterprise_custom_field142']
    end

    # Retrieve the Enterprise Custom Field 143 value
    #
    # @return Enterprise Custom Field 143 value
    def enterprise_custom_field143
      attribute_values['enterprise_custom_field143']
    end

    # Retrieve the Enterprise Custom Field 144 value
    #
    # @return Enterprise Custom Field 144 value
    def enterprise_custom_field144
      attribute_values['enterprise_custom_field144']
    end

    # Retrieve the Enterprise Custom Field 145 value
    #
    # @return Enterprise Custom Field 145 value
    def enterprise_custom_field145
      attribute_values['enterprise_custom_field145']
    end

    # Retrieve the Enterprise Custom Field 146 value
    #
    # @return Enterprise Custom Field 146 value
    def enterprise_custom_field146
      attribute_values['enterprise_custom_field146']
    end

    # Retrieve the Enterprise Custom Field 147 value
    #
    # @return Enterprise Custom Field 147 value
    def enterprise_custom_field147
      attribute_values['enterprise_custom_field147']
    end

    # Retrieve the Enterprise Custom Field 148 value
    #
    # @return Enterprise Custom Field 148 value
    def enterprise_custom_field148
      attribute_values['enterprise_custom_field148']
    end

    # Retrieve the Enterprise Custom Field 149 value
    #
    # @return Enterprise Custom Field 149 value
    def enterprise_custom_field149
      attribute_values['enterprise_custom_field149']
    end

    # Retrieve the Enterprise Custom Field 15 value
    #
    # @return Enterprise Custom Field 15 value
    def enterprise_custom_field15
      attribute_values['enterprise_custom_field15']
    end

    # Retrieve the Enterprise Custom Field 150 value
    #
    # @return Enterprise Custom Field 150 value
    def enterprise_custom_field150
      attribute_values['enterprise_custom_field150']
    end

    # Retrieve the Enterprise Custom Field 151 value
    #
    # @return Enterprise Custom Field 151 value
    def enterprise_custom_field151
      attribute_values['enterprise_custom_field151']
    end

    # Retrieve the Enterprise Custom Field 152 value
    #
    # @return Enterprise Custom Field 152 value
    def enterprise_custom_field152
      attribute_values['enterprise_custom_field152']
    end

    # Retrieve the Enterprise Custom Field 153 value
    #
    # @return Enterprise Custom Field 153 value
    def enterprise_custom_field153
      attribute_values['enterprise_custom_field153']
    end

    # Retrieve the Enterprise Custom Field 154 value
    #
    # @return Enterprise Custom Field 154 value
    def enterprise_custom_field154
      attribute_values['enterprise_custom_field154']
    end

    # Retrieve the Enterprise Custom Field 155 value
    #
    # @return Enterprise Custom Field 155 value
    def enterprise_custom_field155
      attribute_values['enterprise_custom_field155']
    end

    # Retrieve the Enterprise Custom Field 156 value
    #
    # @return Enterprise Custom Field 156 value
    def enterprise_custom_field156
      attribute_values['enterprise_custom_field156']
    end

    # Retrieve the Enterprise Custom Field 157 value
    #
    # @return Enterprise Custom Field 157 value
    def enterprise_custom_field157
      attribute_values['enterprise_custom_field157']
    end

    # Retrieve the Enterprise Custom Field 158 value
    #
    # @return Enterprise Custom Field 158 value
    def enterprise_custom_field158
      attribute_values['enterprise_custom_field158']
    end

    # Retrieve the Enterprise Custom Field 159 value
    #
    # @return Enterprise Custom Field 159 value
    def enterprise_custom_field159
      attribute_values['enterprise_custom_field159']
    end

    # Retrieve the Enterprise Custom Field 16 value
    #
    # @return Enterprise Custom Field 16 value
    def enterprise_custom_field16
      attribute_values['enterprise_custom_field16']
    end

    # Retrieve the Enterprise Custom Field 160 value
    #
    # @return Enterprise Custom Field 160 value
    def enterprise_custom_field160
      attribute_values['enterprise_custom_field160']
    end

    # Retrieve the Enterprise Custom Field 161 value
    #
    # @return Enterprise Custom Field 161 value
    def enterprise_custom_field161
      attribute_values['enterprise_custom_field161']
    end

    # Retrieve the Enterprise Custom Field 162 value
    #
    # @return Enterprise Custom Field 162 value
    def enterprise_custom_field162
      attribute_values['enterprise_custom_field162']
    end

    # Retrieve the Enterprise Custom Field 163 value
    #
    # @return Enterprise Custom Field 163 value
    def enterprise_custom_field163
      attribute_values['enterprise_custom_field163']
    end

    # Retrieve the Enterprise Custom Field 164 value
    #
    # @return Enterprise Custom Field 164 value
    def enterprise_custom_field164
      attribute_values['enterprise_custom_field164']
    end

    # Retrieve the Enterprise Custom Field 165 value
    #
    # @return Enterprise Custom Field 165 value
    def enterprise_custom_field165
      attribute_values['enterprise_custom_field165']
    end

    # Retrieve the Enterprise Custom Field 166 value
    #
    # @return Enterprise Custom Field 166 value
    def enterprise_custom_field166
      attribute_values['enterprise_custom_field166']
    end

    # Retrieve the Enterprise Custom Field 167 value
    #
    # @return Enterprise Custom Field 167 value
    def enterprise_custom_field167
      attribute_values['enterprise_custom_field167']
    end

    # Retrieve the Enterprise Custom Field 168 value
    #
    # @return Enterprise Custom Field 168 value
    def enterprise_custom_field168
      attribute_values['enterprise_custom_field168']
    end

    # Retrieve the Enterprise Custom Field 169 value
    #
    # @return Enterprise Custom Field 169 value
    def enterprise_custom_field169
      attribute_values['enterprise_custom_field169']
    end

    # Retrieve the Enterprise Custom Field 17 value
    #
    # @return Enterprise Custom Field 17 value
    def enterprise_custom_field17
      attribute_values['enterprise_custom_field17']
    end

    # Retrieve the Enterprise Custom Field 170 value
    #
    # @return Enterprise Custom Field 170 value
    def enterprise_custom_field170
      attribute_values['enterprise_custom_field170']
    end

    # Retrieve the Enterprise Custom Field 171 value
    #
    # @return Enterprise Custom Field 171 value
    def enterprise_custom_field171
      attribute_values['enterprise_custom_field171']
    end

    # Retrieve the Enterprise Custom Field 172 value
    #
    # @return Enterprise Custom Field 172 value
    def enterprise_custom_field172
      attribute_values['enterprise_custom_field172']
    end

    # Retrieve the Enterprise Custom Field 173 value
    #
    # @return Enterprise Custom Field 173 value
    def enterprise_custom_field173
      attribute_values['enterprise_custom_field173']
    end

    # Retrieve the Enterprise Custom Field 174 value
    #
    # @return Enterprise Custom Field 174 value
    def enterprise_custom_field174
      attribute_values['enterprise_custom_field174']
    end

    # Retrieve the Enterprise Custom Field 175 value
    #
    # @return Enterprise Custom Field 175 value
    def enterprise_custom_field175
      attribute_values['enterprise_custom_field175']
    end

    # Retrieve the Enterprise Custom Field 176 value
    #
    # @return Enterprise Custom Field 176 value
    def enterprise_custom_field176
      attribute_values['enterprise_custom_field176']
    end

    # Retrieve the Enterprise Custom Field 177 value
    #
    # @return Enterprise Custom Field 177 value
    def enterprise_custom_field177
      attribute_values['enterprise_custom_field177']
    end

    # Retrieve the Enterprise Custom Field 178 value
    #
    # @return Enterprise Custom Field 178 value
    def enterprise_custom_field178
      attribute_values['enterprise_custom_field178']
    end

    # Retrieve the Enterprise Custom Field 179 value
    #
    # @return Enterprise Custom Field 179 value
    def enterprise_custom_field179
      attribute_values['enterprise_custom_field179']
    end

    # Retrieve the Enterprise Custom Field 18 value
    #
    # @return Enterprise Custom Field 18 value
    def enterprise_custom_field18
      attribute_values['enterprise_custom_field18']
    end

    # Retrieve the Enterprise Custom Field 180 value
    #
    # @return Enterprise Custom Field 180 value
    def enterprise_custom_field180
      attribute_values['enterprise_custom_field180']
    end

    # Retrieve the Enterprise Custom Field 181 value
    #
    # @return Enterprise Custom Field 181 value
    def enterprise_custom_field181
      attribute_values['enterprise_custom_field181']
    end

    # Retrieve the Enterprise Custom Field 182 value
    #
    # @return Enterprise Custom Field 182 value
    def enterprise_custom_field182
      attribute_values['enterprise_custom_field182']
    end

    # Retrieve the Enterprise Custom Field 183 value
    #
    # @return Enterprise Custom Field 183 value
    def enterprise_custom_field183
      attribute_values['enterprise_custom_field183']
    end

    # Retrieve the Enterprise Custom Field 184 value
    #
    # @return Enterprise Custom Field 184 value
    def enterprise_custom_field184
      attribute_values['enterprise_custom_field184']
    end

    # Retrieve the Enterprise Custom Field 185 value
    #
    # @return Enterprise Custom Field 185 value
    def enterprise_custom_field185
      attribute_values['enterprise_custom_field185']
    end

    # Retrieve the Enterprise Custom Field 186 value
    #
    # @return Enterprise Custom Field 186 value
    def enterprise_custom_field186
      attribute_values['enterprise_custom_field186']
    end

    # Retrieve the Enterprise Custom Field 187 value
    #
    # @return Enterprise Custom Field 187 value
    def enterprise_custom_field187
      attribute_values['enterprise_custom_field187']
    end

    # Retrieve the Enterprise Custom Field 188 value
    #
    # @return Enterprise Custom Field 188 value
    def enterprise_custom_field188
      attribute_values['enterprise_custom_field188']
    end

    # Retrieve the Enterprise Custom Field 189 value
    #
    # @return Enterprise Custom Field 189 value
    def enterprise_custom_field189
      attribute_values['enterprise_custom_field189']
    end

    # Retrieve the Enterprise Custom Field 19 value
    #
    # @return Enterprise Custom Field 19 value
    def enterprise_custom_field19
      attribute_values['enterprise_custom_field19']
    end

    # Retrieve the Enterprise Custom Field 190 value
    #
    # @return Enterprise Custom Field 190 value
    def enterprise_custom_field190
      attribute_values['enterprise_custom_field190']
    end

    # Retrieve the Enterprise Custom Field 191 value
    #
    # @return Enterprise Custom Field 191 value
    def enterprise_custom_field191
      attribute_values['enterprise_custom_field191']
    end

    # Retrieve the Enterprise Custom Field 192 value
    #
    # @return Enterprise Custom Field 192 value
    def enterprise_custom_field192
      attribute_values['enterprise_custom_field192']
    end

    # Retrieve the Enterprise Custom Field 193 value
    #
    # @return Enterprise Custom Field 193 value
    def enterprise_custom_field193
      attribute_values['enterprise_custom_field193']
    end

    # Retrieve the Enterprise Custom Field 194 value
    #
    # @return Enterprise Custom Field 194 value
    def enterprise_custom_field194
      attribute_values['enterprise_custom_field194']
    end

    # Retrieve the Enterprise Custom Field 195 value
    #
    # @return Enterprise Custom Field 195 value
    def enterprise_custom_field195
      attribute_values['enterprise_custom_field195']
    end

    # Retrieve the Enterprise Custom Field 196 value
    #
    # @return Enterprise Custom Field 196 value
    def enterprise_custom_field196
      attribute_values['enterprise_custom_field196']
    end

    # Retrieve the Enterprise Custom Field 197 value
    #
    # @return Enterprise Custom Field 197 value
    def enterprise_custom_field197
      attribute_values['enterprise_custom_field197']
    end

    # Retrieve the Enterprise Custom Field 198 value
    #
    # @return Enterprise Custom Field 198 value
    def enterprise_custom_field198
      attribute_values['enterprise_custom_field198']
    end

    # Retrieve the Enterprise Custom Field 199 value
    #
    # @return Enterprise Custom Field 199 value
    def enterprise_custom_field199
      attribute_values['enterprise_custom_field199']
    end

    # Retrieve the Enterprise Custom Field 2 value
    #
    # @return Enterprise Custom Field 2 value
    def enterprise_custom_field2
      attribute_values['enterprise_custom_field2']
    end

    # Retrieve the Enterprise Custom Field 20 value
    #
    # @return Enterprise Custom Field 20 value
    def enterprise_custom_field20
      attribute_values['enterprise_custom_field20']
    end

    # Retrieve the Enterprise Custom Field 200 value
    #
    # @return Enterprise Custom Field 200 value
    def enterprise_custom_field200
      attribute_values['enterprise_custom_field200']
    end

    # Retrieve the Enterprise Custom Field 21 value
    #
    # @return Enterprise Custom Field 21 value
    def enterprise_custom_field21
      attribute_values['enterprise_custom_field21']
    end

    # Retrieve the Enterprise Custom Field 22 value
    #
    # @return Enterprise Custom Field 22 value
    def enterprise_custom_field22
      attribute_values['enterprise_custom_field22']
    end

    # Retrieve the Enterprise Custom Field 23 value
    #
    # @return Enterprise Custom Field 23 value
    def enterprise_custom_field23
      attribute_values['enterprise_custom_field23']
    end

    # Retrieve the Enterprise Custom Field 24 value
    #
    # @return Enterprise Custom Field 24 value
    def enterprise_custom_field24
      attribute_values['enterprise_custom_field24']
    end

    # Retrieve the Enterprise Custom Field 25 value
    #
    # @return Enterprise Custom Field 25 value
    def enterprise_custom_field25
      attribute_values['enterprise_custom_field25']
    end

    # Retrieve the Enterprise Custom Field 26 value
    #
    # @return Enterprise Custom Field 26 value
    def enterprise_custom_field26
      attribute_values['enterprise_custom_field26']
    end

    # Retrieve the Enterprise Custom Field 27 value
    #
    # @return Enterprise Custom Field 27 value
    def enterprise_custom_field27
      attribute_values['enterprise_custom_field27']
    end

    # Retrieve the Enterprise Custom Field 28 value
    #
    # @return Enterprise Custom Field 28 value
    def enterprise_custom_field28
      attribute_values['enterprise_custom_field28']
    end

    # Retrieve the Enterprise Custom Field 29 value
    #
    # @return Enterprise Custom Field 29 value
    def enterprise_custom_field29
      attribute_values['enterprise_custom_field29']
    end

    # Retrieve the Enterprise Custom Field 3 value
    #
    # @return Enterprise Custom Field 3 value
    def enterprise_custom_field3
      attribute_values['enterprise_custom_field3']
    end

    # Retrieve the Enterprise Custom Field 30 value
    #
    # @return Enterprise Custom Field 30 value
    def enterprise_custom_field30
      attribute_values['enterprise_custom_field30']
    end

    # Retrieve the Enterprise Custom Field 31 value
    #
    # @return Enterprise Custom Field 31 value
    def enterprise_custom_field31
      attribute_values['enterprise_custom_field31']
    end

    # Retrieve the Enterprise Custom Field 32 value
    #
    # @return Enterprise Custom Field 32 value
    def enterprise_custom_field32
      attribute_values['enterprise_custom_field32']
    end

    # Retrieve the Enterprise Custom Field 33 value
    #
    # @return Enterprise Custom Field 33 value
    def enterprise_custom_field33
      attribute_values['enterprise_custom_field33']
    end

    # Retrieve the Enterprise Custom Field 34 value
    #
    # @return Enterprise Custom Field 34 value
    def enterprise_custom_field34
      attribute_values['enterprise_custom_field34']
    end

    # Retrieve the Enterprise Custom Field 35 value
    #
    # @return Enterprise Custom Field 35 value
    def enterprise_custom_field35
      attribute_values['enterprise_custom_field35']
    end

    # Retrieve the Enterprise Custom Field 36 value
    #
    # @return Enterprise Custom Field 36 value
    def enterprise_custom_field36
      attribute_values['enterprise_custom_field36']
    end

    # Retrieve the Enterprise Custom Field 37 value
    #
    # @return Enterprise Custom Field 37 value
    def enterprise_custom_field37
      attribute_values['enterprise_custom_field37']
    end

    # Retrieve the Enterprise Custom Field 38 value
    #
    # @return Enterprise Custom Field 38 value
    def enterprise_custom_field38
      attribute_values['enterprise_custom_field38']
    end

    # Retrieve the Enterprise Custom Field 39 value
    #
    # @return Enterprise Custom Field 39 value
    def enterprise_custom_field39
      attribute_values['enterprise_custom_field39']
    end

    # Retrieve the Enterprise Custom Field 4 value
    #
    # @return Enterprise Custom Field 4 value
    def enterprise_custom_field4
      attribute_values['enterprise_custom_field4']
    end

    # Retrieve the Enterprise Custom Field 40 value
    #
    # @return Enterprise Custom Field 40 value
    def enterprise_custom_field40
      attribute_values['enterprise_custom_field40']
    end

    # Retrieve the Enterprise Custom Field 41 value
    #
    # @return Enterprise Custom Field 41 value
    def enterprise_custom_field41
      attribute_values['enterprise_custom_field41']
    end

    # Retrieve the Enterprise Custom Field 42 value
    #
    # @return Enterprise Custom Field 42 value
    def enterprise_custom_field42
      attribute_values['enterprise_custom_field42']
    end

    # Retrieve the Enterprise Custom Field 43 value
    #
    # @return Enterprise Custom Field 43 value
    def enterprise_custom_field43
      attribute_values['enterprise_custom_field43']
    end

    # Retrieve the Enterprise Custom Field 44 value
    #
    # @return Enterprise Custom Field 44 value
    def enterprise_custom_field44
      attribute_values['enterprise_custom_field44']
    end

    # Retrieve the Enterprise Custom Field 45 value
    #
    # @return Enterprise Custom Field 45 value
    def enterprise_custom_field45
      attribute_values['enterprise_custom_field45']
    end

    # Retrieve the Enterprise Custom Field 46 value
    #
    # @return Enterprise Custom Field 46 value
    def enterprise_custom_field46
      attribute_values['enterprise_custom_field46']
    end

    # Retrieve the Enterprise Custom Field 47 value
    #
    # @return Enterprise Custom Field 47 value
    def enterprise_custom_field47
      attribute_values['enterprise_custom_field47']
    end

    # Retrieve the Enterprise Custom Field 48 value
    #
    # @return Enterprise Custom Field 48 value
    def enterprise_custom_field48
      attribute_values['enterprise_custom_field48']
    end

    # Retrieve the Enterprise Custom Field 49 value
    #
    # @return Enterprise Custom Field 49 value
    def enterprise_custom_field49
      attribute_values['enterprise_custom_field49']
    end

    # Retrieve the Enterprise Custom Field 5 value
    #
    # @return Enterprise Custom Field 5 value
    def enterprise_custom_field5
      attribute_values['enterprise_custom_field5']
    end

    # Retrieve the Enterprise Custom Field 50 value
    #
    # @return Enterprise Custom Field 50 value
    def enterprise_custom_field50
      attribute_values['enterprise_custom_field50']
    end

    # Retrieve the Enterprise Custom Field 51 value
    #
    # @return Enterprise Custom Field 51 value
    def enterprise_custom_field51
      attribute_values['enterprise_custom_field51']
    end

    # Retrieve the Enterprise Custom Field 52 value
    #
    # @return Enterprise Custom Field 52 value
    def enterprise_custom_field52
      attribute_values['enterprise_custom_field52']
    end

    # Retrieve the Enterprise Custom Field 53 value
    #
    # @return Enterprise Custom Field 53 value
    def enterprise_custom_field53
      attribute_values['enterprise_custom_field53']
    end

    # Retrieve the Enterprise Custom Field 54 value
    #
    # @return Enterprise Custom Field 54 value
    def enterprise_custom_field54
      attribute_values['enterprise_custom_field54']
    end

    # Retrieve the Enterprise Custom Field 55 value
    #
    # @return Enterprise Custom Field 55 value
    def enterprise_custom_field55
      attribute_values['enterprise_custom_field55']
    end

    # Retrieve the Enterprise Custom Field 56 value
    #
    # @return Enterprise Custom Field 56 value
    def enterprise_custom_field56
      attribute_values['enterprise_custom_field56']
    end

    # Retrieve the Enterprise Custom Field 57 value
    #
    # @return Enterprise Custom Field 57 value
    def enterprise_custom_field57
      attribute_values['enterprise_custom_field57']
    end

    # Retrieve the Enterprise Custom Field 58 value
    #
    # @return Enterprise Custom Field 58 value
    def enterprise_custom_field58
      attribute_values['enterprise_custom_field58']
    end

    # Retrieve the Enterprise Custom Field 59 value
    #
    # @return Enterprise Custom Field 59 value
    def enterprise_custom_field59
      attribute_values['enterprise_custom_field59']
    end

    # Retrieve the Enterprise Custom Field 6 value
    #
    # @return Enterprise Custom Field 6 value
    def enterprise_custom_field6
      attribute_values['enterprise_custom_field6']
    end

    # Retrieve the Enterprise Custom Field 60 value
    #
    # @return Enterprise Custom Field 60 value
    def enterprise_custom_field60
      attribute_values['enterprise_custom_field60']
    end

    # Retrieve the Enterprise Custom Field 61 value
    #
    # @return Enterprise Custom Field 61 value
    def enterprise_custom_field61
      attribute_values['enterprise_custom_field61']
    end

    # Retrieve the Enterprise Custom Field 62 value
    #
    # @return Enterprise Custom Field 62 value
    def enterprise_custom_field62
      attribute_values['enterprise_custom_field62']
    end

    # Retrieve the Enterprise Custom Field 63 value
    #
    # @return Enterprise Custom Field 63 value
    def enterprise_custom_field63
      attribute_values['enterprise_custom_field63']
    end

    # Retrieve the Enterprise Custom Field 64 value
    #
    # @return Enterprise Custom Field 64 value
    def enterprise_custom_field64
      attribute_values['enterprise_custom_field64']
    end

    # Retrieve the Enterprise Custom Field 65 value
    #
    # @return Enterprise Custom Field 65 value
    def enterprise_custom_field65
      attribute_values['enterprise_custom_field65']
    end

    # Retrieve the Enterprise Custom Field 66 value
    #
    # @return Enterprise Custom Field 66 value
    def enterprise_custom_field66
      attribute_values['enterprise_custom_field66']
    end

    # Retrieve the Enterprise Custom Field 67 value
    #
    # @return Enterprise Custom Field 67 value
    def enterprise_custom_field67
      attribute_values['enterprise_custom_field67']
    end

    # Retrieve the Enterprise Custom Field 68 value
    #
    # @return Enterprise Custom Field 68 value
    def enterprise_custom_field68
      attribute_values['enterprise_custom_field68']
    end

    # Retrieve the Enterprise Custom Field 69 value
    #
    # @return Enterprise Custom Field 69 value
    def enterprise_custom_field69
      attribute_values['enterprise_custom_field69']
    end

    # Retrieve the Enterprise Custom Field 7 value
    #
    # @return Enterprise Custom Field 7 value
    def enterprise_custom_field7
      attribute_values['enterprise_custom_field7']
    end

    # Retrieve the Enterprise Custom Field 70 value
    #
    # @return Enterprise Custom Field 70 value
    def enterprise_custom_field70
      attribute_values['enterprise_custom_field70']
    end

    # Retrieve the Enterprise Custom Field 71 value
    #
    # @return Enterprise Custom Field 71 value
    def enterprise_custom_field71
      attribute_values['enterprise_custom_field71']
    end

    # Retrieve the Enterprise Custom Field 72 value
    #
    # @return Enterprise Custom Field 72 value
    def enterprise_custom_field72
      attribute_values['enterprise_custom_field72']
    end

    # Retrieve the Enterprise Custom Field 73 value
    #
    # @return Enterprise Custom Field 73 value
    def enterprise_custom_field73
      attribute_values['enterprise_custom_field73']
    end

    # Retrieve the Enterprise Custom Field 74 value
    #
    # @return Enterprise Custom Field 74 value
    def enterprise_custom_field74
      attribute_values['enterprise_custom_field74']
    end

    # Retrieve the Enterprise Custom Field 75 value
    #
    # @return Enterprise Custom Field 75 value
    def enterprise_custom_field75
      attribute_values['enterprise_custom_field75']
    end

    # Retrieve the Enterprise Custom Field 76 value
    #
    # @return Enterprise Custom Field 76 value
    def enterprise_custom_field76
      attribute_values['enterprise_custom_field76']
    end

    # Retrieve the Enterprise Custom Field 77 value
    #
    # @return Enterprise Custom Field 77 value
    def enterprise_custom_field77
      attribute_values['enterprise_custom_field77']
    end

    # Retrieve the Enterprise Custom Field 78 value
    #
    # @return Enterprise Custom Field 78 value
    def enterprise_custom_field78
      attribute_values['enterprise_custom_field78']
    end

    # Retrieve the Enterprise Custom Field 79 value
    #
    # @return Enterprise Custom Field 79 value
    def enterprise_custom_field79
      attribute_values['enterprise_custom_field79']
    end

    # Retrieve the Enterprise Custom Field 8 value
    #
    # @return Enterprise Custom Field 8 value
    def enterprise_custom_field8
      attribute_values['enterprise_custom_field8']
    end

    # Retrieve the Enterprise Custom Field 80 value
    #
    # @return Enterprise Custom Field 80 value
    def enterprise_custom_field80
      attribute_values['enterprise_custom_field80']
    end

    # Retrieve the Enterprise Custom Field 81 value
    #
    # @return Enterprise Custom Field 81 value
    def enterprise_custom_field81
      attribute_values['enterprise_custom_field81']
    end

    # Retrieve the Enterprise Custom Field 82 value
    #
    # @return Enterprise Custom Field 82 value
    def enterprise_custom_field82
      attribute_values['enterprise_custom_field82']
    end

    # Retrieve the Enterprise Custom Field 83 value
    #
    # @return Enterprise Custom Field 83 value
    def enterprise_custom_field83
      attribute_values['enterprise_custom_field83']
    end

    # Retrieve the Enterprise Custom Field 84 value
    #
    # @return Enterprise Custom Field 84 value
    def enterprise_custom_field84
      attribute_values['enterprise_custom_field84']
    end

    # Retrieve the Enterprise Custom Field 85 value
    #
    # @return Enterprise Custom Field 85 value
    def enterprise_custom_field85
      attribute_values['enterprise_custom_field85']
    end

    # Retrieve the Enterprise Custom Field 86 value
    #
    # @return Enterprise Custom Field 86 value
    def enterprise_custom_field86
      attribute_values['enterprise_custom_field86']
    end

    # Retrieve the Enterprise Custom Field 87 value
    #
    # @return Enterprise Custom Field 87 value
    def enterprise_custom_field87
      attribute_values['enterprise_custom_field87']
    end

    # Retrieve the Enterprise Custom Field 88 value
    #
    # @return Enterprise Custom Field 88 value
    def enterprise_custom_field88
      attribute_values['enterprise_custom_field88']
    end

    # Retrieve the Enterprise Custom Field 89 value
    #
    # @return Enterprise Custom Field 89 value
    def enterprise_custom_field89
      attribute_values['enterprise_custom_field89']
    end

    # Retrieve the Enterprise Custom Field 9 value
    #
    # @return Enterprise Custom Field 9 value
    def enterprise_custom_field9
      attribute_values['enterprise_custom_field9']
    end

    # Retrieve the Enterprise Custom Field 90 value
    #
    # @return Enterprise Custom Field 90 value
    def enterprise_custom_field90
      attribute_values['enterprise_custom_field90']
    end

    # Retrieve the Enterprise Custom Field 91 value
    #
    # @return Enterprise Custom Field 91 value
    def enterprise_custom_field91
      attribute_values['enterprise_custom_field91']
    end

    # Retrieve the Enterprise Custom Field 92 value
    #
    # @return Enterprise Custom Field 92 value
    def enterprise_custom_field92
      attribute_values['enterprise_custom_field92']
    end

    # Retrieve the Enterprise Custom Field 93 value
    #
    # @return Enterprise Custom Field 93 value
    def enterprise_custom_field93
      attribute_values['enterprise_custom_field93']
    end

    # Retrieve the Enterprise Custom Field 94 value
    #
    # @return Enterprise Custom Field 94 value
    def enterprise_custom_field94
      attribute_values['enterprise_custom_field94']
    end

    # Retrieve the Enterprise Custom Field 95 value
    #
    # @return Enterprise Custom Field 95 value
    def enterprise_custom_field95
      attribute_values['enterprise_custom_field95']
    end

    # Retrieve the Enterprise Custom Field 96 value
    #
    # @return Enterprise Custom Field 96 value
    def enterprise_custom_field96
      attribute_values['enterprise_custom_field96']
    end

    # Retrieve the Enterprise Custom Field 97 value
    #
    # @return Enterprise Custom Field 97 value
    def enterprise_custom_field97
      attribute_values['enterprise_custom_field97']
    end

    # Retrieve the Enterprise Custom Field 98 value
    #
    # @return Enterprise Custom Field 98 value
    def enterprise_custom_field98
      attribute_values['enterprise_custom_field98']
    end

    # Retrieve the Enterprise Custom Field 99 value
    #
    # @return Enterprise Custom Field 99 value
    def enterprise_custom_field99
      attribute_values['enterprise_custom_field99']
    end

    # Retrieve the Enterprise Data value
    #
    # @return Enterprise Data value
    def enterprise_data
      attribute_values['enterprise_data']
    end

    # Retrieve the Enterprise Date1 value
    #
    # @return Enterprise Date1 value
    def enterprise_date1
      get_date_value(attribute_values['enterprise_date1'])
    end

    # Retrieve the Enterprise Date10 value
    #
    # @return Enterprise Date10 value
    def enterprise_date10
      get_date_value(attribute_values['enterprise_date10'])
    end

    # Retrieve the Enterprise Date11 value
    #
    # @return Enterprise Date11 value
    def enterprise_date11
      get_date_value(attribute_values['enterprise_date11'])
    end

    # Retrieve the Enterprise Date12 value
    #
    # @return Enterprise Date12 value
    def enterprise_date12
      get_date_value(attribute_values['enterprise_date12'])
    end

    # Retrieve the Enterprise Date13 value
    #
    # @return Enterprise Date13 value
    def enterprise_date13
      get_date_value(attribute_values['enterprise_date13'])
    end

    # Retrieve the Enterprise Date14 value
    #
    # @return Enterprise Date14 value
    def enterprise_date14
      get_date_value(attribute_values['enterprise_date14'])
    end

    # Retrieve the Enterprise Date15 value
    #
    # @return Enterprise Date15 value
    def enterprise_date15
      get_date_value(attribute_values['enterprise_date15'])
    end

    # Retrieve the Enterprise Date16 value
    #
    # @return Enterprise Date16 value
    def enterprise_date16
      get_date_value(attribute_values['enterprise_date16'])
    end

    # Retrieve the Enterprise Date17 value
    #
    # @return Enterprise Date17 value
    def enterprise_date17
      get_date_value(attribute_values['enterprise_date17'])
    end

    # Retrieve the Enterprise Date18 value
    #
    # @return Enterprise Date18 value
    def enterprise_date18
      get_date_value(attribute_values['enterprise_date18'])
    end

    # Retrieve the Enterprise Date19 value
    #
    # @return Enterprise Date19 value
    def enterprise_date19
      get_date_value(attribute_values['enterprise_date19'])
    end

    # Retrieve the Enterprise Date2 value
    #
    # @return Enterprise Date2 value
    def enterprise_date2
      get_date_value(attribute_values['enterprise_date2'])
    end

    # Retrieve the Enterprise Date20 value
    #
    # @return Enterprise Date20 value
    def enterprise_date20
      get_date_value(attribute_values['enterprise_date20'])
    end

    # Retrieve the Enterprise Date21 value
    #
    # @return Enterprise Date21 value
    def enterprise_date21
      get_date_value(attribute_values['enterprise_date21'])
    end

    # Retrieve the Enterprise Date22 value
    #
    # @return Enterprise Date22 value
    def enterprise_date22
      get_date_value(attribute_values['enterprise_date22'])
    end

    # Retrieve the Enterprise Date23 value
    #
    # @return Enterprise Date23 value
    def enterprise_date23
      get_date_value(attribute_values['enterprise_date23'])
    end

    # Retrieve the Enterprise Date24 value
    #
    # @return Enterprise Date24 value
    def enterprise_date24
      get_date_value(attribute_values['enterprise_date24'])
    end

    # Retrieve the Enterprise Date25 value
    #
    # @return Enterprise Date25 value
    def enterprise_date25
      get_date_value(attribute_values['enterprise_date25'])
    end

    # Retrieve the Enterprise Date26 value
    #
    # @return Enterprise Date26 value
    def enterprise_date26
      get_date_value(attribute_values['enterprise_date26'])
    end

    # Retrieve the Enterprise Date27 value
    #
    # @return Enterprise Date27 value
    def enterprise_date27
      get_date_value(attribute_values['enterprise_date27'])
    end

    # Retrieve the Enterprise Date28 value
    #
    # @return Enterprise Date28 value
    def enterprise_date28
      get_date_value(attribute_values['enterprise_date28'])
    end

    # Retrieve the Enterprise Date29 value
    #
    # @return Enterprise Date29 value
    def enterprise_date29
      get_date_value(attribute_values['enterprise_date29'])
    end

    # Retrieve the Enterprise Date3 value
    #
    # @return Enterprise Date3 value
    def enterprise_date3
      get_date_value(attribute_values['enterprise_date3'])
    end

    # Retrieve the Enterprise Date30 value
    #
    # @return Enterprise Date30 value
    def enterprise_date30
      get_date_value(attribute_values['enterprise_date30'])
    end

    # Retrieve the Enterprise Date4 value
    #
    # @return Enterprise Date4 value
    def enterprise_date4
      get_date_value(attribute_values['enterprise_date4'])
    end

    # Retrieve the Enterprise Date5 value
    #
    # @return Enterprise Date5 value
    def enterprise_date5
      get_date_value(attribute_values['enterprise_date5'])
    end

    # Retrieve the Enterprise Date6 value
    #
    # @return Enterprise Date6 value
    def enterprise_date6
      get_date_value(attribute_values['enterprise_date6'])
    end

    # Retrieve the Enterprise Date7 value
    #
    # @return Enterprise Date7 value
    def enterprise_date7
      get_date_value(attribute_values['enterprise_date7'])
    end

    # Retrieve the Enterprise Date8 value
    #
    # @return Enterprise Date8 value
    def enterprise_date8
      get_date_value(attribute_values['enterprise_date8'])
    end

    # Retrieve the Enterprise Date9 value
    #
    # @return Enterprise Date9 value
    def enterprise_date9
      get_date_value(attribute_values['enterprise_date9'])
    end

    # Retrieve the Enterprise Duration1 value
    #
    # @return Enterprise Duration1 value
    def enterprise_duration1
      get_duration_value(attribute_values['enterprise_duration1'])
    end

    # Retrieve the Enterprise Duration10 value
    #
    # @return Enterprise Duration10 value
    def enterprise_duration10
      get_duration_value(attribute_values['enterprise_duration10'])
    end

    # Retrieve the Enterprise Duration10 Units value
    #
    # @return Enterprise Duration10 Units value
    def enterprise_duration10_units
      attribute_values['enterprise_duration10_units']
    end

    # Retrieve the Enterprise Duration1 Units value
    #
    # @return Enterprise Duration1 Units value
    def enterprise_duration1_units
      attribute_values['enterprise_duration1_units']
    end

    # Retrieve the Enterprise Duration2 value
    #
    # @return Enterprise Duration2 value
    def enterprise_duration2
      get_duration_value(attribute_values['enterprise_duration2'])
    end

    # Retrieve the Enterprise Duration2 Units value
    #
    # @return Enterprise Duration2 Units value
    def enterprise_duration2_units
      attribute_values['enterprise_duration2_units']
    end

    # Retrieve the Enterprise Duration3 value
    #
    # @return Enterprise Duration3 value
    def enterprise_duration3
      get_duration_value(attribute_values['enterprise_duration3'])
    end

    # Retrieve the Enterprise Duration3 Units value
    #
    # @return Enterprise Duration3 Units value
    def enterprise_duration3_units
      attribute_values['enterprise_duration3_units']
    end

    # Retrieve the Enterprise Duration4 value
    #
    # @return Enterprise Duration4 value
    def enterprise_duration4
      get_duration_value(attribute_values['enterprise_duration4'])
    end

    # Retrieve the Enterprise Duration4 Units value
    #
    # @return Enterprise Duration4 Units value
    def enterprise_duration4_units
      attribute_values['enterprise_duration4_units']
    end

    # Retrieve the Enterprise Duration5 value
    #
    # @return Enterprise Duration5 value
    def enterprise_duration5
      get_duration_value(attribute_values['enterprise_duration5'])
    end

    # Retrieve the Enterprise Duration5 Units value
    #
    # @return Enterprise Duration5 Units value
    def enterprise_duration5_units
      attribute_values['enterprise_duration5_units']
    end

    # Retrieve the Enterprise Duration6 value
    #
    # @return Enterprise Duration6 value
    def enterprise_duration6
      get_duration_value(attribute_values['enterprise_duration6'])
    end

    # Retrieve the Enterprise Duration6 Units value
    #
    # @return Enterprise Duration6 Units value
    def enterprise_duration6_units
      attribute_values['enterprise_duration6_units']
    end

    # Retrieve the Enterprise Duration7 value
    #
    # @return Enterprise Duration7 value
    def enterprise_duration7
      get_duration_value(attribute_values['enterprise_duration7'])
    end

    # Retrieve the Enterprise Duration7 Units value
    #
    # @return Enterprise Duration7 Units value
    def enterprise_duration7_units
      attribute_values['enterprise_duration7_units']
    end

    # Retrieve the Enterprise Duration8 value
    #
    # @return Enterprise Duration8 value
    def enterprise_duration8
      get_duration_value(attribute_values['enterprise_duration8'])
    end

    # Retrieve the Enterprise Duration8 Units value
    #
    # @return Enterprise Duration8 Units value
    def enterprise_duration8_units
      attribute_values['enterprise_duration8_units']
    end

    # Retrieve the Enterprise Duration9 value
    #
    # @return Enterprise Duration9 value
    def enterprise_duration9
      get_duration_value(attribute_values['enterprise_duration9'])
    end

    # Retrieve the Enterprise Duration9 Units value
    #
    # @return Enterprise Duration9 Units value
    def enterprise_duration9_units
      attribute_values['enterprise_duration9_units']
    end

    # Retrieve the Enterprise Flag1 value
    #
    # @return Enterprise Flag1 value
    def enterprise_flag1
      get_boolean_value(attribute_values['enterprise_flag1'])
    end

    # Retrieve the Enterprise Flag10 value
    #
    # @return Enterprise Flag10 value
    def enterprise_flag10
      get_boolean_value(attribute_values['enterprise_flag10'])
    end

    # Retrieve the Enterprise Flag11 value
    #
    # @return Enterprise Flag11 value
    def enterprise_flag11
      get_boolean_value(attribute_values['enterprise_flag11'])
    end

    # Retrieve the Enterprise Flag12 value
    #
    # @return Enterprise Flag12 value
    def enterprise_flag12
      get_boolean_value(attribute_values['enterprise_flag12'])
    end

    # Retrieve the Enterprise Flag13 value
    #
    # @return Enterprise Flag13 value
    def enterprise_flag13
      get_boolean_value(attribute_values['enterprise_flag13'])
    end

    # Retrieve the Enterprise Flag14 value
    #
    # @return Enterprise Flag14 value
    def enterprise_flag14
      get_boolean_value(attribute_values['enterprise_flag14'])
    end

    # Retrieve the Enterprise Flag15 value
    #
    # @return Enterprise Flag15 value
    def enterprise_flag15
      get_boolean_value(attribute_values['enterprise_flag15'])
    end

    # Retrieve the Enterprise Flag16 value
    #
    # @return Enterprise Flag16 value
    def enterprise_flag16
      get_boolean_value(attribute_values['enterprise_flag16'])
    end

    # Retrieve the Enterprise Flag17 value
    #
    # @return Enterprise Flag17 value
    def enterprise_flag17
      get_boolean_value(attribute_values['enterprise_flag17'])
    end

    # Retrieve the Enterprise Flag18 value
    #
    # @return Enterprise Flag18 value
    def enterprise_flag18
      get_boolean_value(attribute_values['enterprise_flag18'])
    end

    # Retrieve the Enterprise Flag19 value
    #
    # @return Enterprise Flag19 value
    def enterprise_flag19
      get_boolean_value(attribute_values['enterprise_flag19'])
    end

    # Retrieve the Enterprise Flag2 value
    #
    # @return Enterprise Flag2 value
    def enterprise_flag2
      get_boolean_value(attribute_values['enterprise_flag2'])
    end

    # Retrieve the Enterprise Flag20 value
    #
    # @return Enterprise Flag20 value
    def enterprise_flag20
      get_boolean_value(attribute_values['enterprise_flag20'])
    end

    # Retrieve the Enterprise Flag3 value
    #
    # @return Enterprise Flag3 value
    def enterprise_flag3
      get_boolean_value(attribute_values['enterprise_flag3'])
    end

    # Retrieve the Enterprise Flag4 value
    #
    # @return Enterprise Flag4 value
    def enterprise_flag4
      get_boolean_value(attribute_values['enterprise_flag4'])
    end

    # Retrieve the Enterprise Flag5 value
    #
    # @return Enterprise Flag5 value
    def enterprise_flag5
      get_boolean_value(attribute_values['enterprise_flag5'])
    end

    # Retrieve the Enterprise Flag6 value
    #
    # @return Enterprise Flag6 value
    def enterprise_flag6
      get_boolean_value(attribute_values['enterprise_flag6'])
    end

    # Retrieve the Enterprise Flag7 value
    #
    # @return Enterprise Flag7 value
    def enterprise_flag7
      get_boolean_value(attribute_values['enterprise_flag7'])
    end

    # Retrieve the Enterprise Flag8 value
    #
    # @return Enterprise Flag8 value
    def enterprise_flag8
      get_boolean_value(attribute_values['enterprise_flag8'])
    end

    # Retrieve the Enterprise Flag9 value
    #
    # @return Enterprise Flag9 value
    def enterprise_flag9
      get_boolean_value(attribute_values['enterprise_flag9'])
    end

    # Retrieve the Enterprise Number1 value
    #
    # @return Enterprise Number1 value
    def enterprise_number1
      get_float_value(attribute_values['enterprise_number1'])
    end

    # Retrieve the Enterprise Number10 value
    #
    # @return Enterprise Number10 value
    def enterprise_number10
      get_float_value(attribute_values['enterprise_number10'])
    end

    # Retrieve the Enterprise Number11 value
    #
    # @return Enterprise Number11 value
    def enterprise_number11
      get_float_value(attribute_values['enterprise_number11'])
    end

    # Retrieve the Enterprise Number12 value
    #
    # @return Enterprise Number12 value
    def enterprise_number12
      get_float_value(attribute_values['enterprise_number12'])
    end

    # Retrieve the Enterprise Number13 value
    #
    # @return Enterprise Number13 value
    def enterprise_number13
      get_float_value(attribute_values['enterprise_number13'])
    end

    # Retrieve the Enterprise Number14 value
    #
    # @return Enterprise Number14 value
    def enterprise_number14
      get_float_value(attribute_values['enterprise_number14'])
    end

    # Retrieve the Enterprise Number15 value
    #
    # @return Enterprise Number15 value
    def enterprise_number15
      get_float_value(attribute_values['enterprise_number15'])
    end

    # Retrieve the Enterprise Number16 value
    #
    # @return Enterprise Number16 value
    def enterprise_number16
      get_float_value(attribute_values['enterprise_number16'])
    end

    # Retrieve the Enterprise Number17 value
    #
    # @return Enterprise Number17 value
    def enterprise_number17
      get_float_value(attribute_values['enterprise_number17'])
    end

    # Retrieve the Enterprise Number18 value
    #
    # @return Enterprise Number18 value
    def enterprise_number18
      get_float_value(attribute_values['enterprise_number18'])
    end

    # Retrieve the Enterprise Number19 value
    #
    # @return Enterprise Number19 value
    def enterprise_number19
      get_float_value(attribute_values['enterprise_number19'])
    end

    # Retrieve the Enterprise Number2 value
    #
    # @return Enterprise Number2 value
    def enterprise_number2
      get_float_value(attribute_values['enterprise_number2'])
    end

    # Retrieve the Enterprise Number20 value
    #
    # @return Enterprise Number20 value
    def enterprise_number20
      get_float_value(attribute_values['enterprise_number20'])
    end

    # Retrieve the Enterprise Number21 value
    #
    # @return Enterprise Number21 value
    def enterprise_number21
      get_float_value(attribute_values['enterprise_number21'])
    end

    # Retrieve the Enterprise Number22 value
    #
    # @return Enterprise Number22 value
    def enterprise_number22
      get_float_value(attribute_values['enterprise_number22'])
    end

    # Retrieve the Enterprise Number23 value
    #
    # @return Enterprise Number23 value
    def enterprise_number23
      get_float_value(attribute_values['enterprise_number23'])
    end

    # Retrieve the Enterprise Number24 value
    #
    # @return Enterprise Number24 value
    def enterprise_number24
      get_float_value(attribute_values['enterprise_number24'])
    end

    # Retrieve the Enterprise Number25 value
    #
    # @return Enterprise Number25 value
    def enterprise_number25
      get_float_value(attribute_values['enterprise_number25'])
    end

    # Retrieve the Enterprise Number26 value
    #
    # @return Enterprise Number26 value
    def enterprise_number26
      get_float_value(attribute_values['enterprise_number26'])
    end

    # Retrieve the Enterprise Number27 value
    #
    # @return Enterprise Number27 value
    def enterprise_number27
      get_float_value(attribute_values['enterprise_number27'])
    end

    # Retrieve the Enterprise Number28 value
    #
    # @return Enterprise Number28 value
    def enterprise_number28
      get_float_value(attribute_values['enterprise_number28'])
    end

    # Retrieve the Enterprise Number29 value
    #
    # @return Enterprise Number29 value
    def enterprise_number29
      get_float_value(attribute_values['enterprise_number29'])
    end

    # Retrieve the Enterprise Number3 value
    #
    # @return Enterprise Number3 value
    def enterprise_number3
      get_float_value(attribute_values['enterprise_number3'])
    end

    # Retrieve the Enterprise Number30 value
    #
    # @return Enterprise Number30 value
    def enterprise_number30
      get_float_value(attribute_values['enterprise_number30'])
    end

    # Retrieve the Enterprise Number31 value
    #
    # @return Enterprise Number31 value
    def enterprise_number31
      get_float_value(attribute_values['enterprise_number31'])
    end

    # Retrieve the Enterprise Number32 value
    #
    # @return Enterprise Number32 value
    def enterprise_number32
      get_float_value(attribute_values['enterprise_number32'])
    end

    # Retrieve the Enterprise Number33 value
    #
    # @return Enterprise Number33 value
    def enterprise_number33
      get_float_value(attribute_values['enterprise_number33'])
    end

    # Retrieve the Enterprise Number34 value
    #
    # @return Enterprise Number34 value
    def enterprise_number34
      get_float_value(attribute_values['enterprise_number34'])
    end

    # Retrieve the Enterprise Number35 value
    #
    # @return Enterprise Number35 value
    def enterprise_number35
      get_float_value(attribute_values['enterprise_number35'])
    end

    # Retrieve the Enterprise Number36 value
    #
    # @return Enterprise Number36 value
    def enterprise_number36
      get_float_value(attribute_values['enterprise_number36'])
    end

    # Retrieve the Enterprise Number37 value
    #
    # @return Enterprise Number37 value
    def enterprise_number37
      get_float_value(attribute_values['enterprise_number37'])
    end

    # Retrieve the Enterprise Number38 value
    #
    # @return Enterprise Number38 value
    def enterprise_number38
      get_float_value(attribute_values['enterprise_number38'])
    end

    # Retrieve the Enterprise Number39 value
    #
    # @return Enterprise Number39 value
    def enterprise_number39
      get_float_value(attribute_values['enterprise_number39'])
    end

    # Retrieve the Enterprise Number4 value
    #
    # @return Enterprise Number4 value
    def enterprise_number4
      get_float_value(attribute_values['enterprise_number4'])
    end

    # Retrieve the Enterprise Number40 value
    #
    # @return Enterprise Number40 value
    def enterprise_number40
      get_float_value(attribute_values['enterprise_number40'])
    end

    # Retrieve the Enterprise Number5 value
    #
    # @return Enterprise Number5 value
    def enterprise_number5
      get_float_value(attribute_values['enterprise_number5'])
    end

    # Retrieve the Enterprise Number6 value
    #
    # @return Enterprise Number6 value
    def enterprise_number6
      get_float_value(attribute_values['enterprise_number6'])
    end

    # Retrieve the Enterprise Number7 value
    #
    # @return Enterprise Number7 value
    def enterprise_number7
      get_float_value(attribute_values['enterprise_number7'])
    end

    # Retrieve the Enterprise Number8 value
    #
    # @return Enterprise Number8 value
    def enterprise_number8
      get_float_value(attribute_values['enterprise_number8'])
    end

    # Retrieve the Enterprise Number9 value
    #
    # @return Enterprise Number9 value
    def enterprise_number9
      get_float_value(attribute_values['enterprise_number9'])
    end

    # Retrieve the Enterprise Outline Code1 value
    #
    # @return Enterprise Outline Code1 value
    def enterprise_outline_code1
      attribute_values['enterprise_outline_code1']
    end

    # Retrieve the Enterprise Outline Code10 value
    #
    # @return Enterprise Outline Code10 value
    def enterprise_outline_code10
      attribute_values['enterprise_outline_code10']
    end

    # Retrieve the Enterprise Outline Code11 value
    #
    # @return Enterprise Outline Code11 value
    def enterprise_outline_code11
      attribute_values['enterprise_outline_code11']
    end

    # Retrieve the Enterprise Outline Code12 value
    #
    # @return Enterprise Outline Code12 value
    def enterprise_outline_code12
      attribute_values['enterprise_outline_code12']
    end

    # Retrieve the Enterprise Outline Code13 value
    #
    # @return Enterprise Outline Code13 value
    def enterprise_outline_code13
      attribute_values['enterprise_outline_code13']
    end

    # Retrieve the Enterprise Outline Code14 value
    #
    # @return Enterprise Outline Code14 value
    def enterprise_outline_code14
      attribute_values['enterprise_outline_code14']
    end

    # Retrieve the Enterprise Outline Code15 value
    #
    # @return Enterprise Outline Code15 value
    def enterprise_outline_code15
      attribute_values['enterprise_outline_code15']
    end

    # Retrieve the Enterprise Outline Code16 value
    #
    # @return Enterprise Outline Code16 value
    def enterprise_outline_code16
      attribute_values['enterprise_outline_code16']
    end

    # Retrieve the Enterprise Outline Code17 value
    #
    # @return Enterprise Outline Code17 value
    def enterprise_outline_code17
      attribute_values['enterprise_outline_code17']
    end

    # Retrieve the Enterprise Outline Code18 value
    #
    # @return Enterprise Outline Code18 value
    def enterprise_outline_code18
      attribute_values['enterprise_outline_code18']
    end

    # Retrieve the Enterprise Outline Code19 value
    #
    # @return Enterprise Outline Code19 value
    def enterprise_outline_code19
      attribute_values['enterprise_outline_code19']
    end

    # Retrieve the Enterprise Outline Code2 value
    #
    # @return Enterprise Outline Code2 value
    def enterprise_outline_code2
      attribute_values['enterprise_outline_code2']
    end

    # Retrieve the Enterprise Outline Code20 value
    #
    # @return Enterprise Outline Code20 value
    def enterprise_outline_code20
      attribute_values['enterprise_outline_code20']
    end

    # Retrieve the Enterprise Outline Code21 value
    #
    # @return Enterprise Outline Code21 value
    def enterprise_outline_code21
      attribute_values['enterprise_outline_code21']
    end

    # Retrieve the Enterprise Outline Code22 value
    #
    # @return Enterprise Outline Code22 value
    def enterprise_outline_code22
      attribute_values['enterprise_outline_code22']
    end

    # Retrieve the Enterprise Outline Code23 value
    #
    # @return Enterprise Outline Code23 value
    def enterprise_outline_code23
      attribute_values['enterprise_outline_code23']
    end

    # Retrieve the Enterprise Outline Code24 value
    #
    # @return Enterprise Outline Code24 value
    def enterprise_outline_code24
      attribute_values['enterprise_outline_code24']
    end

    # Retrieve the Enterprise Outline Code25 value
    #
    # @return Enterprise Outline Code25 value
    def enterprise_outline_code25
      attribute_values['enterprise_outline_code25']
    end

    # Retrieve the Enterprise Outline Code26 value
    #
    # @return Enterprise Outline Code26 value
    def enterprise_outline_code26
      attribute_values['enterprise_outline_code26']
    end

    # Retrieve the Enterprise Outline Code27 value
    #
    # @return Enterprise Outline Code27 value
    def enterprise_outline_code27
      attribute_values['enterprise_outline_code27']
    end

    # Retrieve the Enterprise Outline Code28 value
    #
    # @return Enterprise Outline Code28 value
    def enterprise_outline_code28
      attribute_values['enterprise_outline_code28']
    end

    # Retrieve the Enterprise Outline Code29 value
    #
    # @return Enterprise Outline Code29 value
    def enterprise_outline_code29
      attribute_values['enterprise_outline_code29']
    end

    # Retrieve the Enterprise Outline Code3 value
    #
    # @return Enterprise Outline Code3 value
    def enterprise_outline_code3
      attribute_values['enterprise_outline_code3']
    end

    # Retrieve the Enterprise Outline Code30 value
    #
    # @return Enterprise Outline Code30 value
    def enterprise_outline_code30
      attribute_values['enterprise_outline_code30']
    end

    # Retrieve the Enterprise Outline Code4 value
    #
    # @return Enterprise Outline Code4 value
    def enterprise_outline_code4
      attribute_values['enterprise_outline_code4']
    end

    # Retrieve the Enterprise Outline Code5 value
    #
    # @return Enterprise Outline Code5 value
    def enterprise_outline_code5
      attribute_values['enterprise_outline_code5']
    end

    # Retrieve the Enterprise Outline Code6 value
    #
    # @return Enterprise Outline Code6 value
    def enterprise_outline_code6
      attribute_values['enterprise_outline_code6']
    end

    # Retrieve the Enterprise Outline Code7 value
    #
    # @return Enterprise Outline Code7 value
    def enterprise_outline_code7
      attribute_values['enterprise_outline_code7']
    end

    # Retrieve the Enterprise Outline Code8 value
    #
    # @return Enterprise Outline Code8 value
    def enterprise_outline_code8
      attribute_values['enterprise_outline_code8']
    end

    # Retrieve the Enterprise Outline Code9 value
    #
    # @return Enterprise Outline Code9 value
    def enterprise_outline_code9
      attribute_values['enterprise_outline_code9']
    end

    # Retrieve the Enterprise Project Cost1 value
    #
    # @return Enterprise Project Cost1 value
    def enterprise_project_cost1
      get_float_value(attribute_values['enterprise_project_cost1'])
    end

    # Retrieve the Enterprise Project Cost10 value
    #
    # @return Enterprise Project Cost10 value
    def enterprise_project_cost10
      get_float_value(attribute_values['enterprise_project_cost10'])
    end

    # Retrieve the Enterprise Project Cost2 value
    #
    # @return Enterprise Project Cost2 value
    def enterprise_project_cost2
      get_float_value(attribute_values['enterprise_project_cost2'])
    end

    # Retrieve the Enterprise Project Cost3 value
    #
    # @return Enterprise Project Cost3 value
    def enterprise_project_cost3
      get_float_value(attribute_values['enterprise_project_cost3'])
    end

    # Retrieve the Enterprise Project Cost4 value
    #
    # @return Enterprise Project Cost4 value
    def enterprise_project_cost4
      get_float_value(attribute_values['enterprise_project_cost4'])
    end

    # Retrieve the Enterprise Project Cost5 value
    #
    # @return Enterprise Project Cost5 value
    def enterprise_project_cost5
      get_float_value(attribute_values['enterprise_project_cost5'])
    end

    # Retrieve the Enterprise Project Cost6 value
    #
    # @return Enterprise Project Cost6 value
    def enterprise_project_cost6
      get_float_value(attribute_values['enterprise_project_cost6'])
    end

    # Retrieve the Enterprise Project Cost7 value
    #
    # @return Enterprise Project Cost7 value
    def enterprise_project_cost7
      get_float_value(attribute_values['enterprise_project_cost7'])
    end

    # Retrieve the Enterprise Project Cost8 value
    #
    # @return Enterprise Project Cost8 value
    def enterprise_project_cost8
      get_float_value(attribute_values['enterprise_project_cost8'])
    end

    # Retrieve the Enterprise Project Cost9 value
    #
    # @return Enterprise Project Cost9 value
    def enterprise_project_cost9
      get_float_value(attribute_values['enterprise_project_cost9'])
    end

    # Retrieve the Enterprise Project Date1 value
    #
    # @return Enterprise Project Date1 value
    def enterprise_project_date1
      get_date_value(attribute_values['enterprise_project_date1'])
    end

    # Retrieve the Enterprise Project Date10 value
    #
    # @return Enterprise Project Date10 value
    def enterprise_project_date10
      get_date_value(attribute_values['enterprise_project_date10'])
    end

    # Retrieve the Enterprise Project Date11 value
    #
    # @return Enterprise Project Date11 value
    def enterprise_project_date11
      get_date_value(attribute_values['enterprise_project_date11'])
    end

    # Retrieve the Enterprise Project Date12 value
    #
    # @return Enterprise Project Date12 value
    def enterprise_project_date12
      get_date_value(attribute_values['enterprise_project_date12'])
    end

    # Retrieve the Enterprise Project Date13 value
    #
    # @return Enterprise Project Date13 value
    def enterprise_project_date13
      get_date_value(attribute_values['enterprise_project_date13'])
    end

    # Retrieve the Enterprise Project Date14 value
    #
    # @return Enterprise Project Date14 value
    def enterprise_project_date14
      get_date_value(attribute_values['enterprise_project_date14'])
    end

    # Retrieve the Enterprise Project Date15 value
    #
    # @return Enterprise Project Date15 value
    def enterprise_project_date15
      get_date_value(attribute_values['enterprise_project_date15'])
    end

    # Retrieve the Enterprise Project Date16 value
    #
    # @return Enterprise Project Date16 value
    def enterprise_project_date16
      get_date_value(attribute_values['enterprise_project_date16'])
    end

    # Retrieve the Enterprise Project Date17 value
    #
    # @return Enterprise Project Date17 value
    def enterprise_project_date17
      get_date_value(attribute_values['enterprise_project_date17'])
    end

    # Retrieve the Enterprise Project Date18 value
    #
    # @return Enterprise Project Date18 value
    def enterprise_project_date18
      get_date_value(attribute_values['enterprise_project_date18'])
    end

    # Retrieve the Enterprise Project Date19 value
    #
    # @return Enterprise Project Date19 value
    def enterprise_project_date19
      get_date_value(attribute_values['enterprise_project_date19'])
    end

    # Retrieve the Enterprise Project Date2 value
    #
    # @return Enterprise Project Date2 value
    def enterprise_project_date2
      get_date_value(attribute_values['enterprise_project_date2'])
    end

    # Retrieve the Enterprise Project Date20 value
    #
    # @return Enterprise Project Date20 value
    def enterprise_project_date20
      get_date_value(attribute_values['enterprise_project_date20'])
    end

    # Retrieve the Enterprise Project Date21 value
    #
    # @return Enterprise Project Date21 value
    def enterprise_project_date21
      get_date_value(attribute_values['enterprise_project_date21'])
    end

    # Retrieve the Enterprise Project Date22 value
    #
    # @return Enterprise Project Date22 value
    def enterprise_project_date22
      get_date_value(attribute_values['enterprise_project_date22'])
    end

    # Retrieve the Enterprise Project Date23 value
    #
    # @return Enterprise Project Date23 value
    def enterprise_project_date23
      get_date_value(attribute_values['enterprise_project_date23'])
    end

    # Retrieve the Enterprise Project Date24 value
    #
    # @return Enterprise Project Date24 value
    def enterprise_project_date24
      get_date_value(attribute_values['enterprise_project_date24'])
    end

    # Retrieve the Enterprise Project Date25 value
    #
    # @return Enterprise Project Date25 value
    def enterprise_project_date25
      get_date_value(attribute_values['enterprise_project_date25'])
    end

    # Retrieve the Enterprise Project Date26 value
    #
    # @return Enterprise Project Date26 value
    def enterprise_project_date26
      get_date_value(attribute_values['enterprise_project_date26'])
    end

    # Retrieve the Enterprise Project Date27 value
    #
    # @return Enterprise Project Date27 value
    def enterprise_project_date27
      get_date_value(attribute_values['enterprise_project_date27'])
    end

    # Retrieve the Enterprise Project Date28 value
    #
    # @return Enterprise Project Date28 value
    def enterprise_project_date28
      get_date_value(attribute_values['enterprise_project_date28'])
    end

    # Retrieve the Enterprise Project Date29 value
    #
    # @return Enterprise Project Date29 value
    def enterprise_project_date29
      get_date_value(attribute_values['enterprise_project_date29'])
    end

    # Retrieve the Enterprise Project Date3 value
    #
    # @return Enterprise Project Date3 value
    def enterprise_project_date3
      get_date_value(attribute_values['enterprise_project_date3'])
    end

    # Retrieve the Enterprise Project Date30 value
    #
    # @return Enterprise Project Date30 value
    def enterprise_project_date30
      get_date_value(attribute_values['enterprise_project_date30'])
    end

    # Retrieve the Enterprise Project Date4 value
    #
    # @return Enterprise Project Date4 value
    def enterprise_project_date4
      get_date_value(attribute_values['enterprise_project_date4'])
    end

    # Retrieve the Enterprise Project Date5 value
    #
    # @return Enterprise Project Date5 value
    def enterprise_project_date5
      get_date_value(attribute_values['enterprise_project_date5'])
    end

    # Retrieve the Enterprise Project Date6 value
    #
    # @return Enterprise Project Date6 value
    def enterprise_project_date6
      get_date_value(attribute_values['enterprise_project_date6'])
    end

    # Retrieve the Enterprise Project Date7 value
    #
    # @return Enterprise Project Date7 value
    def enterprise_project_date7
      get_date_value(attribute_values['enterprise_project_date7'])
    end

    # Retrieve the Enterprise Project Date8 value
    #
    # @return Enterprise Project Date8 value
    def enterprise_project_date8
      get_date_value(attribute_values['enterprise_project_date8'])
    end

    # Retrieve the Enterprise Project Date9 value
    #
    # @return Enterprise Project Date9 value
    def enterprise_project_date9
      get_date_value(attribute_values['enterprise_project_date9'])
    end

    # Retrieve the Enterprise Project Duration1 value
    #
    # @return Enterprise Project Duration1 value
    def enterprise_project_duration1
      get_duration_value(attribute_values['enterprise_project_duration1'])
    end

    # Retrieve the Enterprise Project Duration10 value
    #
    # @return Enterprise Project Duration10 value
    def enterprise_project_duration10
      get_duration_value(attribute_values['enterprise_project_duration10'])
    end

    # Retrieve the Enterprise Project Duration2 value
    #
    # @return Enterprise Project Duration2 value
    def enterprise_project_duration2
      get_duration_value(attribute_values['enterprise_project_duration2'])
    end

    # Retrieve the Enterprise Project Duration3 value
    #
    # @return Enterprise Project Duration3 value
    def enterprise_project_duration3
      get_duration_value(attribute_values['enterprise_project_duration3'])
    end

    # Retrieve the Enterprise Project Duration4 value
    #
    # @return Enterprise Project Duration4 value
    def enterprise_project_duration4
      get_duration_value(attribute_values['enterprise_project_duration4'])
    end

    # Retrieve the Enterprise Project Duration5 value
    #
    # @return Enterprise Project Duration5 value
    def enterprise_project_duration5
      get_duration_value(attribute_values['enterprise_project_duration5'])
    end

    # Retrieve the Enterprise Project Duration6 value
    #
    # @return Enterprise Project Duration6 value
    def enterprise_project_duration6
      get_duration_value(attribute_values['enterprise_project_duration6'])
    end

    # Retrieve the Enterprise Project Duration7 value
    #
    # @return Enterprise Project Duration7 value
    def enterprise_project_duration7
      get_duration_value(attribute_values['enterprise_project_duration7'])
    end

    # Retrieve the Enterprise Project Duration8 value
    #
    # @return Enterprise Project Duration8 value
    def enterprise_project_duration8
      get_duration_value(attribute_values['enterprise_project_duration8'])
    end

    # Retrieve the Enterprise Project Duration9 value
    #
    # @return Enterprise Project Duration9 value
    def enterprise_project_duration9
      get_duration_value(attribute_values['enterprise_project_duration9'])
    end

    # Retrieve the Enterprise Project Flag1 value
    #
    # @return Enterprise Project Flag1 value
    def enterprise_project_flag1
      get_boolean_value(attribute_values['enterprise_project_flag1'])
    end

    # Retrieve the Enterprise Project Flag10 value
    #
    # @return Enterprise Project Flag10 value
    def enterprise_project_flag10
      get_boolean_value(attribute_values['enterprise_project_flag10'])
    end

    # Retrieve the Enterprise Project Flag11 value
    #
    # @return Enterprise Project Flag11 value
    def enterprise_project_flag11
      get_boolean_value(attribute_values['enterprise_project_flag11'])
    end

    # Retrieve the Enterprise Project Flag12 value
    #
    # @return Enterprise Project Flag12 value
    def enterprise_project_flag12
      get_boolean_value(attribute_values['enterprise_project_flag12'])
    end

    # Retrieve the Enterprise Project Flag13 value
    #
    # @return Enterprise Project Flag13 value
    def enterprise_project_flag13
      get_boolean_value(attribute_values['enterprise_project_flag13'])
    end

    # Retrieve the Enterprise Project Flag14 value
    #
    # @return Enterprise Project Flag14 value
    def enterprise_project_flag14
      get_boolean_value(attribute_values['enterprise_project_flag14'])
    end

    # Retrieve the Enterprise Project Flag15 value
    #
    # @return Enterprise Project Flag15 value
    def enterprise_project_flag15
      get_boolean_value(attribute_values['enterprise_project_flag15'])
    end

    # Retrieve the Enterprise Project Flag16 value
    #
    # @return Enterprise Project Flag16 value
    def enterprise_project_flag16
      get_boolean_value(attribute_values['enterprise_project_flag16'])
    end

    # Retrieve the Enterprise Project Flag17 value
    #
    # @return Enterprise Project Flag17 value
    def enterprise_project_flag17
      get_boolean_value(attribute_values['enterprise_project_flag17'])
    end

    # Retrieve the Enterprise Project Flag18 value
    #
    # @return Enterprise Project Flag18 value
    def enterprise_project_flag18
      get_boolean_value(attribute_values['enterprise_project_flag18'])
    end

    # Retrieve the Enterprise Project Flag19 value
    #
    # @return Enterprise Project Flag19 value
    def enterprise_project_flag19
      get_boolean_value(attribute_values['enterprise_project_flag19'])
    end

    # Retrieve the Enterprise Project Flag2 value
    #
    # @return Enterprise Project Flag2 value
    def enterprise_project_flag2
      get_boolean_value(attribute_values['enterprise_project_flag2'])
    end

    # Retrieve the Enterprise Project Flag20 value
    #
    # @return Enterprise Project Flag20 value
    def enterprise_project_flag20
      get_boolean_value(attribute_values['enterprise_project_flag20'])
    end

    # Retrieve the Enterprise Project Flag3 value
    #
    # @return Enterprise Project Flag3 value
    def enterprise_project_flag3
      get_boolean_value(attribute_values['enterprise_project_flag3'])
    end

    # Retrieve the Enterprise Project Flag4 value
    #
    # @return Enterprise Project Flag4 value
    def enterprise_project_flag4
      get_boolean_value(attribute_values['enterprise_project_flag4'])
    end

    # Retrieve the Enterprise Project Flag5 value
    #
    # @return Enterprise Project Flag5 value
    def enterprise_project_flag5
      get_boolean_value(attribute_values['enterprise_project_flag5'])
    end

    # Retrieve the Enterprise Project Flag6 value
    #
    # @return Enterprise Project Flag6 value
    def enterprise_project_flag6
      get_boolean_value(attribute_values['enterprise_project_flag6'])
    end

    # Retrieve the Enterprise Project Flag7 value
    #
    # @return Enterprise Project Flag7 value
    def enterprise_project_flag7
      get_boolean_value(attribute_values['enterprise_project_flag7'])
    end

    # Retrieve the Enterprise Project Flag8 value
    #
    # @return Enterprise Project Flag8 value
    def enterprise_project_flag8
      get_boolean_value(attribute_values['enterprise_project_flag8'])
    end

    # Retrieve the Enterprise Project Flag9 value
    #
    # @return Enterprise Project Flag9 value
    def enterprise_project_flag9
      get_boolean_value(attribute_values['enterprise_project_flag9'])
    end

    # Retrieve the Enterprise Project Number1 value
    #
    # @return Enterprise Project Number1 value
    def enterprise_project_number1
      get_float_value(attribute_values['enterprise_project_number1'])
    end

    # Retrieve the Enterprise Project Number10 value
    #
    # @return Enterprise Project Number10 value
    def enterprise_project_number10
      get_float_value(attribute_values['enterprise_project_number10'])
    end

    # Retrieve the Enterprise Project Number11 value
    #
    # @return Enterprise Project Number11 value
    def enterprise_project_number11
      get_float_value(attribute_values['enterprise_project_number11'])
    end

    # Retrieve the Enterprise Project Number12 value
    #
    # @return Enterprise Project Number12 value
    def enterprise_project_number12
      get_float_value(attribute_values['enterprise_project_number12'])
    end

    # Retrieve the Enterprise Project Number13 value
    #
    # @return Enterprise Project Number13 value
    def enterprise_project_number13
      get_float_value(attribute_values['enterprise_project_number13'])
    end

    # Retrieve the Enterprise Project Number14 value
    #
    # @return Enterprise Project Number14 value
    def enterprise_project_number14
      get_float_value(attribute_values['enterprise_project_number14'])
    end

    # Retrieve the Enterprise Project Number15 value
    #
    # @return Enterprise Project Number15 value
    def enterprise_project_number15
      get_float_value(attribute_values['enterprise_project_number15'])
    end

    # Retrieve the Enterprise Project Number16 value
    #
    # @return Enterprise Project Number16 value
    def enterprise_project_number16
      get_float_value(attribute_values['enterprise_project_number16'])
    end

    # Retrieve the Enterprise Project Number17 value
    #
    # @return Enterprise Project Number17 value
    def enterprise_project_number17
      get_float_value(attribute_values['enterprise_project_number17'])
    end

    # Retrieve the Enterprise Project Number18 value
    #
    # @return Enterprise Project Number18 value
    def enterprise_project_number18
      get_float_value(attribute_values['enterprise_project_number18'])
    end

    # Retrieve the Enterprise Project Number19 value
    #
    # @return Enterprise Project Number19 value
    def enterprise_project_number19
      get_float_value(attribute_values['enterprise_project_number19'])
    end

    # Retrieve the Enterprise Project Number2 value
    #
    # @return Enterprise Project Number2 value
    def enterprise_project_number2
      get_float_value(attribute_values['enterprise_project_number2'])
    end

    # Retrieve the Enterprise Project Number20 value
    #
    # @return Enterprise Project Number20 value
    def enterprise_project_number20
      get_float_value(attribute_values['enterprise_project_number20'])
    end

    # Retrieve the Enterprise Project Number21 value
    #
    # @return Enterprise Project Number21 value
    def enterprise_project_number21
      get_float_value(attribute_values['enterprise_project_number21'])
    end

    # Retrieve the Enterprise Project Number22 value
    #
    # @return Enterprise Project Number22 value
    def enterprise_project_number22
      get_float_value(attribute_values['enterprise_project_number22'])
    end

    # Retrieve the Enterprise Project Number23 value
    #
    # @return Enterprise Project Number23 value
    def enterprise_project_number23
      get_float_value(attribute_values['enterprise_project_number23'])
    end

    # Retrieve the Enterprise Project Number24 value
    #
    # @return Enterprise Project Number24 value
    def enterprise_project_number24
      get_float_value(attribute_values['enterprise_project_number24'])
    end

    # Retrieve the Enterprise Project Number25 value
    #
    # @return Enterprise Project Number25 value
    def enterprise_project_number25
      get_float_value(attribute_values['enterprise_project_number25'])
    end

    # Retrieve the Enterprise Project Number26 value
    #
    # @return Enterprise Project Number26 value
    def enterprise_project_number26
      get_float_value(attribute_values['enterprise_project_number26'])
    end

    # Retrieve the Enterprise Project Number27 value
    #
    # @return Enterprise Project Number27 value
    def enterprise_project_number27
      get_float_value(attribute_values['enterprise_project_number27'])
    end

    # Retrieve the Enterprise Project Number28 value
    #
    # @return Enterprise Project Number28 value
    def enterprise_project_number28
      get_float_value(attribute_values['enterprise_project_number28'])
    end

    # Retrieve the Enterprise Project Number29 value
    #
    # @return Enterprise Project Number29 value
    def enterprise_project_number29
      get_float_value(attribute_values['enterprise_project_number29'])
    end

    # Retrieve the Enterprise Project Number3 value
    #
    # @return Enterprise Project Number3 value
    def enterprise_project_number3
      get_float_value(attribute_values['enterprise_project_number3'])
    end

    # Retrieve the Enterprise Project Number30 value
    #
    # @return Enterprise Project Number30 value
    def enterprise_project_number30
      get_float_value(attribute_values['enterprise_project_number30'])
    end

    # Retrieve the Enterprise Project Number31 value
    #
    # @return Enterprise Project Number31 value
    def enterprise_project_number31
      get_float_value(attribute_values['enterprise_project_number31'])
    end

    # Retrieve the Enterprise Project Number32 value
    #
    # @return Enterprise Project Number32 value
    def enterprise_project_number32
      get_float_value(attribute_values['enterprise_project_number32'])
    end

    # Retrieve the Enterprise Project Number33 value
    #
    # @return Enterprise Project Number33 value
    def enterprise_project_number33
      get_float_value(attribute_values['enterprise_project_number33'])
    end

    # Retrieve the Enterprise Project Number34 value
    #
    # @return Enterprise Project Number34 value
    def enterprise_project_number34
      get_float_value(attribute_values['enterprise_project_number34'])
    end

    # Retrieve the Enterprise Project Number35 value
    #
    # @return Enterprise Project Number35 value
    def enterprise_project_number35
      get_float_value(attribute_values['enterprise_project_number35'])
    end

    # Retrieve the Enterprise Project Number36 value
    #
    # @return Enterprise Project Number36 value
    def enterprise_project_number36
      get_float_value(attribute_values['enterprise_project_number36'])
    end

    # Retrieve the Enterprise Project Number37 value
    #
    # @return Enterprise Project Number37 value
    def enterprise_project_number37
      get_float_value(attribute_values['enterprise_project_number37'])
    end

    # Retrieve the Enterprise Project Number38 value
    #
    # @return Enterprise Project Number38 value
    def enterprise_project_number38
      get_float_value(attribute_values['enterprise_project_number38'])
    end

    # Retrieve the Enterprise Project Number39 value
    #
    # @return Enterprise Project Number39 value
    def enterprise_project_number39
      get_float_value(attribute_values['enterprise_project_number39'])
    end

    # Retrieve the Enterprise Project Number4 value
    #
    # @return Enterprise Project Number4 value
    def enterprise_project_number4
      get_float_value(attribute_values['enterprise_project_number4'])
    end

    # Retrieve the Enterprise Project Number40 value
    #
    # @return Enterprise Project Number40 value
    def enterprise_project_number40
      get_float_value(attribute_values['enterprise_project_number40'])
    end

    # Retrieve the Enterprise Project Number5 value
    #
    # @return Enterprise Project Number5 value
    def enterprise_project_number5
      get_float_value(attribute_values['enterprise_project_number5'])
    end

    # Retrieve the Enterprise Project Number6 value
    #
    # @return Enterprise Project Number6 value
    def enterprise_project_number6
      get_float_value(attribute_values['enterprise_project_number6'])
    end

    # Retrieve the Enterprise Project Number7 value
    #
    # @return Enterprise Project Number7 value
    def enterprise_project_number7
      get_float_value(attribute_values['enterprise_project_number7'])
    end

    # Retrieve the Enterprise Project Number8 value
    #
    # @return Enterprise Project Number8 value
    def enterprise_project_number8
      get_float_value(attribute_values['enterprise_project_number8'])
    end

    # Retrieve the Enterprise Project Number9 value
    #
    # @return Enterprise Project Number9 value
    def enterprise_project_number9
      get_float_value(attribute_values['enterprise_project_number9'])
    end

    # Retrieve the Enterprise Project Outline Code1 value
    #
    # @return Enterprise Project Outline Code1 value
    def enterprise_project_outline_code1
      attribute_values['enterprise_project_outline_code1']
    end

    # Retrieve the Enterprise Project Outline Code10 value
    #
    # @return Enterprise Project Outline Code10 value
    def enterprise_project_outline_code10
      attribute_values['enterprise_project_outline_code10']
    end

    # Retrieve the Enterprise Project Outline Code11 value
    #
    # @return Enterprise Project Outline Code11 value
    def enterprise_project_outline_code11
      attribute_values['enterprise_project_outline_code11']
    end

    # Retrieve the Enterprise Project Outline Code12 value
    #
    # @return Enterprise Project Outline Code12 value
    def enterprise_project_outline_code12
      attribute_values['enterprise_project_outline_code12']
    end

    # Retrieve the Enterprise Project Outline Code13 value
    #
    # @return Enterprise Project Outline Code13 value
    def enterprise_project_outline_code13
      attribute_values['enterprise_project_outline_code13']
    end

    # Retrieve the Enterprise Project Outline Code14 value
    #
    # @return Enterprise Project Outline Code14 value
    def enterprise_project_outline_code14
      attribute_values['enterprise_project_outline_code14']
    end

    # Retrieve the Enterprise Project Outline Code15 value
    #
    # @return Enterprise Project Outline Code15 value
    def enterprise_project_outline_code15
      attribute_values['enterprise_project_outline_code15']
    end

    # Retrieve the Enterprise Project Outline Code16 value
    #
    # @return Enterprise Project Outline Code16 value
    def enterprise_project_outline_code16
      attribute_values['enterprise_project_outline_code16']
    end

    # Retrieve the Enterprise Project Outline Code17 value
    #
    # @return Enterprise Project Outline Code17 value
    def enterprise_project_outline_code17
      attribute_values['enterprise_project_outline_code17']
    end

    # Retrieve the Enterprise Project Outline Code18 value
    #
    # @return Enterprise Project Outline Code18 value
    def enterprise_project_outline_code18
      attribute_values['enterprise_project_outline_code18']
    end

    # Retrieve the Enterprise Project Outline Code19 value
    #
    # @return Enterprise Project Outline Code19 value
    def enterprise_project_outline_code19
      attribute_values['enterprise_project_outline_code19']
    end

    # Retrieve the Enterprise Project Outline Code2 value
    #
    # @return Enterprise Project Outline Code2 value
    def enterprise_project_outline_code2
      attribute_values['enterprise_project_outline_code2']
    end

    # Retrieve the Enterprise Project Outline Code20 value
    #
    # @return Enterprise Project Outline Code20 value
    def enterprise_project_outline_code20
      attribute_values['enterprise_project_outline_code20']
    end

    # Retrieve the Enterprise Project Outline Code21 value
    #
    # @return Enterprise Project Outline Code21 value
    def enterprise_project_outline_code21
      attribute_values['enterprise_project_outline_code21']
    end

    # Retrieve the Enterprise Project Outline Code22 value
    #
    # @return Enterprise Project Outline Code22 value
    def enterprise_project_outline_code22
      attribute_values['enterprise_project_outline_code22']
    end

    # Retrieve the Enterprise Project Outline Code23 value
    #
    # @return Enterprise Project Outline Code23 value
    def enterprise_project_outline_code23
      attribute_values['enterprise_project_outline_code23']
    end

    # Retrieve the Enterprise Project Outline Code24 value
    #
    # @return Enterprise Project Outline Code24 value
    def enterprise_project_outline_code24
      attribute_values['enterprise_project_outline_code24']
    end

    # Retrieve the Enterprise Project Outline Code25 value
    #
    # @return Enterprise Project Outline Code25 value
    def enterprise_project_outline_code25
      attribute_values['enterprise_project_outline_code25']
    end

    # Retrieve the Enterprise Project Outline Code26 value
    #
    # @return Enterprise Project Outline Code26 value
    def enterprise_project_outline_code26
      attribute_values['enterprise_project_outline_code26']
    end

    # Retrieve the Enterprise Project Outline Code27 value
    #
    # @return Enterprise Project Outline Code27 value
    def enterprise_project_outline_code27
      attribute_values['enterprise_project_outline_code27']
    end

    # Retrieve the Enterprise Project Outline Code28 value
    #
    # @return Enterprise Project Outline Code28 value
    def enterprise_project_outline_code28
      attribute_values['enterprise_project_outline_code28']
    end

    # Retrieve the Enterprise Project Outline Code29 value
    #
    # @return Enterprise Project Outline Code29 value
    def enterprise_project_outline_code29
      attribute_values['enterprise_project_outline_code29']
    end

    # Retrieve the Enterprise Project Outline Code3 value
    #
    # @return Enterprise Project Outline Code3 value
    def enterprise_project_outline_code3
      attribute_values['enterprise_project_outline_code3']
    end

    # Retrieve the Enterprise Project Outline Code30 value
    #
    # @return Enterprise Project Outline Code30 value
    def enterprise_project_outline_code30
      attribute_values['enterprise_project_outline_code30']
    end

    # Retrieve the Enterprise Project Outline Code4 value
    #
    # @return Enterprise Project Outline Code4 value
    def enterprise_project_outline_code4
      attribute_values['enterprise_project_outline_code4']
    end

    # Retrieve the Enterprise Project Outline Code5 value
    #
    # @return Enterprise Project Outline Code5 value
    def enterprise_project_outline_code5
      attribute_values['enterprise_project_outline_code5']
    end

    # Retrieve the Enterprise Project Outline Code6 value
    #
    # @return Enterprise Project Outline Code6 value
    def enterprise_project_outline_code6
      attribute_values['enterprise_project_outline_code6']
    end

    # Retrieve the Enterprise Project Outline Code7 value
    #
    # @return Enterprise Project Outline Code7 value
    def enterprise_project_outline_code7
      attribute_values['enterprise_project_outline_code7']
    end

    # Retrieve the Enterprise Project Outline Code8 value
    #
    # @return Enterprise Project Outline Code8 value
    def enterprise_project_outline_code8
      attribute_values['enterprise_project_outline_code8']
    end

    # Retrieve the Enterprise Project Outline Code9 value
    #
    # @return Enterprise Project Outline Code9 value
    def enterprise_project_outline_code9
      attribute_values['enterprise_project_outline_code9']
    end

    # Retrieve the Enterprise Project Text1 value
    #
    # @return Enterprise Project Text1 value
    def enterprise_project_text1
      attribute_values['enterprise_project_text1']
    end

    # Retrieve the Enterprise Project Text10 value
    #
    # @return Enterprise Project Text10 value
    def enterprise_project_text10
      attribute_values['enterprise_project_text10']
    end

    # Retrieve the Enterprise Project Text11 value
    #
    # @return Enterprise Project Text11 value
    def enterprise_project_text11
      attribute_values['enterprise_project_text11']
    end

    # Retrieve the Enterprise Project Text12 value
    #
    # @return Enterprise Project Text12 value
    def enterprise_project_text12
      attribute_values['enterprise_project_text12']
    end

    # Retrieve the Enterprise Project Text13 value
    #
    # @return Enterprise Project Text13 value
    def enterprise_project_text13
      attribute_values['enterprise_project_text13']
    end

    # Retrieve the Enterprise Project Text14 value
    #
    # @return Enterprise Project Text14 value
    def enterprise_project_text14
      attribute_values['enterprise_project_text14']
    end

    # Retrieve the Enterprise Project Text15 value
    #
    # @return Enterprise Project Text15 value
    def enterprise_project_text15
      attribute_values['enterprise_project_text15']
    end

    # Retrieve the Enterprise Project Text16 value
    #
    # @return Enterprise Project Text16 value
    def enterprise_project_text16
      attribute_values['enterprise_project_text16']
    end

    # Retrieve the Enterprise Project Text17 value
    #
    # @return Enterprise Project Text17 value
    def enterprise_project_text17
      attribute_values['enterprise_project_text17']
    end

    # Retrieve the Enterprise Project Text18 value
    #
    # @return Enterprise Project Text18 value
    def enterprise_project_text18
      attribute_values['enterprise_project_text18']
    end

    # Retrieve the Enterprise Project Text19 value
    #
    # @return Enterprise Project Text19 value
    def enterprise_project_text19
      attribute_values['enterprise_project_text19']
    end

    # Retrieve the Enterprise Project Text2 value
    #
    # @return Enterprise Project Text2 value
    def enterprise_project_text2
      attribute_values['enterprise_project_text2']
    end

    # Retrieve the Enterprise Project Text20 value
    #
    # @return Enterprise Project Text20 value
    def enterprise_project_text20
      attribute_values['enterprise_project_text20']
    end

    # Retrieve the Enterprise Project Text21 value
    #
    # @return Enterprise Project Text21 value
    def enterprise_project_text21
      attribute_values['enterprise_project_text21']
    end

    # Retrieve the Enterprise Project Text22 value
    #
    # @return Enterprise Project Text22 value
    def enterprise_project_text22
      attribute_values['enterprise_project_text22']
    end

    # Retrieve the Enterprise Project Text23 value
    #
    # @return Enterprise Project Text23 value
    def enterprise_project_text23
      attribute_values['enterprise_project_text23']
    end

    # Retrieve the Enterprise Project Text24 value
    #
    # @return Enterprise Project Text24 value
    def enterprise_project_text24
      attribute_values['enterprise_project_text24']
    end

    # Retrieve the Enterprise Project Text25 value
    #
    # @return Enterprise Project Text25 value
    def enterprise_project_text25
      attribute_values['enterprise_project_text25']
    end

    # Retrieve the Enterprise Project Text26 value
    #
    # @return Enterprise Project Text26 value
    def enterprise_project_text26
      attribute_values['enterprise_project_text26']
    end

    # Retrieve the Enterprise Project Text27 value
    #
    # @return Enterprise Project Text27 value
    def enterprise_project_text27
      attribute_values['enterprise_project_text27']
    end

    # Retrieve the Enterprise Project Text28 value
    #
    # @return Enterprise Project Text28 value
    def enterprise_project_text28
      attribute_values['enterprise_project_text28']
    end

    # Retrieve the Enterprise Project Text29 value
    #
    # @return Enterprise Project Text29 value
    def enterprise_project_text29
      attribute_values['enterprise_project_text29']
    end

    # Retrieve the Enterprise Project Text3 value
    #
    # @return Enterprise Project Text3 value
    def enterprise_project_text3
      attribute_values['enterprise_project_text3']
    end

    # Retrieve the Enterprise Project Text30 value
    #
    # @return Enterprise Project Text30 value
    def enterprise_project_text30
      attribute_values['enterprise_project_text30']
    end

    # Retrieve the Enterprise Project Text31 value
    #
    # @return Enterprise Project Text31 value
    def enterprise_project_text31
      attribute_values['enterprise_project_text31']
    end

    # Retrieve the Enterprise Project Text32 value
    #
    # @return Enterprise Project Text32 value
    def enterprise_project_text32
      attribute_values['enterprise_project_text32']
    end

    # Retrieve the Enterprise Project Text33 value
    #
    # @return Enterprise Project Text33 value
    def enterprise_project_text33
      attribute_values['enterprise_project_text33']
    end

    # Retrieve the Enterprise Project Text34 value
    #
    # @return Enterprise Project Text34 value
    def enterprise_project_text34
      attribute_values['enterprise_project_text34']
    end

    # Retrieve the Enterprise Project Text35 value
    #
    # @return Enterprise Project Text35 value
    def enterprise_project_text35
      attribute_values['enterprise_project_text35']
    end

    # Retrieve the Enterprise Project Text36 value
    #
    # @return Enterprise Project Text36 value
    def enterprise_project_text36
      attribute_values['enterprise_project_text36']
    end

    # Retrieve the Enterprise Project Text37 value
    #
    # @return Enterprise Project Text37 value
    def enterprise_project_text37
      attribute_values['enterprise_project_text37']
    end

    # Retrieve the Enterprise Project Text38 value
    #
    # @return Enterprise Project Text38 value
    def enterprise_project_text38
      attribute_values['enterprise_project_text38']
    end

    # Retrieve the Enterprise Project Text39 value
    #
    # @return Enterprise Project Text39 value
    def enterprise_project_text39
      attribute_values['enterprise_project_text39']
    end

    # Retrieve the Enterprise Project Text4 value
    #
    # @return Enterprise Project Text4 value
    def enterprise_project_text4
      attribute_values['enterprise_project_text4']
    end

    # Retrieve the Enterprise Project Text40 value
    #
    # @return Enterprise Project Text40 value
    def enterprise_project_text40
      attribute_values['enterprise_project_text40']
    end

    # Retrieve the Enterprise Project Text5 value
    #
    # @return Enterprise Project Text5 value
    def enterprise_project_text5
      attribute_values['enterprise_project_text5']
    end

    # Retrieve the Enterprise Project Text6 value
    #
    # @return Enterprise Project Text6 value
    def enterprise_project_text6
      attribute_values['enterprise_project_text6']
    end

    # Retrieve the Enterprise Project Text7 value
    #
    # @return Enterprise Project Text7 value
    def enterprise_project_text7
      attribute_values['enterprise_project_text7']
    end

    # Retrieve the Enterprise Project Text8 value
    #
    # @return Enterprise Project Text8 value
    def enterprise_project_text8
      attribute_values['enterprise_project_text8']
    end

    # Retrieve the Enterprise Project Text9 value
    #
    # @return Enterprise Project Text9 value
    def enterprise_project_text9
      attribute_values['enterprise_project_text9']
    end

    # Retrieve the Enterprise Text1 value
    #
    # @return Enterprise Text1 value
    def enterprise_text1
      attribute_values['enterprise_text1']
    end

    # Retrieve the Enterprise Text10 value
    #
    # @return Enterprise Text10 value
    def enterprise_text10
      attribute_values['enterprise_text10']
    end

    # Retrieve the Enterprise Text11 value
    #
    # @return Enterprise Text11 value
    def enterprise_text11
      attribute_values['enterprise_text11']
    end

    # Retrieve the Enterprise Text12 value
    #
    # @return Enterprise Text12 value
    def enterprise_text12
      attribute_values['enterprise_text12']
    end

    # Retrieve the Enterprise Text13 value
    #
    # @return Enterprise Text13 value
    def enterprise_text13
      attribute_values['enterprise_text13']
    end

    # Retrieve the Enterprise Text14 value
    #
    # @return Enterprise Text14 value
    def enterprise_text14
      attribute_values['enterprise_text14']
    end

    # Retrieve the Enterprise Text15 value
    #
    # @return Enterprise Text15 value
    def enterprise_text15
      attribute_values['enterprise_text15']
    end

    # Retrieve the Enterprise Text16 value
    #
    # @return Enterprise Text16 value
    def enterprise_text16
      attribute_values['enterprise_text16']
    end

    # Retrieve the Enterprise Text17 value
    #
    # @return Enterprise Text17 value
    def enterprise_text17
      attribute_values['enterprise_text17']
    end

    # Retrieve the Enterprise Text18 value
    #
    # @return Enterprise Text18 value
    def enterprise_text18
      attribute_values['enterprise_text18']
    end

    # Retrieve the Enterprise Text19 value
    #
    # @return Enterprise Text19 value
    def enterprise_text19
      attribute_values['enterprise_text19']
    end

    # Retrieve the Enterprise Text2 value
    #
    # @return Enterprise Text2 value
    def enterprise_text2
      attribute_values['enterprise_text2']
    end

    # Retrieve the Enterprise Text20 value
    #
    # @return Enterprise Text20 value
    def enterprise_text20
      attribute_values['enterprise_text20']
    end

    # Retrieve the Enterprise Text21 value
    #
    # @return Enterprise Text21 value
    def enterprise_text21
      attribute_values['enterprise_text21']
    end

    # Retrieve the Enterprise Text22 value
    #
    # @return Enterprise Text22 value
    def enterprise_text22
      attribute_values['enterprise_text22']
    end

    # Retrieve the Enterprise Text23 value
    #
    # @return Enterprise Text23 value
    def enterprise_text23
      attribute_values['enterprise_text23']
    end

    # Retrieve the Enterprise Text24 value
    #
    # @return Enterprise Text24 value
    def enterprise_text24
      attribute_values['enterprise_text24']
    end

    # Retrieve the Enterprise Text25 value
    #
    # @return Enterprise Text25 value
    def enterprise_text25
      attribute_values['enterprise_text25']
    end

    # Retrieve the Enterprise Text26 value
    #
    # @return Enterprise Text26 value
    def enterprise_text26
      attribute_values['enterprise_text26']
    end

    # Retrieve the Enterprise Text27 value
    #
    # @return Enterprise Text27 value
    def enterprise_text27
      attribute_values['enterprise_text27']
    end

    # Retrieve the Enterprise Text28 value
    #
    # @return Enterprise Text28 value
    def enterprise_text28
      attribute_values['enterprise_text28']
    end

    # Retrieve the Enterprise Text29 value
    #
    # @return Enterprise Text29 value
    def enterprise_text29
      attribute_values['enterprise_text29']
    end

    # Retrieve the Enterprise Text3 value
    #
    # @return Enterprise Text3 value
    def enterprise_text3
      attribute_values['enterprise_text3']
    end

    # Retrieve the Enterprise Text30 value
    #
    # @return Enterprise Text30 value
    def enterprise_text30
      attribute_values['enterprise_text30']
    end

    # Retrieve the Enterprise Text31 value
    #
    # @return Enterprise Text31 value
    def enterprise_text31
      attribute_values['enterprise_text31']
    end

    # Retrieve the Enterprise Text32 value
    #
    # @return Enterprise Text32 value
    def enterprise_text32
      attribute_values['enterprise_text32']
    end

    # Retrieve the Enterprise Text33 value
    #
    # @return Enterprise Text33 value
    def enterprise_text33
      attribute_values['enterprise_text33']
    end

    # Retrieve the Enterprise Text34 value
    #
    # @return Enterprise Text34 value
    def enterprise_text34
      attribute_values['enterprise_text34']
    end

    # Retrieve the Enterprise Text35 value
    #
    # @return Enterprise Text35 value
    def enterprise_text35
      attribute_values['enterprise_text35']
    end

    # Retrieve the Enterprise Text36 value
    #
    # @return Enterprise Text36 value
    def enterprise_text36
      attribute_values['enterprise_text36']
    end

    # Retrieve the Enterprise Text37 value
    #
    # @return Enterprise Text37 value
    def enterprise_text37
      attribute_values['enterprise_text37']
    end

    # Retrieve the Enterprise Text38 value
    #
    # @return Enterprise Text38 value
    def enterprise_text38
      attribute_values['enterprise_text38']
    end

    # Retrieve the Enterprise Text39 value
    #
    # @return Enterprise Text39 value
    def enterprise_text39
      attribute_values['enterprise_text39']
    end

    # Retrieve the Enterprise Text4 value
    #
    # @return Enterprise Text4 value
    def enterprise_text4
      attribute_values['enterprise_text4']
    end

    # Retrieve the Enterprise Text40 value
    #
    # @return Enterprise Text40 value
    def enterprise_text40
      attribute_values['enterprise_text40']
    end

    # Retrieve the Enterprise Text5 value
    #
    # @return Enterprise Text5 value
    def enterprise_text5
      attribute_values['enterprise_text5']
    end

    # Retrieve the Enterprise Text6 value
    #
    # @return Enterprise Text6 value
    def enterprise_text6
      attribute_values['enterprise_text6']
    end

    # Retrieve the Enterprise Text7 value
    #
    # @return Enterprise Text7 value
    def enterprise_text7
      attribute_values['enterprise_text7']
    end

    # Retrieve the Enterprise Text8 value
    #
    # @return Enterprise Text8 value
    def enterprise_text8
      attribute_values['enterprise_text8']
    end

    # Retrieve the Enterprise Text9 value
    #
    # @return Enterprise Text9 value
    def enterprise_text9
      attribute_values['enterprise_text9']
    end

    # Retrieve the Error Message value
    #
    # @return Error Message value
    def error_message
      attribute_values['error_message']
    end

    # Retrieve the Estimated value
    #
    # @return Estimated value
    def estimated
      get_boolean_value(attribute_values['estimated'])
    end

    # Retrieve the Expense Items value
    #
    # @return Expense Items value
    def expense_items
      attribute_values['expense_items']
    end

    # Retrieve the External Early Start value
    #
    # @return External Early Start value
    def external_early_start
      get_date_value(attribute_values['external_early_start'])
    end

    # Retrieve the External Late Finish value
    #
    # @return External Late Finish value
    def external_late_finish
      get_date_value(attribute_values['external_late_finish'])
    end

    # Retrieve the External Task value
    #
    # @return External Task value
    def external_task
      get_boolean_value(attribute_values['external_task'])
    end

    # Retrieve the Feature of Work value
    #
    # @return Feature of Work value
    def feature_of_work
      attribute_values['feature_of_work']
    end

    # Retrieve the Finish value
    #
    # @return Finish value
    def finish
      get_date_value(attribute_values['finish'])
    end

    # Retrieve the Finish1 value
    #
    # @return Finish1 value
    def finish1
      get_date_value(attribute_values['finish1'])
    end

    # Retrieve the Finish10 value
    #
    # @return Finish10 value
    def finish10
      get_date_value(attribute_values['finish10'])
    end

    # Retrieve the Finish2 value
    #
    # @return Finish2 value
    def finish2
      get_date_value(attribute_values['finish2'])
    end

    # Retrieve the Finish3 value
    #
    # @return Finish3 value
    def finish3
      get_date_value(attribute_values['finish3'])
    end

    # Retrieve the Finish4 value
    #
    # @return Finish4 value
    def finish4
      get_date_value(attribute_values['finish4'])
    end

    # Retrieve the Finish5 value
    #
    # @return Finish5 value
    def finish5
      get_date_value(attribute_values['finish5'])
    end

    # Retrieve the Finish6 value
    #
    # @return Finish6 value
    def finish6
      get_date_value(attribute_values['finish6'])
    end

    # Retrieve the Finish7 value
    #
    # @return Finish7 value
    def finish7
      get_date_value(attribute_values['finish7'])
    end

    # Retrieve the Finish8 value
    #
    # @return Finish8 value
    def finish8
      get_date_value(attribute_values['finish8'])
    end

    # Retrieve the Finish9 value
    #
    # @return Finish9 value
    def finish9
      get_date_value(attribute_values['finish9'])
    end

    # Retrieve the Finish Slack value
    #
    # @return Finish Slack value
    def finish_slack
      get_duration_value(attribute_values['finish_slack'])
    end

    # Retrieve the Finish value
    #
    # @return Finish value
    def finish_text
      attribute_values['finish_text']
    end

    # Retrieve the Finish Variance value
    #
    # @return Finish Variance value
    def finish_variance
      get_duration_value(attribute_values['finish_variance'])
    end

    # Retrieve the Fixed Cost value
    #
    # @return Fixed Cost value
    def fixed_cost
      get_float_value(attribute_values['fixed_cost'])
    end

    # Retrieve the Fixed Cost Accrual value
    #
    # @return Fixed Cost Accrual value
    def fixed_cost_accrual
      attribute_values['fixed_cost_accrual']
    end

    # Retrieve the Fixed Duration value
    #
    # @return Fixed Duration value
    def fixed_duration
      get_boolean_value(attribute_values['fixed_duration'])
    end

    # Retrieve the Flag1 value
    #
    # @return Flag1 value
    def flag1
      get_boolean_value(attribute_values['flag1'])
    end

    # Retrieve the Flag10 value
    #
    # @return Flag10 value
    def flag10
      get_boolean_value(attribute_values['flag10'])
    end

    # Retrieve the Flag11 value
    #
    # @return Flag11 value
    def flag11
      get_boolean_value(attribute_values['flag11'])
    end

    # Retrieve the Flag12 value
    #
    # @return Flag12 value
    def flag12
      get_boolean_value(attribute_values['flag12'])
    end

    # Retrieve the Flag13 value
    #
    # @return Flag13 value
    def flag13
      get_boolean_value(attribute_values['flag13'])
    end

    # Retrieve the Flag14 value
    #
    # @return Flag14 value
    def flag14
      get_boolean_value(attribute_values['flag14'])
    end

    # Retrieve the Flag15 value
    #
    # @return Flag15 value
    def flag15
      get_boolean_value(attribute_values['flag15'])
    end

    # Retrieve the Flag16 value
    #
    # @return Flag16 value
    def flag16
      get_boolean_value(attribute_values['flag16'])
    end

    # Retrieve the Flag17 value
    #
    # @return Flag17 value
    def flag17
      get_boolean_value(attribute_values['flag17'])
    end

    # Retrieve the Flag18 value
    #
    # @return Flag18 value
    def flag18
      get_boolean_value(attribute_values['flag18'])
    end

    # Retrieve the Flag19 value
    #
    # @return Flag19 value
    def flag19
      get_boolean_value(attribute_values['flag19'])
    end

    # Retrieve the Flag2 value
    #
    # @return Flag2 value
    def flag2
      get_boolean_value(attribute_values['flag2'])
    end

    # Retrieve the Flag20 value
    #
    # @return Flag20 value
    def flag20
      get_boolean_value(attribute_values['flag20'])
    end

    # Retrieve the Flag3 value
    #
    # @return Flag3 value
    def flag3
      get_boolean_value(attribute_values['flag3'])
    end

    # Retrieve the Flag4 value
    #
    # @return Flag4 value
    def flag4
      get_boolean_value(attribute_values['flag4'])
    end

    # Retrieve the Flag5 value
    #
    # @return Flag5 value
    def flag5
      get_boolean_value(attribute_values['flag5'])
    end

    # Retrieve the Flag6 value
    #
    # @return Flag6 value
    def flag6
      get_boolean_value(attribute_values['flag6'])
    end

    # Retrieve the Flag7 value
    #
    # @return Flag7 value
    def flag7
      get_boolean_value(attribute_values['flag7'])
    end

    # Retrieve the Flag8 value
    #
    # @return Flag8 value
    def flag8
      get_boolean_value(attribute_values['flag8'])
    end

    # Retrieve the Flag9 value
    #
    # @return Flag9 value
    def flag9
      get_boolean_value(attribute_values['flag9'])
    end

    # Retrieve the Free Slack value
    #
    # @return Free Slack value
    def free_slack
      get_duration_value(attribute_values['free_slack'])
    end

    # Retrieve the Group By Summary value
    #
    # @return Group By Summary value
    def group_by_summary
      attribute_values['group_by_summary']
    end

    # Retrieve the GUID value
    #
    # @return GUID value
    def guid
      attribute_values['guid']
    end

    # Retrieve the Hammock Code value
    #
    # @return Hammock Code value
    def hammock_code
      get_boolean_value(attribute_values['hammock_code'])
    end

    # Retrieve the Hide Bar value
    #
    # @return Hide Bar value
    def hide_bar
      get_boolean_value(attribute_values['hide_bar'])
    end

    # Retrieve the Hyperlink value
    #
    # @return Hyperlink value
    def hyperlink
      attribute_values['hyperlink']
    end

    # Retrieve the Hyperlink Address value
    #
    # @return Hyperlink Address value
    def hyperlink_address
      attribute_values['hyperlink_address']
    end

    # Retrieve the Hyperlink Data value
    #
    # @return Hyperlink Data value
    def hyperlink_data
      attribute_values['hyperlink_data']
    end

    # Retrieve the Hyperlink Href value
    #
    # @return Hyperlink Href value
    def hyperlink_href
      attribute_values['hyperlink_href']
    end

    # Retrieve the Hyperlink Screen Tip value
    #
    # @return Hyperlink Screen Tip value
    def hyperlink_screen_tip
      attribute_values['hyperlink_screen_tip']
    end

    # Retrieve the Hyperlink SubAddress value
    #
    # @return Hyperlink SubAddress value
    def hyperlink_subaddress
      attribute_values['hyperlink_subaddress']
    end

    # Retrieve the ID value
    #
    # @return ID value
    def id
      get_integer_value(attribute_values['id'])
    end

    # Retrieve the Ignore Resource Calendar value
    #
    # @return Ignore Resource Calendar value
    def ignore_resource_calendar
      get_boolean_value(attribute_values['ignore_resource_calendar'])
    end

    # Retrieve the Ignore Warnings value
    #
    # @return Ignore Warnings value
    def ignore_warnings
      get_boolean_value(attribute_values['ignore_warnings'])
    end

    # Retrieve the Index value
    #
    # @return Index value
    def index
      get_integer_value(attribute_values['index'])
    end

    # Retrieve the Indicators value
    #
    # @return Indicators value
    def indicators
      attribute_values['indicators']
    end

    # Retrieve the Is Duration Valid value
    #
    # @return Is Duration Valid value
    def is_duration_valid
      get_boolean_value(attribute_values['is_duration_valid'])
    end

    # Retrieve the Is Finish Valid value
    #
    # @return Is Finish Valid value
    def is_finish_valid
      get_boolean_value(attribute_values['is_finish_valid'])
    end

    # Retrieve the Is Start Valid value
    #
    # @return Is Start Valid value
    def is_start_valid
      get_boolean_value(attribute_values['is_start_valid'])
    end

    # Retrieve the Late Finish value
    #
    # @return Late Finish value
    def late_finish
      get_date_value(attribute_values['late_finish'])
    end

    # Retrieve the Late Start value
    #
    # @return Late Start value
    def late_start
      get_date_value(attribute_values['late_start'])
    end

    # Retrieve the Leveling Can Split value
    #
    # @return Leveling Can Split value
    def leveling_can_split
      get_boolean_value(attribute_values['leveling_can_split'])
    end

    # Retrieve the Leveling Delay value
    #
    # @return Leveling Delay value
    def leveling_delay
      get_duration_value(attribute_values['leveling_delay'])
    end

    # Retrieve the Leveling Delay Units value
    #
    # @return Leveling Delay Units value
    def leveling_delay_units
      attribute_values['leveling_delay_units']
    end

    # Retrieve the Level Assignments value
    #
    # @return Level Assignments value
    def level_assignments
      get_boolean_value(attribute_values['level_assignments'])
    end

    # Retrieve the Linked Fields value
    #
    # @return Linked Fields value
    def linked_fields
      get_boolean_value(attribute_values['linked_fields'])
    end

    # Retrieve the Longest Path value
    #
    # @return Longest Path value
    def longest_path
      get_boolean_value(attribute_values['longest_path'])
    end

    # Retrieve the Mail value
    #
    # @return Mail value
    def mail
      attribute_values['mail']
    end

    # Retrieve the Manager value
    #
    # @return Manager value
    def manager
      attribute_values['manager']
    end

    # Retrieve the Manual Duration value
    #
    # @return Manual Duration value
    def manual_duration
      get_duration_value(attribute_values['manual_duration'])
    end

    # Retrieve the Manual Duration Units value
    #
    # @return Manual Duration Units value
    def manual_duration_units
      attribute_values['manual_duration_units']
    end

    # Retrieve the Marked value
    #
    # @return Marked value
    def marked
      get_boolean_value(attribute_values['marked'])
    end

    # Retrieve the Milestone value
    #
    # @return Milestone value
    def milestone
      get_boolean_value(attribute_values['milestone'])
    end

    # Retrieve the Mod or Claim Number value
    #
    # @return Mod or Claim Number value
    def mod_or_claim_number
      attribute_values['mod_or_claim_number']
    end

    # Retrieve the Task Name value
    #
    # @return Task Name value
    def name
      attribute_values['name']
    end

    # Retrieve the Notes value
    #
    # @return Notes value
    def notes
      attribute_values['notes']
    end

    # Retrieve the Number1 value
    #
    # @return Number1 value
    def number1
      get_float_value(attribute_values['number1'])
    end

    # Retrieve the Number10 value
    #
    # @return Number10 value
    def number10
      get_float_value(attribute_values['number10'])
    end

    # Retrieve the Number11 value
    #
    # @return Number11 value
    def number11
      get_float_value(attribute_values['number11'])
    end

    # Retrieve the Number12 value
    #
    # @return Number12 value
    def number12
      get_float_value(attribute_values['number12'])
    end

    # Retrieve the Number13 value
    #
    # @return Number13 value
    def number13
      get_float_value(attribute_values['number13'])
    end

    # Retrieve the Number14 value
    #
    # @return Number14 value
    def number14
      get_float_value(attribute_values['number14'])
    end

    # Retrieve the Number15 value
    #
    # @return Number15 value
    def number15
      get_float_value(attribute_values['number15'])
    end

    # Retrieve the Number16 value
    #
    # @return Number16 value
    def number16
      get_float_value(attribute_values['number16'])
    end

    # Retrieve the Number17 value
    #
    # @return Number17 value
    def number17
      get_float_value(attribute_values['number17'])
    end

    # Retrieve the Number18 value
    #
    # @return Number18 value
    def number18
      get_float_value(attribute_values['number18'])
    end

    # Retrieve the Number19 value
    #
    # @return Number19 value
    def number19
      get_float_value(attribute_values['number19'])
    end

    # Retrieve the Number2 value
    #
    # @return Number2 value
    def number2
      get_float_value(attribute_values['number2'])
    end

    # Retrieve the Number20 value
    #
    # @return Number20 value
    def number20
      get_float_value(attribute_values['number20'])
    end

    # Retrieve the Number3 value
    #
    # @return Number3 value
    def number3
      get_float_value(attribute_values['number3'])
    end

    # Retrieve the Number4 value
    #
    # @return Number4 value
    def number4
      get_float_value(attribute_values['number4'])
    end

    # Retrieve the Number5 value
    #
    # @return Number5 value
    def number5
      get_float_value(attribute_values['number5'])
    end

    # Retrieve the Number6 value
    #
    # @return Number6 value
    def number6
      get_float_value(attribute_values['number6'])
    end

    # Retrieve the Number7 value
    #
    # @return Number7 value
    def number7
      get_float_value(attribute_values['number7'])
    end

    # Retrieve the Number8 value
    #
    # @return Number8 value
    def number8
      get_float_value(attribute_values['number8'])
    end

    # Retrieve the Number9 value
    #
    # @return Number9 value
    def number9
      get_float_value(attribute_values['number9'])
    end

    # Retrieve the Objects value
    #
    # @return Objects value
    def objects
      get_float_value(attribute_values['objects'])
    end

    # Retrieve the Outline Code1 value
    #
    # @return Outline Code1 value
    def outline_code1
      attribute_values['outline_code1']
    end

    # Retrieve the Outline Code10 value
    #
    # @return Outline Code10 value
    def outline_code10
      attribute_values['outline_code10']
    end

    # Retrieve the Outline Code10 Index value
    #
    # @return Outline Code10 Index value
    def outline_code10_index
      get_integer_value(attribute_values['outline_code10_index'])
    end

    # Retrieve the Outline Code1 Index value
    #
    # @return Outline Code1 Index value
    def outline_code1_index
      get_integer_value(attribute_values['outline_code1_index'])
    end

    # Retrieve the Outline Code2 value
    #
    # @return Outline Code2 value
    def outline_code2
      attribute_values['outline_code2']
    end

    # Retrieve the Outline Code2 Index value
    #
    # @return Outline Code2 Index value
    def outline_code2_index
      get_integer_value(attribute_values['outline_code2_index'])
    end

    # Retrieve the Outline Code3 value
    #
    # @return Outline Code3 value
    def outline_code3
      attribute_values['outline_code3']
    end

    # Retrieve the Outline Code3 Index value
    #
    # @return Outline Code3 Index value
    def outline_code3_index
      get_integer_value(attribute_values['outline_code3_index'])
    end

    # Retrieve the Outline Code4 value
    #
    # @return Outline Code4 value
    def outline_code4
      attribute_values['outline_code4']
    end

    # Retrieve the Outline Code4 Index value
    #
    # @return Outline Code4 Index value
    def outline_code4_index
      get_integer_value(attribute_values['outline_code4_index'])
    end

    # Retrieve the Outline Code5 value
    #
    # @return Outline Code5 value
    def outline_code5
      attribute_values['outline_code5']
    end

    # Retrieve the Outline Code5 Index value
    #
    # @return Outline Code5 Index value
    def outline_code5_index
      get_integer_value(attribute_values['outline_code5_index'])
    end

    # Retrieve the Outline Code6 value
    #
    # @return Outline Code6 value
    def outline_code6
      attribute_values['outline_code6']
    end

    # Retrieve the Outline Code6 Index value
    #
    # @return Outline Code6 Index value
    def outline_code6_index
      get_integer_value(attribute_values['outline_code6_index'])
    end

    # Retrieve the Outline Code7 value
    #
    # @return Outline Code7 value
    def outline_code7
      attribute_values['outline_code7']
    end

    # Retrieve the Outline Code7 Index value
    #
    # @return Outline Code7 Index value
    def outline_code7_index
      get_integer_value(attribute_values['outline_code7_index'])
    end

    # Retrieve the Outline Code8 value
    #
    # @return Outline Code8 value
    def outline_code8
      attribute_values['outline_code8']
    end

    # Retrieve the Outline Code8 Index value
    #
    # @return Outline Code8 Index value
    def outline_code8_index
      get_integer_value(attribute_values['outline_code8_index'])
    end

    # Retrieve the Outline Code9 value
    #
    # @return Outline Code9 value
    def outline_code9
      attribute_values['outline_code9']
    end

    # Retrieve the Outline Code9 Index value
    #
    # @return Outline Code9 Index value
    def outline_code9_index
      get_integer_value(attribute_values['outline_code9_index'])
    end

    # Retrieve the Outline Level value
    #
    # @return Outline Level value
    def outline_level
      get_integer_value(attribute_values['outline_level'])
    end

    # Retrieve the Outline Number value
    #
    # @return Outline Number value
    def outline_number
      attribute_values['outline_number']
    end

    # Retrieve the Overallocated value
    #
    # @return Overallocated value
    def overallocated
      get_boolean_value(attribute_values['overallocated'])
    end

    # Retrieve the Overall Percent Complete value
    #
    # @return Overall Percent Complete value
    def overall_percent_complete
      get_float_value(attribute_values['overall_percent_complete'])
    end

    # Retrieve the Overtime Cost value
    #
    # @return Overtime Cost value
    def overtime_cost
      get_float_value(attribute_values['overtime_cost'])
    end

    # Retrieve the Overtime Work value
    #
    # @return Overtime Work value
    def overtime_work
      get_duration_value(attribute_values['overtime_work'])
    end

    # Retrieve the Parent Task Unique ID value
    #
    # @return Parent Task Unique ID value
    def parent_task_unique_id
      get_integer_value(attribute_values['parent_task_unique_id'])
    end

    # Retrieve the Path Driven Successor value
    #
    # @return Path Driven Successor value
    def path_driven_successor
      get_boolean_value(attribute_values['path_driven_successor'])
    end

    # Retrieve the Path Driving Predecessor value
    #
    # @return Path Driving Predecessor value
    def path_driving_predecessor
      get_boolean_value(attribute_values['path_driving_predecessor'])
    end

    # Retrieve the Path Predecessor value
    #
    # @return Path Predecessor value
    def path_predecessor
      get_boolean_value(attribute_values['path_predecessor'])
    end

    # Retrieve the Path Successor value
    #
    # @return Path Successor value
    def path_successor
      get_boolean_value(attribute_values['path_successor'])
    end

    # Retrieve the Peak value
    #
    # @return Peak value
    def peak
      attribute_values['peak']
    end

    # Retrieve the % Complete value
    #
    # @return % Complete value
    def percent_complete
      get_float_value(attribute_values['percent_complete'])
    end

    # Retrieve the Percent Complete Type value
    #
    # @return Percent Complete Type value
    def percent_complete_type
      attribute_values['percent_complete_type']
    end

    # Retrieve the % Work Complete value
    #
    # @return % Work Complete value
    def percent_work_complete
      get_float_value(attribute_values['percent_work_complete'])
    end

    # Retrieve the Phase of Work value
    #
    # @return Phase of Work value
    def phase_of_work
      attribute_values['phase_of_work']
    end

    # Retrieve the Physical % Complete value
    #
    # @return Physical % Complete value
    def physical_percent_complete
      get_float_value(attribute_values['physical_percent_complete'])
    end

    # Retrieve the Placeholder value
    #
    # @return Placeholder value
    def placeholder
      attribute_values['placeholder']
    end

    # Retrieve the Planned Cost value
    #
    # @return Planned Cost value
    def planned_cost
      get_float_value(attribute_values['planned_cost'])
    end

    # Retrieve the Planned Duration value
    #
    # @return Planned Duration value
    def planned_duration
      get_duration_value(attribute_values['planned_duration'])
    end

    # Retrieve the Planned Finish value
    #
    # @return Planned Finish value
    def planned_finish
      get_date_value(attribute_values['planned_finish'])
    end

    # Retrieve the Planned Start value
    #
    # @return Planned Start value
    def planned_start
      get_date_value(attribute_values['planned_start'])
    end

    # Retrieve the Planned Work value
    #
    # @return Planned Work value
    def planned_work
      get_duration_value(attribute_values['planned_work'])
    end

    # Retrieve the Predecessors value
    #
    # @return Predecessors value
    def predecessors
      attribute_values['predecessors']
    end

    # Retrieve the Preleveled Finish value
    #
    # @return Preleveled Finish value
    def preleveled_finish
      get_date_value(attribute_values['preleveled_finish'])
    end

    # Retrieve the Preleveled Start value
    #
    # @return Preleveled Start value
    def preleveled_start
      get_date_value(attribute_values['preleveled_start'])
    end

    # Retrieve the Primary Resource Unique ID value
    #
    # @return Primary Resource Unique ID value
    def primary_resource_id
      get_integer_value(attribute_values['primary_resource_id'])
    end

    # Retrieve the Priority value
    #
    # @return Priority value
    def priority
      get_integer_value(attribute_values['priority'])
    end

    # Retrieve the Project value
    #
    # @return Project value
    def project
      attribute_values['project']
    end

    # Retrieve the Publish value
    #
    # @return Publish value
    def publish
      attribute_values['publish']
    end

    # Retrieve the Recalc Outline Codes value
    #
    # @return Recalc Outline Codes value
    def recalc_outline_codes
      get_boolean_value(attribute_values['recalc_outline_codes'])
    end

    # Retrieve the Recurring value
    #
    # @return Recurring value
    def recurring
      get_boolean_value(attribute_values['recurring'])
    end

    # Retrieve the Recurring Data value
    #
    # @return Recurring Data value
    def recurring_data
      attribute_values['recurring_data']
    end

    # Retrieve the Regular Work value
    #
    # @return Regular Work value
    def regular_work
      get_duration_value(attribute_values['regular_work'])
    end

    # Retrieve the Remaining Cost value
    #
    # @return Remaining Cost value
    def remaining_cost
      get_float_value(attribute_values['remaining_cost'])
    end

    # Retrieve the Remaining Duration value
    #
    # @return Remaining Duration value
    def remaining_duration
      get_duration_value(attribute_values['remaining_duration'])
    end

    # Retrieve the Remaining Early Finish value
    #
    # @return Remaining Early Finish value
    def remaining_early_finish
      get_date_value(attribute_values['remaining_early_finish'])
    end

    # Retrieve the Remaining Early Start value
    #
    # @return Remaining Early Start value
    def remaining_early_start
      get_date_value(attribute_values['remaining_early_start'])
    end

    # Retrieve the Remaining Late Finish value
    #
    # @return Remaining Late Finish value
    def remaining_late_finish
      get_date_value(attribute_values['remaining_late_finish'])
    end

    # Retrieve the Remaining Late Start value
    #
    # @return Remaining Late Start value
    def remaining_late_start
      get_date_value(attribute_values['remaining_late_start'])
    end

    # Retrieve the Remaining Overtime Cost value
    #
    # @return Remaining Overtime Cost value
    def remaining_overtime_cost
      get_float_value(attribute_values['remaining_overtime_cost'])
    end

    # Retrieve the Remaining Overtime Work value
    #
    # @return Remaining Overtime Work value
    def remaining_overtime_work
      get_duration_value(attribute_values['remaining_overtime_work'])
    end

    # Retrieve the Remaining Work value
    #
    # @return Remaining Work value
    def remaining_work
      get_duration_value(attribute_values['remaining_work'])
    end

    # Retrieve the Request/Demand value
    #
    # @return Request/Demand value
    def request_demand
      attribute_values['request_demand']
    end

    # Retrieve the Resource Enterprise Multi Value Code20 value
    #
    # @return Resource Enterprise Multi Value Code20 value
    def resource_enterprise_multi_value_code20
      attribute_values['resource_enterprise_multi_value_code20']
    end

    # Retrieve the Resource Enterprise Multi Value Code21 value
    #
    # @return Resource Enterprise Multi Value Code21 value
    def resource_enterprise_multi_value_code21
      attribute_values['resource_enterprise_multi_value_code21']
    end

    # Retrieve the Resource Enterprise Multi Value Code22 value
    #
    # @return Resource Enterprise Multi Value Code22 value
    def resource_enterprise_multi_value_code22
      attribute_values['resource_enterprise_multi_value_code22']
    end

    # Retrieve the Resource Enterprise Multi Value Code23 value
    #
    # @return Resource Enterprise Multi Value Code23 value
    def resource_enterprise_multi_value_code23
      attribute_values['resource_enterprise_multi_value_code23']
    end

    # Retrieve the Resource Enterprise Multi Value Code24 value
    #
    # @return Resource Enterprise Multi Value Code24 value
    def resource_enterprise_multi_value_code24
      attribute_values['resource_enterprise_multi_value_code24']
    end

    # Retrieve the Resource Enterprise Multi Value Code25 value
    #
    # @return Resource Enterprise Multi Value Code25 value
    def resource_enterprise_multi_value_code25
      attribute_values['resource_enterprise_multi_value_code25']
    end

    # Retrieve the Resource Enterprise Multi Value Code26 value
    #
    # @return Resource Enterprise Multi Value Code26 value
    def resource_enterprise_multi_value_code26
      attribute_values['resource_enterprise_multi_value_code26']
    end

    # Retrieve the Resource Enterprise Multi Value Code27 value
    #
    # @return Resource Enterprise Multi Value Code27 value
    def resource_enterprise_multi_value_code27
      attribute_values['resource_enterprise_multi_value_code27']
    end

    # Retrieve the Resource Enterprise Multi Value Code28 value
    #
    # @return Resource Enterprise Multi Value Code28 value
    def resource_enterprise_multi_value_code28
      attribute_values['resource_enterprise_multi_value_code28']
    end

    # Retrieve the Resource Enterprise Multi Value Code29 value
    #
    # @return Resource Enterprise Multi Value Code29 value
    def resource_enterprise_multi_value_code29
      attribute_values['resource_enterprise_multi_value_code29']
    end

    # Retrieve the Resource Enterprise Outline Code1 value
    #
    # @return Resource Enterprise Outline Code1 value
    def resource_enterprise_outline_code1
      attribute_values['resource_enterprise_outline_code1']
    end

    # Retrieve the Resource Enterprise Outline Code10 value
    #
    # @return Resource Enterprise Outline Code10 value
    def resource_enterprise_outline_code10
      attribute_values['resource_enterprise_outline_code10']
    end

    # Retrieve the Resource Enterprise Outline Code11 value
    #
    # @return Resource Enterprise Outline Code11 value
    def resource_enterprise_outline_code11
      attribute_values['resource_enterprise_outline_code11']
    end

    # Retrieve the Resource Enterprise Outline Code12 value
    #
    # @return Resource Enterprise Outline Code12 value
    def resource_enterprise_outline_code12
      attribute_values['resource_enterprise_outline_code12']
    end

    # Retrieve the Resource Enterprise Outline Code13 value
    #
    # @return Resource Enterprise Outline Code13 value
    def resource_enterprise_outline_code13
      attribute_values['resource_enterprise_outline_code13']
    end

    # Retrieve the Resource Enterprise Outline Code14 value
    #
    # @return Resource Enterprise Outline Code14 value
    def resource_enterprise_outline_code14
      attribute_values['resource_enterprise_outline_code14']
    end

    # Retrieve the Resource Enterprise Outline Code15 value
    #
    # @return Resource Enterprise Outline Code15 value
    def resource_enterprise_outline_code15
      attribute_values['resource_enterprise_outline_code15']
    end

    # Retrieve the Resource Enterprise Outline Code16 value
    #
    # @return Resource Enterprise Outline Code16 value
    def resource_enterprise_outline_code16
      attribute_values['resource_enterprise_outline_code16']
    end

    # Retrieve the Resource Enterprise Outline Code17 value
    #
    # @return Resource Enterprise Outline Code17 value
    def resource_enterprise_outline_code17
      attribute_values['resource_enterprise_outline_code17']
    end

    # Retrieve the Resource Enterprise Outline Code18 value
    #
    # @return Resource Enterprise Outline Code18 value
    def resource_enterprise_outline_code18
      attribute_values['resource_enterprise_outline_code18']
    end

    # Retrieve the Resource Enterprise Outline Code19 value
    #
    # @return Resource Enterprise Outline Code19 value
    def resource_enterprise_outline_code19
      attribute_values['resource_enterprise_outline_code19']
    end

    # Retrieve the Resource Enterprise Outline Code2 value
    #
    # @return Resource Enterprise Outline Code2 value
    def resource_enterprise_outline_code2
      attribute_values['resource_enterprise_outline_code2']
    end

    # Retrieve the Resource Enterprise Outline Code20 value
    #
    # @return Resource Enterprise Outline Code20 value
    def resource_enterprise_outline_code20
      attribute_values['resource_enterprise_outline_code20']
    end

    # Retrieve the Resource Enterprise Outline Code21 value
    #
    # @return Resource Enterprise Outline Code21 value
    def resource_enterprise_outline_code21
      attribute_values['resource_enterprise_outline_code21']
    end

    # Retrieve the Resource Enterprise Outline Code22 value
    #
    # @return Resource Enterprise Outline Code22 value
    def resource_enterprise_outline_code22
      attribute_values['resource_enterprise_outline_code22']
    end

    # Retrieve the Resource Enterprise Outline Code23 value
    #
    # @return Resource Enterprise Outline Code23 value
    def resource_enterprise_outline_code23
      attribute_values['resource_enterprise_outline_code23']
    end

    # Retrieve the Resource Enterprise Outline Code24 value
    #
    # @return Resource Enterprise Outline Code24 value
    def resource_enterprise_outline_code24
      attribute_values['resource_enterprise_outline_code24']
    end

    # Retrieve the Resource Enterprise Outline Code25 value
    #
    # @return Resource Enterprise Outline Code25 value
    def resource_enterprise_outline_code25
      attribute_values['resource_enterprise_outline_code25']
    end

    # Retrieve the Resource Enterprise Outline Code26 value
    #
    # @return Resource Enterprise Outline Code26 value
    def resource_enterprise_outline_code26
      attribute_values['resource_enterprise_outline_code26']
    end

    # Retrieve the Resource Enterprise Outline Code27 value
    #
    # @return Resource Enterprise Outline Code27 value
    def resource_enterprise_outline_code27
      attribute_values['resource_enterprise_outline_code27']
    end

    # Retrieve the Resource Enterprise Outline Code28 value
    #
    # @return Resource Enterprise Outline Code28 value
    def resource_enterprise_outline_code28
      attribute_values['resource_enterprise_outline_code28']
    end

    # Retrieve the Resource Enterprise Outline Code29 value
    #
    # @return Resource Enterprise Outline Code29 value
    def resource_enterprise_outline_code29
      attribute_values['resource_enterprise_outline_code29']
    end

    # Retrieve the Resource Enterprise Outline Code3 value
    #
    # @return Resource Enterprise Outline Code3 value
    def resource_enterprise_outline_code3
      attribute_values['resource_enterprise_outline_code3']
    end

    # Retrieve the Resource Enterprise Outline Code4 value
    #
    # @return Resource Enterprise Outline Code4 value
    def resource_enterprise_outline_code4
      attribute_values['resource_enterprise_outline_code4']
    end

    # Retrieve the Resource Enterprise Outline Code5 value
    #
    # @return Resource Enterprise Outline Code5 value
    def resource_enterprise_outline_code5
      attribute_values['resource_enterprise_outline_code5']
    end

    # Retrieve the Resource Enterprise Outline Code6 value
    #
    # @return Resource Enterprise Outline Code6 value
    def resource_enterprise_outline_code6
      attribute_values['resource_enterprise_outline_code6']
    end

    # Retrieve the Resource Enterprise Outline Code7 value
    #
    # @return Resource Enterprise Outline Code7 value
    def resource_enterprise_outline_code7
      attribute_values['resource_enterprise_outline_code7']
    end

    # Retrieve the Resource Enterprise Outline Code8 value
    #
    # @return Resource Enterprise Outline Code8 value
    def resource_enterprise_outline_code8
      attribute_values['resource_enterprise_outline_code8']
    end

    # Retrieve the Resource Enterprise Outline Code9 value
    #
    # @return Resource Enterprise Outline Code9 value
    def resource_enterprise_outline_code9
      attribute_values['resource_enterprise_outline_code9']
    end

    # Retrieve the Resource Enterprise Rbs value
    #
    # @return Resource Enterprise Rbs value
    def resource_enterprise_rbs
      attribute_values['resource_enterprise_rbs']
    end

    # Retrieve the Resource Group value
    #
    # @return Resource Group value
    def resource_group
      attribute_values['resource_group']
    end

    # Retrieve the Resource Initials value
    #
    # @return Resource Initials value
    def resource_initials
      attribute_values['resource_initials']
    end

    # Retrieve the Resource Names value
    #
    # @return Resource Names value
    def resource_names
      attribute_values['resource_names']
    end

    # Retrieve the Resource Phonetics value
    #
    # @return Resource Phonetics value
    def resource_phonetics
      attribute_values['resource_phonetics']
    end

    # Retrieve the Resource Type value
    #
    # @return Resource Type value
    def resource_type
      attribute_values['resource_type']
    end

    # Retrieve the Response Pending value
    #
    # @return Response Pending value
    def response_pending
      get_boolean_value(attribute_values['response_pending'])
    end

    # Retrieve the Responsibility Code value
    #
    # @return Responsibility Code value
    def responsibility_code
      attribute_values['responsibility_code']
    end

    # Retrieve the Resume value
    #
    # @return Resume value
    def resume
      get_date_value(attribute_values['resume'])
    end

    # Retrieve the Resume No Earlier Than value
    #
    # @return Resume No Earlier Than value
    def resume_no_earlier_than
      get_date_value(attribute_values['resume_no_earlier_than'])
    end

    # Retrieve the Rollup value
    #
    # @return Rollup value
    def rollup
      get_boolean_value(attribute_values['rollup'])
    end

    # Retrieve the Scheduled Duration value
    #
    # @return Scheduled Duration value
    def scheduled_duration
      get_duration_value(attribute_values['scheduled_duration'])
    end

    # Retrieve the Scheduled Finish value
    #
    # @return Scheduled Finish value
    def scheduled_finish
      get_date_value(attribute_values['scheduled_finish'])
    end

    # Retrieve the Scheduled Start value
    #
    # @return Scheduled Start value
    def scheduled_start
      get_date_value(attribute_values['scheduled_start'])
    end

    # Retrieve the Secondary Constraint Date value
    #
    # @return Secondary Constraint Date value
    def secondary_constraint_date
      get_date_value(attribute_values['secondary_constraint_date'])
    end

    # Retrieve the Secondary Constraint Type value
    #
    # @return Secondary Constraint Type value
    def secondary_constraint_type
      attribute_values['secondary_constraint_type']
    end

    # Retrieve the Section value
    #
    # @return Section value
    def section
      attribute_values['section']
    end

    # Retrieve the Show On Board value
    #
    # @return Show On Board value
    def show_on_board
      attribute_values['show_on_board']
    end

    # Retrieve the SPI value
    #
    # @return SPI value
    def spi
      get_float_value(attribute_values['spi'])
    end

    # Retrieve the Splits value
    #
    # @return Splits value
    def splits
      attribute_values['splits']
    end

    # Retrieve the Sprint value
    #
    # @return Sprint value
    def sprint
      attribute_values['sprint']
    end

    # Retrieve the Start value
    #
    # @return Start value
    def start
      get_date_value(attribute_values['start'])
    end

    # Retrieve the Start1 value
    #
    # @return Start1 value
    def start1
      get_date_value(attribute_values['start1'])
    end

    # Retrieve the Start10 value
    #
    # @return Start10 value
    def start10
      get_date_value(attribute_values['start10'])
    end

    # Retrieve the Start2 value
    #
    # @return Start2 value
    def start2
      get_date_value(attribute_values['start2'])
    end

    # Retrieve the Start3 value
    #
    # @return Start3 value
    def start3
      get_date_value(attribute_values['start3'])
    end

    # Retrieve the Start4 value
    #
    # @return Start4 value
    def start4
      get_date_value(attribute_values['start4'])
    end

    # Retrieve the Start5 value
    #
    # @return Start5 value
    def start5
      get_date_value(attribute_values['start5'])
    end

    # Retrieve the Start6 value
    #
    # @return Start6 value
    def start6
      get_date_value(attribute_values['start6'])
    end

    # Retrieve the Start7 value
    #
    # @return Start7 value
    def start7
      get_date_value(attribute_values['start7'])
    end

    # Retrieve the Start8 value
    #
    # @return Start8 value
    def start8
      get_date_value(attribute_values['start8'])
    end

    # Retrieve the Start9 value
    #
    # @return Start9 value
    def start9
      get_date_value(attribute_values['start9'])
    end

    # Retrieve the Start Slack value
    #
    # @return Start Slack value
    def start_slack
      get_duration_value(attribute_values['start_slack'])
    end

    # Retrieve the Start value
    #
    # @return Start value
    def start_text
      attribute_values['start_text']
    end

    # Retrieve the Start Variance value
    #
    # @return Start Variance value
    def start_variance
      get_duration_value(attribute_values['start_variance'])
    end

    # Retrieve the Status value
    #
    # @return Status value
    def status
      attribute_values['status']
    end

    # Retrieve the Status Indicator value
    #
    # @return Status Indicator value
    def status_indicator
      attribute_values['status_indicator']
    end

    # Retrieve the Status Manager value
    #
    # @return Status Manager value
    def status_manager
      attribute_values['status_manager']
    end

    # Retrieve the Stop value
    #
    # @return Stop value
    def stop
      get_date_value(attribute_values['stop'])
    end

    # Retrieve the Stored Material value
    #
    # @return Stored Material value
    def stored_material
      get_float_value(attribute_values['stored_material'])
    end

    # Retrieve the Subproject value
    #
    # @return Subproject value
    def subproject
      attribute_values['subproject']
    end

    # Retrieve the Subproject File value
    #
    # @return Subproject File value
    def subproject_file
      attribute_values['subproject_file']
    end

    # Retrieve the Subproject Read Only value
    #
    # @return Subproject Read Only value
    def subproject_read_only
      get_boolean_value(attribute_values['subproject_read_only'])
    end

    # Retrieve the Subproject Tasks Unique ID Offset value
    #
    # @return Subproject Tasks Unique ID Offset value
    def subproject_tasks_uniqueid_offset
      get_integer_value(attribute_values['subproject_tasks_uniqueid_offset'])
    end

    # Retrieve the Subproject Task ID value
    #
    # @return Subproject Task ID value
    def subproject_task_id
      get_integer_value(attribute_values['subproject_task_id'])
    end

    # Retrieve the Subproject Unique Task ID value
    #
    # @return Subproject Unique Task ID value
    def subproject_unique_task_id
      get_integer_value(attribute_values['subproject_unique_task_id'])
    end

    # Retrieve the Successors value
    #
    # @return Successors value
    def successors
      attribute_values['successors']
    end

    # Retrieve the Summary value
    #
    # @return Summary value
    def summary
      get_boolean_value(attribute_values['summary'])
    end

    # Retrieve the Summary Progress value
    #
    # @return Summary Progress value
    def summary_progress
      get_date_value(attribute_values['summary_progress'])
    end

    # Retrieve the Suspend Date value
    #
    # @return Suspend Date value
    def suspend_date
      get_date_value(attribute_values['suspend_date'])
    end

    # Retrieve the SV value
    #
    # @return SV value
    def sv
      get_float_value(attribute_values['sv'])
    end

    # Retrieve the SV% value
    #
    # @return SV% value
    def svpercent
      get_float_value(attribute_values['svpercent'])
    end

    # Retrieve the Task Calendar value
    #
    # @return Task Calendar value
    def task_calendar
      attribute_values['task_calendar']
    end

    # Retrieve the Task Calendar GUID value
    #
    # @return Task Calendar GUID value
    def task_calendar_guid
      attribute_values['task_calendar_guid']
    end

    # Retrieve the Task Mode value
    #
    # @return Task Mode value
    def task_mode
      get_boolean_value(attribute_values['task_mode'])
    end

    # Retrieve the Task Summary value
    #
    # @return Task Summary value
    def task_summary
      attribute_values['task_summary']
    end

    # Retrieve the TCPI value
    #
    # @return TCPI value
    def tcpi
      get_float_value(attribute_values['tcpi'])
    end

    # Retrieve the TeamStatus Pending value
    #
    # @return TeamStatus Pending value
    def teamstatus_pending
      get_boolean_value(attribute_values['teamstatus_pending'])
    end

    # Retrieve the Text1 value
    #
    # @return Text1 value
    def text1
      attribute_values['text1']
    end

    # Retrieve the Text10 value
    #
    # @return Text10 value
    def text10
      attribute_values['text10']
    end

    # Retrieve the Text11 value
    #
    # @return Text11 value
    def text11
      attribute_values['text11']
    end

    # Retrieve the Text12 value
    #
    # @return Text12 value
    def text12
      attribute_values['text12']
    end

    # Retrieve the Text13 value
    #
    # @return Text13 value
    def text13
      attribute_values['text13']
    end

    # Retrieve the Text14 value
    #
    # @return Text14 value
    def text14
      attribute_values['text14']
    end

    # Retrieve the Text15 value
    #
    # @return Text15 value
    def text15
      attribute_values['text15']
    end

    # Retrieve the Text16 value
    #
    # @return Text16 value
    def text16
      attribute_values['text16']
    end

    # Retrieve the Text17 value
    #
    # @return Text17 value
    def text17
      attribute_values['text17']
    end

    # Retrieve the Text18 value
    #
    # @return Text18 value
    def text18
      attribute_values['text18']
    end

    # Retrieve the Text19 value
    #
    # @return Text19 value
    def text19
      attribute_values['text19']
    end

    # Retrieve the Text2 value
    #
    # @return Text2 value
    def text2
      attribute_values['text2']
    end

    # Retrieve the Text20 value
    #
    # @return Text20 value
    def text20
      attribute_values['text20']
    end

    # Retrieve the Text21 value
    #
    # @return Text21 value
    def text21
      attribute_values['text21']
    end

    # Retrieve the Text22 value
    #
    # @return Text22 value
    def text22
      attribute_values['text22']
    end

    # Retrieve the Text23 value
    #
    # @return Text23 value
    def text23
      attribute_values['text23']
    end

    # Retrieve the Text24 value
    #
    # @return Text24 value
    def text24
      attribute_values['text24']
    end

    # Retrieve the Text25 value
    #
    # @return Text25 value
    def text25
      attribute_values['text25']
    end

    # Retrieve the Text26 value
    #
    # @return Text26 value
    def text26
      attribute_values['text26']
    end

    # Retrieve the Text27 value
    #
    # @return Text27 value
    def text27
      attribute_values['text27']
    end

    # Retrieve the Text28 value
    #
    # @return Text28 value
    def text28
      attribute_values['text28']
    end

    # Retrieve the Text29 value
    #
    # @return Text29 value
    def text29
      attribute_values['text29']
    end

    # Retrieve the Text3 value
    #
    # @return Text3 value
    def text3
      attribute_values['text3']
    end

    # Retrieve the Text30 value
    #
    # @return Text30 value
    def text30
      attribute_values['text30']
    end

    # Retrieve the Text4 value
    #
    # @return Text4 value
    def text4
      attribute_values['text4']
    end

    # Retrieve the Text5 value
    #
    # @return Text5 value
    def text5
      attribute_values['text5']
    end

    # Retrieve the Text6 value
    #
    # @return Text6 value
    def text6
      attribute_values['text6']
    end

    # Retrieve the Text7 value
    #
    # @return Text7 value
    def text7
      attribute_values['text7']
    end

    # Retrieve the Text8 value
    #
    # @return Text8 value
    def text8
      attribute_values['text8']
    end

    # Retrieve the Text9 value
    #
    # @return Text9 value
    def text9
      attribute_values['text9']
    end

    # Retrieve the Total Slack value
    #
    # @return Total Slack value
    def total_slack
      get_duration_value(attribute_values['total_slack'])
    end

    # Retrieve the Type value
    #
    # @return Type value
    def type
      attribute_values['type']
    end

    # Retrieve the <Unavailable> value
    #
    # @return <Unavailable> value
    def unavailable
      attribute_values['unavailable']
    end

    # Retrieve the Unique ID value
    #
    # @return Unique ID value
    def unique_id
      get_integer_value(attribute_values['unique_id'])
    end

    # Retrieve the Unique ID Predecessors value
    #
    # @return Unique ID Predecessors value
    def unique_id_predecessors
      attribute_values['unique_id_predecessors']
    end

    # Retrieve the Unique ID Successors value
    #
    # @return Unique ID Successors value
    def unique_id_successors
      attribute_values['unique_id_successors']
    end

    # Retrieve the Update Needed value
    #
    # @return Update Needed value
    def update_needed
      get_boolean_value(attribute_values['update_needed'])
    end

    # Retrieve the VAC value
    #
    # @return VAC value
    def vac
      get_float_value(attribute_values['vac'])
    end

    # Retrieve the Warning value
    #
    # @return Warning value
    def warning
      attribute_values['warning']
    end

    # Retrieve the WBS value
    #
    # @return WBS value
    def wbs
      attribute_values['wbs']
    end

    # Retrieve the WBS Predecessors value
    #
    # @return WBS Predecessors value
    def wbs_predecessors
      attribute_values['wbs_predecessors']
    end

    # Retrieve the WBS Successors value
    #
    # @return WBS Successors value
    def wbs_successors
      attribute_values['wbs_successors']
    end

    # Retrieve the Work value
    #
    # @return Work value
    def work
      get_duration_value(attribute_values['work'])
    end

    # Retrieve the Workers per Day value
    #
    # @return Workers per Day value
    def workers_per_day
      get_integer_value(attribute_values['workers_per_day'])
    end

    # Retrieve the Work Area Code value
    #
    # @return Work Area Code value
    def work_area_code
      attribute_values['work_area_code']
    end

    # Retrieve the Work Contour value
    #
    # @return Work Contour value
    def work_contour
      attribute_values['work_contour']
    end

    # Retrieve the Work Variance value
    #
    # @return Work Variance value
    def work_variance
      get_duration_value(attribute_values['work_variance'])
    end
  end
end
