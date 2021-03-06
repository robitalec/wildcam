# wildcam 0.8.2.9000 (2019-06-10)
* changed `select_ct`'s argument 'sub' to accept an expression, directly passed to `data.table`'s i without a join step. 

# wildcam 0.8.1.9000 (2019-06-08)
* improved `select_ct` checks and tests


# wildcam 0.8.0.9000 (2019-06-01) 

* added function `binary_layer` for making binary raster layers with equi and non-equi functions (e.g. =, >, <=, %in%) [!11](https://gitlab.com/robit.a/wildcam/merge_requests/11).

* rename `scale_roi` to `scale_layer` [#22](https://gitlab.com/robit.a/wildcam/issues/22). 

* rename `strat_sample` to `sample_ct` [#21](https://gitlab.com/robit.a/wildcam/issues/21) and [!17](https://gitlab.com/robit.a/wildcam/merge_requests/17). 


# wildcam 0.7.0.9000 (2019-05-30) 

* rename `dist_to` to `eval_dist` and add attributes like other `eval_*` [#19](https://gitlab.com/robit.a/wildcam/issues/19) and [!12](https://gitlab.com/robit.a/wildcam/merge_requests/12). 

* add basic `data.table` data (DT)

* fix preprocessing and passing to methods with `function_` for `eval_pt`, `eval_dist` (skeleton), `eval_buffer` and `grid_ct`  [!15](https://gitlab.com/robit.a/wildcam/merge_requests/15) 

* rename `make_grid` to `grid_ct` [!14](https://gitlab.com/robit.a/wildcam/merge_requests/14) 

* return focal identifier with `make_grid`. 

* fix 'camID' returned by sf method incorrectly. 

* fix lack of error when attributes are null [#20](https://gitlab.com/robit.a/wildcam/issues/20). 

* return 'camID' with `make_grid` [!10](https://gitlab.com/robit.a/wildcam/merge_requests/10). 

# wildcam 0.6.0.9000 (2019-02-26) 

* Add `select_ct` for selecting camera trap locations from 'x' [!9](https://gitlab.com/robit.a/wildcam/merge_requests/9). 

* Add 'n' argument to `make_grid` to specify a grid size *instead of* 'case' [!8](https://gitlab.com/robit.a/wildcam/merge_requests/8). 

* Add 'type' argument to `strat_sample` for regular and random sampling. [!6](https://gitlab.com/robit.a/wildcam/merge_requests/6). 

# wildcam 0.5.0.9000 (2019-02-21) 

* Add `scale_roi` for rescaling rasters in a region of interest  [!5](https://gitlab.com/robit.a/wildcam/merge_requests/5). 

* Add "dem" example data. 

# wildcam 0.4.0.9000 (2019-02-21) 

* Add `eval_pt` and `eval_buffer` for evaluating and characterizing camera trap locations [!4](https://gitlab.com/robit.a/wildcam/merge_requests/4). 

* Add "wetland" and "lc" example data. 

# wildcam 0.3.0.9000 (2019-02-15) 

* Add `make_grid` for making camera trap grids around focal cameras [!3](https://gitlab.com/robit.a/wildcam/merge_requests/3). 

# wildcam 0.2.0.9000 (2019-02-12) 

*Add `dist_to` for distance to calculations [!2](https://gitlab.com/robit.a/wildcam/merge_requests/2). 

* Add "water" example data. 

# wildcam 0.1.0.9000 (2019-02-11) 

* Add `strat_sample` for stratified polygon sampling [!1](https://gitlab.com/robit.a/wildcam/merge_requests/1). 

* Add "points" and "densitygrid" example data. 

