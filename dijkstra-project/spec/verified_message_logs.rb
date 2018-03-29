def verified_message_logs
  [{:name=>:initialization,
    :result_map=>{},
    :fringe=>{"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0}}},
   {:name=>:extraction,
    :result_map=>{"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0}},
    :fringe=>{},
    :best_entry=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0}},
   {:name=>:edge_consideration,
    :result_map=>{"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0}},
    :fringe=>
     {"DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7}},
    :new_entry=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
    :action=>:insert},
   {:name=>:edge_consideration,
    :result_map=>{"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0}},
    :fringe=>
     {"DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1}},
    :new_entry=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
    :action=>:insert},
   {:name=>:edge_consideration,
    :result_map=>{"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0}},
    :fringe=>
     {"DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :new_entry=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
    :action=>:insert},
   {:name=>:update_completion,
    :result_map=>{"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0}},
    :fringe=>
     {"DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :best_entry=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0}},
   {:name=>:extraction,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7}},
    :fringe=>
     {"LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :best_entry=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7}},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7}},
    :fringe=>
     {"LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :new_entry=>{:vertex=>"ATL", :last_edge=>"ATL_DEN", :cost_to_vertex=>7.4},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7}},
    :fringe=>
     {"LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"DEN_CLT", :cost_to_vertex=>15.5}},
    :new_entry=>{:vertex=>"CLT", :last_edge=>"DEN_CLT", :cost_to_vertex=>15.5},
    :action=>:insert},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7}},
    :fringe=>
     {"LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"DEN_CLT", :cost_to_vertex=>15.5}},
    :new_entry=>{:vertex=>"LAX", :last_edge=>"DEN_LAX", :cost_to_vertex=>7.5},
    :action=>:old_entry_better},
   {:name=>:update_completion,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7}},
    :fringe=>
     {"LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"DEN_CLT", :cost_to_vertex=>15.5}},
    :best_entry=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7}},
   {:name=>:extraction,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"DEN_CLT", :cost_to_vertex=>15.5}},
    :best_entry=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1}},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"DEN_CLT", :cost_to_vertex=>15.5}},
    :new_entry=>{:vertex=>"ATL", :last_edge=>"ATL_LAX", :cost_to_vertex=>12.2},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"DEN_CLT", :cost_to_vertex=>15.5}},
    :new_entry=>
     {:vertex=>"DEN", :last_edge=>"DEN_LAX", :cost_to_vertex=>9.899999999999999},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0}},
    :new_entry=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
    :action=>:update},
   {:name=>:update_completion,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0}},
    :best_entry=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1}},
   {:name=>:extraction,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :best_entry=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0}},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :new_entry=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
    :action=>:insert},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :new_entry=>{:vertex=>"DEN", :last_edge=>"DEN_CLT", :cost_to_vertex=>20.8},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :new_entry=>{:vertex=>"LAX", :last_edge=>"LAX_CLT", :cost_to_vertex=>11.9},
    :action=>:result_map_has_vertex},
   {:name=>:update_completion,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0}},
    :fringe=>
     {"DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :best_entry=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0}},
   {:name=>:extraction,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :best_entry=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :new_entry=>{:vertex=>"ATL", :last_edge=>"DFW_ATL", :cost_to_vertex=>19.8},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
    :new_entry=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
    :action=>:insert},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2}},
    :new_entry=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
    :action=>:insert},
   {:name=>:update_completion,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2}},
    :best_entry=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9}},
   {:name=>:extraction,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
    :best_entry=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2}},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
    :new_entry=>{:vertex=>"LAS", :last_edge=>"LAS_SEA", :cost_to_vertex=>16.8},
    :action=>:old_entry_better},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
    :new_entry=>{:vertex=>"DFW", :last_edge=>"SEA_DFW", :cost_to_vertex=>16.5},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998}},
    :new_entry=>
     {:vertex=>"SFO",
      :last_edge=>"SFO_SEA",
      :cost_to_vertex=>16.599999999999998},
    :action=>:insert},
   {:name=>:update_completion,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998}},
    :best_entry=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2}},
   {:name=>:extraction,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998}},
    :best_entry=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998}},
    :new_entry=>{:vertex=>"DFW", :last_edge=>"DFW_LAS", :cost_to_vertex=>17.1},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :new_entry=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4},
    :action=>:insert},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :new_entry=>{:vertex=>"SEA", :last_edge=>"LAS_SEA", :cost_to_vertex=>17.1},
    :action=>:result_map_has_vertex},
   {:name=>:update_completion,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
    :fringe=>
     {"ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :best_entry=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5}},
   {:name=>:extraction,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :fringe=>
     {"SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :best_entry=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :fringe=>
     {"SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :new_entry=>{:vertex=>"CLT", :last_edge=>"CLT_ORD", :cost_to_vertex=>18.4},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :fringe=>
     {"SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :new_entry=>{:vertex=>"JFK", :last_edge=>"ORD_JFK", :cost_to_vertex=>20.5},
    :action=>:old_entry_better},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :fringe=>
     {"SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :new_entry=>
     {:vertex=>"SFO",
      :last_edge=>"ORD_SFO",
      :cost_to_vertex=>17.799999999999997},
    :action=>:old_entry_better},
   {:name=>:update_completion,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
    :fringe=>
     {"SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :best_entry=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7}},
   {:name=>:extraction,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998}},
    :fringe=>
     {"JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :best_entry=>
     {:vertex=>"SFO",
      :last_edge=>"SFO_SEA",
      :cost_to_vertex=>16.599999999999998}},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998}},
    :fringe=>
     {"JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :new_entry=>
     {:vertex=>"JFK",
      :last_edge=>"JFK_SFO",
      :cost_to_vertex=>21.699999999999996},
    :action=>:old_entry_better},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998}},
    :fringe=>
     {"JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :new_entry=>
     {:vertex=>"ORD",
      :last_edge=>"ORD_SFO",
      :cost_to_vertex=>20.699999999999996},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998}},
    :fringe=>
     {"JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :new_entry=>
     {:vertex=>"SEA",
      :last_edge=>"SFO_SEA",
      :cost_to_vertex=>19.999999999999996},
    :action=>:result_map_has_vertex},
   {:name=>:update_completion,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998}},
    :fringe=>
     {"JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :best_entry=>
     {:vertex=>"SFO",
      :last_edge=>"SFO_SEA",
      :cost_to_vertex=>16.599999999999998}},
   {:name=>:extraction,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :fringe=>{},
    :best_entry=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :fringe=>{},
    :new_entry=>
     {:vertex=>"LAS",
      :last_edge=>"JFK_LAS",
      :cost_to_vertex=>21.299999999999997},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :fringe=>{},
    :new_entry=>{:vertex=>"SFO", :last_edge=>"JFK_SFO", :cost_to_vertex=>22.5},
    :action=>:result_map_has_vertex},
   {:name=>:edge_consideration,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :fringe=>{},
    :new_entry=>{:vertex=>"ORD", :last_edge=>"ORD_JFK", :cost_to_vertex=>24.2},
    :action=>:result_map_has_vertex},
   {:name=>:update_completion,
    :result_map=>
     {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
      "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
      "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
      "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
      "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
      "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
      "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
      "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
      "SFO"=>
       {:vertex=>"SFO",
        :last_edge=>"SFO_SEA",
        :cost_to_vertex=>16.599999999999998},
      "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
    :fringe=>{},
    :best_entry=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}},
   {"ATL"=>{:vertex=>"ATL", :last_edge=>nil, :cost_to_vertex=>0},
    "DEN"=>{:vertex=>"DEN", :last_edge=>"ATL_DEN", :cost_to_vertex=>3.7},
    "LAX"=>{:vertex=>"LAX", :last_edge=>"ATL_LAX", :cost_to_vertex=>6.1},
    "CLT"=>{:vertex=>"CLT", :last_edge=>"LAX_CLT", :cost_to_vertex=>9.0},
    "DFW"=>{:vertex=>"DFW", :last_edge=>"DFW_ATL", :cost_to_vertex=>9.9},
    "SEA"=>{:vertex=>"SEA", :last_edge=>"SEA_DFW", :cost_to_vertex=>13.2},
    "LAS"=>{:vertex=>"LAS", :last_edge=>"DFW_LAS", :cost_to_vertex=>13.5},
    "ORD"=>{:vertex=>"ORD", :last_edge=>"CLT_ORD", :cost_to_vertex=>13.7},
    "SFO"=>
     {:vertex=>"SFO",
      :last_edge=>"SFO_SEA",
      :cost_to_vertex=>16.599999999999998},
    "JFK"=>{:vertex=>"JFK", :last_edge=>"JFK_LAS", :cost_to_vertex=>17.4}}
  ]
end
