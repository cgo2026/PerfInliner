°ý
³


8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring "serve*2.17.02v2.17.0-rc1-2-gad6d8cc177d8­¯
[
action_call_argument_setupPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
T
action_call_penaltyPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
`
action_callee_basic_block_countPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
l
+action_callee_conditionally_executed_blocksPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
T
action_callee_usersPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
`
action_caller_basic_block_countPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
l
+action_caller_conditionally_executed_blocksPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
T
action_caller_usersPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
U
action_callsite_costPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
W
action_callsite_heightPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
\
action_case_cluster_penaltyPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
W
action_cold_cc_penaltyPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
U
action_constant_argsPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
`
action_constant_offset_ptr_argsPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
U
action_cost_estimatePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
S
action_dead_blocksPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
P
action_discountPlaceholder*
_output_shapes
: *
dtype0*
shape: 
R
action_edge_countPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
]
action_indirect_call_penaltyPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
X
action_inlining_defaultPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
Z
action_is_multiple_blocksPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
Z
action_jump_table_penaltyPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
a
 action_last_call_to_static_bonusPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
X
action_load_eliminationPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
_
action_load_relative_intrinsicPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
^
action_lowered_call_arg_setupPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
c
"action_nested_inline_cost_estimatePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
V
action_nested_inlinesPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
R
action_node_countPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
W
action_nr_ctant_paramsPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
Q
action_num_loopsPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
N
action_rewardPlaceholder*
_output_shapes
: *
dtype0*
shape: 
_
action_simplified_instructionsPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
S
action_sroa_lossesPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
T
action_sroa_savingsPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
Q
action_step_typePlaceholder*
_output_shapes
: *
dtype0*
shape: 
V
action_switch_penaltyPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
Q
action_thresholdPlaceholder*
_output_shapes
: *
dtype0	*
shape: 
h
'action_unsimplified_common_instructionsPlaceholder*
_output_shapes
: *
dtype0	*
shape: 


PartitionedCallPartitionedCallaction_call_argument_setupaction_call_penaltyaction_callee_basic_block_count+action_callee_conditionally_executed_blocksaction_callee_usersaction_caller_basic_block_count+action_caller_conditionally_executed_blocksaction_caller_usersaction_callsite_costaction_callsite_heightaction_case_cluster_penaltyaction_cold_cc_penaltyaction_constant_argsaction_constant_offset_ptr_argsaction_cost_estimateaction_dead_blocksaction_discountaction_edge_countaction_indirect_call_penaltyaction_inlining_defaultaction_is_multiple_blocksaction_jump_table_penalty action_last_call_to_static_bonusaction_load_eliminationaction_load_relative_intrinsicaction_lowered_call_arg_setup"action_nested_inline_cost_estimateaction_nested_inlinesaction_node_countaction_nr_ctant_paramsaction_num_loopsaction_rewardaction_simplified_instructionsaction_sroa_lossesaction_sroa_savingsaction_step_typeaction_switch_penaltyaction_threshold'action_unsimplified_common_instructions*2
Tin+
)2'																																				*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_signature_wrapper_87

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Z
valueQBO BI


action

signatures* 

trace_0* 


action* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCallStatefulPartitionedCallsaver_filenameConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *%
f R
__inference__traced_save_190

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_restore_199ý
Û 
«
__inference_action_130
caller_basic_block_count	(
$caller_conditionally_executed_blocks	
caller_users	
callee_basic_block_count	(
$callee_conditionally_executed_blocks	
callee_users	
nr_ctant_params	

node_count	

edge_count	
callsite_height	
cost_estimate	
inlining_default	
sroa_savings	
sroa_losses	
load_elimination	
call_penalty	
call_argument_setup	
load_relative_intrinsic	
lowered_call_arg_setup	
indirect_call_penalty	
jump_table_penalty	
case_cluster_penalty	
switch_penalty	$
 unsimplified_common_instructions	
	num_loops	
dead_blocks	
simplified_instructions	
constant_args	
constant_offset_ptr_args	
callsite_cost	
cold_cc_penalty	
last_call_to_static_bonus	
is_multiple_blocks	
nested_inlines	
nested_inline_cost_estimate	
	threshold	
discount

reward
	step_type
identity	G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 RE
IdentityIdentityConst:output:0*
T0	*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :A&=

_output_shapes
: 
#
_user_specified_name	step_type:>%:

_output_shapes
: 
 
_user_specified_namereward:@$<

_output_shapes
: 
"
_user_specified_name
discount:A#=

_output_shapes
: 
#
_user_specified_name	threshold:S"O

_output_shapes
: 
5
_user_specified_namenested_inline_cost_estimate:F!B

_output_shapes
: 
(
_user_specified_namenested_inlines:J F

_output_shapes
: 
,
_user_specified_nameis_multiple_blocks:QM

_output_shapes
: 
3
_user_specified_namelast_call_to_static_bonus:GC

_output_shapes
: 
)
_user_specified_namecold_cc_penalty:EA

_output_shapes
: 
'
_user_specified_namecallsite_cost:PL

_output_shapes
: 
2
_user_specified_nameconstant_offset_ptr_args:EA

_output_shapes
: 
'
_user_specified_nameconstant_args:OK

_output_shapes
: 
1
_user_specified_namesimplified_instructions:C?

_output_shapes
: 
%
_user_specified_namedead_blocks:A=

_output_shapes
: 
#
_user_specified_name	num_loops:XT

_output_shapes
: 
:
_user_specified_name" unsimplified_common_instructions:FB

_output_shapes
: 
(
_user_specified_nameswitch_penalty:LH

_output_shapes
: 
.
_user_specified_namecase_cluster_penalty:JF

_output_shapes
: 
,
_user_specified_namejump_table_penalty:MI

_output_shapes
: 
/
_user_specified_nameindirect_call_penalty:NJ

_output_shapes
: 
0
_user_specified_namelowered_call_arg_setup:OK

_output_shapes
: 
1
_user_specified_nameload_relative_intrinsic:KG

_output_shapes
: 
-
_user_specified_namecall_argument_setup:D@

_output_shapes
: 
&
_user_specified_namecall_penalty:HD

_output_shapes
: 
*
_user_specified_nameload_elimination:C?

_output_shapes
: 
%
_user_specified_namesroa_losses:D@

_output_shapes
: 
&
_user_specified_namesroa_savings:HD

_output_shapes
: 
*
_user_specified_nameinlining_default:E
A

_output_shapes
: 
'
_user_specified_namecost_estimate:G	C

_output_shapes
: 
)
_user_specified_namecallsite_height:B>

_output_shapes
: 
$
_user_specified_name
edge_count:B>

_output_shapes
: 
$
_user_specified_name
node_count:GC

_output_shapes
: 
)
_user_specified_namenr_ctant_params:D@

_output_shapes
: 
&
_user_specified_namecallee_users:\X

_output_shapes
: 
>
_user_specified_name&$callee_conditionally_executed_blocks:PL

_output_shapes
: 
2
_user_specified_namecallee_basic_block_count:D@

_output_shapes
: 
&
_user_specified_namecaller_users:\X

_output_shapes
: 
>
_user_specified_name&$caller_conditionally_executed_blocks:P L

_output_shapes
: 
2
_user_specified_namecaller_basic_block_count
Ú 
ª
__inference_action_43
caller_basic_block_count	(
$caller_conditionally_executed_blocks	
caller_users	
callee_basic_block_count	(
$callee_conditionally_executed_blocks	
callee_users	
nr_ctant_params	

node_count	

edge_count	
callsite_height	
cost_estimate	
inlining_default	
sroa_savings	
sroa_losses	
load_elimination	
call_penalty	
call_argument_setup	
load_relative_intrinsic	
lowered_call_arg_setup	
indirect_call_penalty	
jump_table_penalty	
case_cluster_penalty	
switch_penalty	$
 unsimplified_common_instructions	
	num_loops	
dead_blocks	
simplified_instructions	
constant_args	
constant_offset_ptr_args	
callsite_cost	
cold_cc_penalty	
last_call_to_static_bonus	
is_multiple_blocks	
nested_inlines	
nested_inline_cost_estimate	
	threshold	
discount

reward
	step_type
identity	G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 RE
IdentityIdentityConst:output:0*
T0	*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :A&=

_output_shapes
: 
#
_user_specified_name	step_type:>%:

_output_shapes
: 
 
_user_specified_namereward:@$<

_output_shapes
: 
"
_user_specified_name
discount:A#=

_output_shapes
: 
#
_user_specified_name	threshold:S"O

_output_shapes
: 
5
_user_specified_namenested_inline_cost_estimate:F!B

_output_shapes
: 
(
_user_specified_namenested_inlines:J F

_output_shapes
: 
,
_user_specified_nameis_multiple_blocks:QM

_output_shapes
: 
3
_user_specified_namelast_call_to_static_bonus:GC

_output_shapes
: 
)
_user_specified_namecold_cc_penalty:EA

_output_shapes
: 
'
_user_specified_namecallsite_cost:PL

_output_shapes
: 
2
_user_specified_nameconstant_offset_ptr_args:EA

_output_shapes
: 
'
_user_specified_nameconstant_args:OK

_output_shapes
: 
1
_user_specified_namesimplified_instructions:C?

_output_shapes
: 
%
_user_specified_namedead_blocks:A=

_output_shapes
: 
#
_user_specified_name	num_loops:XT

_output_shapes
: 
:
_user_specified_name" unsimplified_common_instructions:FB

_output_shapes
: 
(
_user_specified_nameswitch_penalty:LH

_output_shapes
: 
.
_user_specified_namecase_cluster_penalty:JF

_output_shapes
: 
,
_user_specified_namejump_table_penalty:MI

_output_shapes
: 
/
_user_specified_nameindirect_call_penalty:NJ

_output_shapes
: 
0
_user_specified_namelowered_call_arg_setup:OK

_output_shapes
: 
1
_user_specified_nameload_relative_intrinsic:KG

_output_shapes
: 
-
_user_specified_namecall_argument_setup:D@

_output_shapes
: 
&
_user_specified_namecall_penalty:HD

_output_shapes
: 
*
_user_specified_nameload_elimination:C?

_output_shapes
: 
%
_user_specified_namesroa_losses:D@

_output_shapes
: 
&
_user_specified_namesroa_savings:HD

_output_shapes
: 
*
_user_specified_nameinlining_default:E
A

_output_shapes
: 
'
_user_specified_namecost_estimate:G	C

_output_shapes
: 
)
_user_specified_namecallsite_height:B>

_output_shapes
: 
$
_user_specified_name
edge_count:B>

_output_shapes
: 
$
_user_specified_name
node_count:GC

_output_shapes
: 
)
_user_specified_namenr_ctant_params:D@

_output_shapes
: 
&
_user_specified_namecallee_users:\X

_output_shapes
: 
>
_user_specified_name&$callee_conditionally_executed_blocks:PL

_output_shapes
: 
2
_user_specified_namecallee_basic_block_count:D@

_output_shapes
: 
&
_user_specified_namecaller_users:\X

_output_shapes
: 
>
_user_specified_name&$caller_conditionally_executed_blocks:P L

_output_shapes
: 
2
_user_specified_namecaller_basic_block_count
(
µ
 __inference_signature_wrapper_87
call_argument_setup	
call_penalty	
callee_basic_block_count	(
$callee_conditionally_executed_blocks	
callee_users	
caller_basic_block_count	(
$caller_conditionally_executed_blocks	
caller_users	
callsite_cost	
callsite_height	
case_cluster_penalty	
cold_cc_penalty	
constant_args	
constant_offset_ptr_args	
cost_estimate	
dead_blocks	
discount

edge_count	
indirect_call_penalty	
inlining_default	
is_multiple_blocks	
jump_table_penalty	
last_call_to_static_bonus	
load_elimination	
load_relative_intrinsic	
lowered_call_arg_setup	
nested_inline_cost_estimate	
nested_inlines	

node_count	
nr_ctant_params	
	num_loops	

reward
simplified_instructions	
sroa_losses	
sroa_savings	
	step_type
switch_penalty	
	threshold	$
 unsimplified_common_instructions	
identity	ö
PartitionedCallPartitionedCallcaller_basic_block_count$caller_conditionally_executed_blockscaller_userscallee_basic_block_count$callee_conditionally_executed_blockscallee_usersnr_ctant_params
node_count
edge_countcallsite_heightcost_estimateinlining_defaultsroa_savingssroa_lossesload_eliminationcall_penaltycall_argument_setupload_relative_intrinsiclowered_call_arg_setupindirect_call_penaltyjump_table_penaltycase_cluster_penaltyswitch_penalty unsimplified_common_instructions	num_loopsdead_blockssimplified_instructionsconstant_argsconstant_offset_ptr_argscallsite_costcold_cc_penaltylast_call_to_static_bonusis_multiple_blocksnested_inlinesnested_inline_cost_estimate	thresholddiscountreward	step_type*2
Tin+
)2'																																				*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *
fR
__inference_action_43O
IdentityIdentityPartitionedCall:output:0*
T0	*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : :X&T

_output_shapes
: 
:
_user_specified_name" unsimplified_common_instructions:A%=

_output_shapes
: 
#
_user_specified_name	threshold:F$B

_output_shapes
: 
(
_user_specified_nameswitch_penalty:A#=

_output_shapes
: 
#
_user_specified_name	step_type:D"@

_output_shapes
: 
&
_user_specified_namesroa_savings:C!?

_output_shapes
: 
%
_user_specified_namesroa_losses:O K

_output_shapes
: 
1
_user_specified_namesimplified_instructions:>:

_output_shapes
: 
 
_user_specified_namereward:A=

_output_shapes
: 
#
_user_specified_name	num_loops:GC

_output_shapes
: 
)
_user_specified_namenr_ctant_params:B>

_output_shapes
: 
$
_user_specified_name
node_count:FB

_output_shapes
: 
(
_user_specified_namenested_inlines:SO

_output_shapes
: 
5
_user_specified_namenested_inline_cost_estimate:NJ

_output_shapes
: 
0
_user_specified_namelowered_call_arg_setup:OK

_output_shapes
: 
1
_user_specified_nameload_relative_intrinsic:HD

_output_shapes
: 
*
_user_specified_nameload_elimination:QM

_output_shapes
: 
3
_user_specified_namelast_call_to_static_bonus:JF

_output_shapes
: 
,
_user_specified_namejump_table_penalty:JF

_output_shapes
: 
,
_user_specified_nameis_multiple_blocks:HD

_output_shapes
: 
*
_user_specified_nameinlining_default:MI

_output_shapes
: 
/
_user_specified_nameindirect_call_penalty:B>

_output_shapes
: 
$
_user_specified_name
edge_count:@<

_output_shapes
: 
"
_user_specified_name
discount:C?

_output_shapes
: 
%
_user_specified_namedead_blocks:EA

_output_shapes
: 
'
_user_specified_namecost_estimate:PL

_output_shapes
: 
2
_user_specified_nameconstant_offset_ptr_args:EA

_output_shapes
: 
'
_user_specified_nameconstant_args:GC

_output_shapes
: 
)
_user_specified_namecold_cc_penalty:L
H

_output_shapes
: 
.
_user_specified_namecase_cluster_penalty:G	C

_output_shapes
: 
)
_user_specified_namecallsite_height:EA

_output_shapes
: 
'
_user_specified_namecallsite_cost:D@

_output_shapes
: 
&
_user_specified_namecaller_users:\X

_output_shapes
: 
>
_user_specified_name&$caller_conditionally_executed_blocks:PL

_output_shapes
: 
2
_user_specified_namecaller_basic_block_count:D@

_output_shapes
: 
&
_user_specified_namecallee_users:\X

_output_shapes
: 
>
_user_specified_name&$callee_conditionally_executed_blocks:PL

_output_shapes
: 
2
_user_specified_namecallee_basic_block_count:D@

_output_shapes
: 
&
_user_specified_namecall_penalty:K G

_output_shapes
: 
-
_user_specified_namecall_argument_setup

E
__inference__traced_restore_199
file_prefix

identity_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHr
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B £
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
2Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 X
IdentityIdentityfile_prefix^NoOp"/device:CPU:0*
T0*
_output_shapes
: J

Identity_1IdentityIdentity:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

i
__inference__traced_save_190
file_prefix
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHo
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B Ø
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:³
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 7
NoOpNoOp^MergeV2Checkpoints*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2(
MergeV2CheckpointsMergeV2Checkpoints:=9

_output_shapes
: 

_user_specified_nameConst:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"ÚJ
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
action³
9
call_argument_setup"
action_call_argument_setup:0	 
+
call_penalty
action_call_penalty:0	 
C
callee_basic_block_count'
!action_callee_basic_block_count:0	 
[
$callee_conditionally_executed_blocks3
-action_callee_conditionally_executed_blocks:0	 
+
callee_users
action_callee_users:0	 
C
caller_basic_block_count'
!action_caller_basic_block_count:0	 
[
$caller_conditionally_executed_blocks3
-action_caller_conditionally_executed_blocks:0	 
+
caller_users
action_caller_users:0	 
-
callsite_cost
action_callsite_cost:0	 
1
callsite_height
action_callsite_height:0	 
;
case_cluster_penalty#
action_case_cluster_penalty:0	 
1
cold_cc_penalty
action_cold_cc_penalty:0	 
-
constant_args
action_constant_args:0	 
C
constant_offset_ptr_args'
!action_constant_offset_ptr_args:0	 
-
cost_estimate
action_cost_estimate:0	 
)
dead_blocks
action_dead_blocks:0	 
#
discount
action_discount:0 
'

edge_count
action_edge_count:0	 
=
indirect_call_penalty$
action_indirect_call_penalty:0	 
3
inlining_default
action_inlining_default:0	 
7
is_multiple_blocks!
action_is_multiple_blocks:0	 
7
jump_table_penalty!
action_jump_table_penalty:0	 
E
last_call_to_static_bonus(
"action_last_call_to_static_bonus:0	 
3
load_elimination
action_load_elimination:0	 
A
load_relative_intrinsic&
 action_load_relative_intrinsic:0	 
?
lowered_call_arg_setup%
action_lowered_call_arg_setup:0	 
I
nested_inline_cost_estimate*
$action_nested_inline_cost_estimate:0	 
/
nested_inlines
action_nested_inlines:0	 
'

node_count
action_node_count:0	 
1
nr_ctant_params
action_nr_ctant_params:0	 
%
	num_loops
action_num_loops:0	 

reward
action_reward:0 
A
simplified_instructions&
 action_simplified_instructions:0	 
)
sroa_losses
action_sroa_losses:0	 
+
sroa_savings
action_sroa_savings:0	 
%
	step_type
action_step_type:0 
/
switch_penalty
action_switch_penalty:0	 
%
	threshold
action_threshold:0	 
S
 unsimplified_common_instructions/
)action_unsimplified_common_instructions:0	 ,
inlining_decision
PartitionedCall:0	 tensorflow/serving/predict:Ø0
:

action

signatures"
_generic_user_object
Ì
trace_02¯
__inference_action_130
²
FullArgSpec
args 
varargsjinputs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
#

action"
signature_map
£B 
__inference_action_130caller_basic_block_count$caller_conditionally_executed_blockscaller_userscallee_basic_block_count$callee_conditionally_executed_blockscallee_usersnr_ctant_params
node_count
edge_countcallsite_heightcost_estimateinlining_defaultsroa_savingssroa_lossesload_eliminationcall_penaltycall_argument_setupload_relative_intrinsiclowered_call_arg_setupindirect_call_penaltyjump_table_penaltycase_cluster_penaltyswitch_penalty unsimplified_common_instructions	num_loopsdead_blockssimplified_instructionsconstant_argsconstant_offset_ptr_argscallsite_costcold_cc_penaltylast_call_to_static_bonusis_multiple_blocksnested_inlinesnested_inline_cost_estimate	thresholddiscountreward	step_type'"
²
FullArgSpec
args

jinputs_0
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÙBÖ
 __inference_signature_wrapper_87call_argument_setupcall_penaltycallee_basic_block_count$callee_conditionally_executed_blockscallee_userscaller_basic_block_count$caller_conditionally_executed_blockscaller_userscallsite_costcallsite_heightcase_cluster_penaltycold_cc_penaltyconstant_argsconstant_offset_ptr_argscost_estimatedead_blocksdiscount
edge_countindirect_call_penaltyinlining_defaultis_multiple_blocksjump_table_penaltylast_call_to_static_bonusload_eliminationload_relative_intrinsiclowered_call_arg_setupnested_inline_cost_estimatenested_inlines
node_countnr_ctant_params	num_loopsrewardsimplified_instructionssroa_lossessroa_savings	step_typeswitch_penalty	threshold unsimplified_common_instructions"È
Á²½
FullArgSpec
args 
varargs
 
varkw
 
defaults
 Ê

kwonlyargs»·
jcall_argument_setup
jcall_penalty
jcallee_basic_block_count
&j$callee_conditionally_executed_blocks
jcallee_users
jcaller_basic_block_count
&j$caller_conditionally_executed_blocks
jcaller_users
jcallsite_cost
jcallsite_height
jcase_cluster_penalty
jcold_cc_penalty
jconstant_args
jconstant_offset_ptr_args
jcost_estimate
jdead_blocks

jdiscount
j
edge_count
jindirect_call_penalty
jinlining_default
jis_multiple_blocks
jjump_table_penalty
jlast_call_to_static_bonus
jload_elimination
jload_relative_intrinsic
jlowered_call_arg_setup
jnested_inline_cost_estimate
jnested_inlines
j
node_count
jnr_ctant_params
j	num_loops
jreward
jsimplified_instructions
jsroa_losses
jsroa_savings
j	step_type
jswitch_penalty
j	threshold
"j unsimplified_common_instructions
kwonlydefaults
 
annotationsª *
 ³	
__inference_action_130	ß¢Û
Ó¢Ï
ÌÈ
!
caller_basic_block_count 	
-*
$caller_conditionally_executed_blocks 	

caller_users 	
!
callee_basic_block_count 	
-*
$callee_conditionally_executed_blocks 	

callee_users 	

nr_ctant_params 	


node_count 	


edge_count 	

callsite_height 	

cost_estimate 	

inlining_default 	

sroa_savings 	

sroa_losses 	

load_elimination 	

call_penalty 	

call_argument_setup 	
 
load_relative_intrinsic 	

lowered_call_arg_setup 	

indirect_call_penalty 	

jump_table_penalty 	

case_cluster_penalty 	

switch_penalty 	
)&
 unsimplified_common_instructions 	

	num_loops 	

dead_blocks 	
 
simplified_instructions 	

constant_args 	
!
constant_offset_ptr_args 	

callsite_cost 	

cold_cc_penalty 	
"
last_call_to_static_bonus 	

is_multiple_blocks 	

nested_inlines 	
$!
nested_inline_cost_estimate 	

	threshold 	

discount 

reward 

	step_type 
ª "4ª1
/
inlining_decision
inlining_decision 	í
 __inference_signature_wrapper_87È¢
¢ 
ªÿ
3
call_argument_setup
call_argument_setup 	
%
call_penalty
call_penalty 	
=
callee_basic_block_count!
callee_basic_block_count 	
U
$callee_conditionally_executed_blocks-*
$callee_conditionally_executed_blocks 	
%
callee_users
callee_users 	
=
caller_basic_block_count!
caller_basic_block_count 	
U
$caller_conditionally_executed_blocks-*
$caller_conditionally_executed_blocks 	
%
caller_users
caller_users 	
'
callsite_cost
callsite_cost 	
+
callsite_height
callsite_height 	
5
case_cluster_penalty
case_cluster_penalty 	
+
cold_cc_penalty
cold_cc_penalty 	
'
constant_args
constant_args 	
=
constant_offset_ptr_args!
constant_offset_ptr_args 	
'
cost_estimate
cost_estimate 	
#
dead_blocks
dead_blocks 	

discount
discount 
!

edge_count

edge_count 	
7
indirect_call_penalty
indirect_call_penalty 	
-
inlining_default
inlining_default 	
1
is_multiple_blocks
is_multiple_blocks 	
1
jump_table_penalty
jump_table_penalty 	
?
last_call_to_static_bonus"
last_call_to_static_bonus 	
-
load_elimination
load_elimination 	
;
load_relative_intrinsic 
load_relative_intrinsic 	
9
lowered_call_arg_setup
lowered_call_arg_setup 	
C
nested_inline_cost_estimate$!
nested_inline_cost_estimate 	
)
nested_inlines
nested_inlines 	
!

node_count

node_count 	
+
nr_ctant_params
nr_ctant_params 	

	num_loops
	num_loops 	

reward
reward 
;
simplified_instructions 
simplified_instructions 	
#
sroa_losses
sroa_losses 	
%
sroa_savings
sroa_savings 	

	step_type
	step_type 
)
switch_penalty
switch_penalty 	

	threshold
	threshold 	
M
 unsimplified_common_instructions)&
 unsimplified_common_instructions 	"4ª1
/
inlining_decision
inlining_decision 	