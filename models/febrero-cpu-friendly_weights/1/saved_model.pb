Ŕ˛
ü3Ó3
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

š
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.12.02v1.12.0-0-ga6d8ffae09ô´

\
keras_learning_phase/inputConst*
dtype0
*
_output_shapes
: *
value	B
 Z 
|
keras_learning_phasePlaceholderWithDefaultkeras_learning_phase/input*
dtype0
*
_output_shapes
: *
shape: 

conv2d_11_inputPlaceholder*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@*$
shape:˙˙˙˙˙˙˙˙˙@@
Ż
1conv2d_11/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
:

/conv2d_11/kernel/Initializer/random_uniform/minConst*
valueB
 *OSž*#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
: 

/conv2d_11/kernel/Initializer/random_uniform/maxConst*
valueB
 *OS>*#
_class
loc:@conv2d_11/kernel*
dtype0*
_output_shapes
: 
ů
9conv2d_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_11/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@conv2d_11/kernel*
seed2 *
dtype0*&
_output_shapes
: *

seed 
Ţ
/conv2d_11/kernel/Initializer/random_uniform/subSub/conv2d_11/kernel/Initializer/random_uniform/max/conv2d_11/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_11/kernel*
_output_shapes
: 
ř
/conv2d_11/kernel/Initializer/random_uniform/mulMul9conv2d_11/kernel/Initializer/random_uniform/RandomUniform/conv2d_11/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_11/kernel*&
_output_shapes
: 
ę
+conv2d_11/kernel/Initializer/random_uniformAdd/conv2d_11/kernel/Initializer/random_uniform/mul/conv2d_11/kernel/Initializer/random_uniform/min*&
_output_shapes
: *
T0*#
_class
loc:@conv2d_11/kernel
ş
conv2d_11/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_nameconv2d_11/kernel*#
_class
loc:@conv2d_11/kernel*
	container *
shape: 
q
1conv2d_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 

conv2d_11/kernel/AssignAssignVariableOpconv2d_11/kernel+conv2d_11/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@conv2d_11/kernel
˘
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*
dtype0*&
_output_shapes
: *#
_class
loc:@conv2d_11/kernel

 conv2d_11/bias/Initializer/zerosConst*
valueB *    *!
_class
loc:@conv2d_11/bias*
dtype0*
_output_shapes
: 
¨
conv2d_11/biasVarHandleOp*!
_class
loc:@conv2d_11/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_nameconv2d_11/bias
m
/conv2d_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_11/bias*
_output_shapes
: 

conv2d_11/bias/AssignAssignVariableOpconv2d_11/bias conv2d_11/bias/Initializer/zeros*
dtype0*!
_class
loc:@conv2d_11/bias

"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*!
_class
loc:@conv2d_11/bias*
dtype0*
_output_shapes
: 
h
conv2d_11/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_11/Conv2D/ReadVariableOpReadVariableOpconv2d_11/kernel*
dtype0*&
_output_shapes
: 
ő
conv2d_11/Conv2DConv2Dconv2d_11_inputconv2d_11/Conv2D/ReadVariableOp*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
	dilations
*
T0
k
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOpconv2d_11/bias*
dtype0*
_output_shapes
: 
Ą
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D conv2d_11/BiasAdd/ReadVariableOp*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
T0
c
conv2d_11/ReluReluconv2d_11/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
Ŕ
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
Ż
1conv2d_12/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"              *#
_class
loc:@conv2d_12/kernel

/conv2d_12/kernel/Initializer/random_uniform/minConst*
valueB
 *ěŃ˝*#
_class
loc:@conv2d_12/kernel*
dtype0*
_output_shapes
: 

/conv2d_12/kernel/Initializer/random_uniform/maxConst*
valueB
 *ěŃ=*#
_class
loc:@conv2d_12/kernel*
dtype0*
_output_shapes
: 
ů
9conv2d_12/kernel/Initializer/random_uniform/RandomUniformRandomUniform1conv2d_12/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:  *

seed *
T0*#
_class
loc:@conv2d_12/kernel
Ţ
/conv2d_12/kernel/Initializer/random_uniform/subSub/conv2d_12/kernel/Initializer/random_uniform/max/conv2d_12/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_12/kernel*
_output_shapes
: 
ř
/conv2d_12/kernel/Initializer/random_uniform/mulMul9conv2d_12/kernel/Initializer/random_uniform/RandomUniform/conv2d_12/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@conv2d_12/kernel*&
_output_shapes
:  
ę
+conv2d_12/kernel/Initializer/random_uniformAdd/conv2d_12/kernel/Initializer/random_uniform/mul/conv2d_12/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@conv2d_12/kernel*&
_output_shapes
:  
ş
conv2d_12/kernelVarHandleOp*
shape:  *
dtype0*
_output_shapes
: *!
shared_nameconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel*
	container 
q
1conv2d_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 

conv2d_12/kernel/AssignAssignVariableOpconv2d_12/kernel+conv2d_12/kernel/Initializer/random_uniform*#
_class
loc:@conv2d_12/kernel*
dtype0
˘
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*#
_class
loc:@conv2d_12/kernel*
dtype0*&
_output_shapes
:  

 conv2d_12/bias/Initializer/zerosConst*
valueB *    *!
_class
loc:@conv2d_12/bias*
dtype0*
_output_shapes
: 
¨
conv2d_12/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_nameconv2d_12/bias*!
_class
loc:@conv2d_12/bias*
	container *
shape: 
m
/conv2d_12/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpconv2d_12/bias*
_output_shapes
: 

conv2d_12/bias/AssignAssignVariableOpconv2d_12/bias conv2d_12/bias/Initializer/zeros*!
_class
loc:@conv2d_12/bias*
dtype0

"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*!
_class
loc:@conv2d_12/bias*
dtype0*
_output_shapes
: 
h
conv2d_12/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
conv2d_12/Conv2D/ReadVariableOpReadVariableOpconv2d_12/kernel*
dtype0*&
_output_shapes
:  
ţ
conv2d_12/Conv2DConv2Dmax_pooling2d_11/MaxPoolconv2d_12/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
k
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOpconv2d_12/bias*
dtype0*
_output_shapes
: 
Ą
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D conv2d_12/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
c
conv2d_12/ReluReluconv2d_12/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ŕ
max_pooling2d_12/MaxPoolMaxPoolconv2d_12/Relu*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0
g
flatten_6/ShapeShapemax_pooling2d_12/MaxPool*
T0*
out_type0*
_output_shapes
:
g
flatten_6/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
i
flatten_6/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
i
flatten_6/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ť
flatten_6/strided_sliceStridedSliceflatten_6/Shapeflatten_6/strided_slice/stackflatten_6/strided_slice/stack_1flatten_6/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
d
flatten_6/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

flatten_6/Reshape/shapePackflatten_6/strided_sliceflatten_6/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

flatten_6/ReshapeReshapemax_pooling2d_12/MaxPoolflatten_6/Reshape/shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
T0*
Tshape0
Ľ
0dense_11/kernel/Initializer/random_uniform/shapeConst*
valueB"     *"
_class
loc:@dense_11/kernel*
dtype0*
_output_shapes
:

.dense_11/kernel/Initializer/random_uniform/minConst*
valueB
 *çÓúź*"
_class
loc:@dense_11/kernel*
dtype0*
_output_shapes
: 

.dense_11/kernel/Initializer/random_uniform/maxConst*
valueB
 *çÓú<*"
_class
loc:@dense_11/kernel*
dtype0*
_output_shapes
: 
đ
8dense_11/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_11/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
1*

seed *
T0*"
_class
loc:@dense_11/kernel*
seed2 
Ú
.dense_11/kernel/Initializer/random_uniform/subSub.dense_11/kernel/Initializer/random_uniform/max.dense_11/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_11/kernel*
_output_shapes
: 
î
.dense_11/kernel/Initializer/random_uniform/mulMul8dense_11/kernel/Initializer/random_uniform/RandomUniform.dense_11/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
1*
T0*"
_class
loc:@dense_11/kernel
ŕ
*dense_11/kernel/Initializer/random_uniformAdd.dense_11/kernel/Initializer/random_uniform/mul.dense_11/kernel/Initializer/random_uniform/min* 
_output_shapes
:
1*
T0*"
_class
loc:@dense_11/kernel
ą
dense_11/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namedense_11/kernel*"
_class
loc:@dense_11/kernel*
	container *
shape:
1
o
0dense_11/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_11/kernel*
_output_shapes
: 

dense_11/kernel/AssignAssignVariableOpdense_11/kernel*dense_11/kernel/Initializer/random_uniform*"
_class
loc:@dense_11/kernel*
dtype0

#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
dtype0* 
_output_shapes
:
1*"
_class
loc:@dense_11/kernel

dense_11/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_11/bias*
dtype0*
_output_shapes	
:
Ś
dense_11/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_namedense_11/bias* 
_class
loc:@dense_11/bias*
	container 
k
.dense_11/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_11/bias*
_output_shapes
: 

dense_11/bias/AssignAssignVariableOpdense_11/biasdense_11/bias/Initializer/zeros* 
_class
loc:@dense_11/bias*
dtype0

!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias* 
_class
loc:@dense_11/bias*
dtype0*
_output_shapes	
:
p
dense_11/MatMul/ReadVariableOpReadVariableOpdense_11/kernel*
dtype0* 
_output_shapes
:
1
Ľ
dense_11/MatMulMatMulflatten_6/Reshapedense_11/MatMul/ReadVariableOp*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( *
T0
j
dense_11/BiasAdd/ReadVariableOpReadVariableOpdense_11/bias*
dtype0*
_output_shapes	
:

dense_11/BiasAddBiasAdddense_11/MatMuldense_11/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
dense_11/ReluReludense_11/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_12/kernel/Initializer/random_uniform/shapeConst*
valueB"      *"
_class
loc:@dense_12/kernel*
dtype0*
_output_shapes
:

.dense_12/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ý[ž*"
_class
loc:@dense_12/kernel

.dense_12/kernel/Initializer/random_uniform/maxConst*
valueB
 *ý[>*"
_class
loc:@dense_12/kernel*
dtype0*
_output_shapes
: 
ď
8dense_12/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_12/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*"
_class
loc:@dense_12/kernel*
seed2 
Ú
.dense_12/kernel/Initializer/random_uniform/subSub.dense_12/kernel/Initializer/random_uniform/max.dense_12/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_12/kernel*
_output_shapes
: 
í
.dense_12/kernel/Initializer/random_uniform/mulMul8dense_12/kernel/Initializer/random_uniform/RandomUniform.dense_12/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*"
_class
loc:@dense_12/kernel
ß
*dense_12/kernel/Initializer/random_uniformAdd.dense_12/kernel/Initializer/random_uniform/mul.dense_12/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_12/kernel*
_output_shapes
:	
°
dense_12/kernelVarHandleOp* 
shared_namedense_12/kernel*"
_class
loc:@dense_12/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: 
o
0dense_12/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_12/kernel*
_output_shapes
: 

dense_12/kernel/AssignAssignVariableOpdense_12/kernel*dense_12/kernel/Initializer/random_uniform*"
_class
loc:@dense_12/kernel*
dtype0

#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*"
_class
loc:@dense_12/kernel*
dtype0*
_output_shapes
:	

dense_12/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    * 
_class
loc:@dense_12/bias
Ľ
dense_12/biasVarHandleOp*
shared_namedense_12/bias* 
_class
loc:@dense_12/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
k
.dense_12/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_12/bias*
_output_shapes
: 

dense_12/bias/AssignAssignVariableOpdense_12/biasdense_12/bias/Initializer/zeros* 
_class
loc:@dense_12/bias*
dtype0

!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
dtype0*
_output_shapes
:* 
_class
loc:@dense_12/bias
o
dense_12/MatMul/ReadVariableOpReadVariableOpdense_12/kernel*
dtype0*
_output_shapes
:	
 
dense_12/MatMulMatMuldense_11/Reludense_12/MatMul/ReadVariableOp*
T0*
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_b( 
i
dense_12/BiasAdd/ReadVariableOpReadVariableOpdense_12/bias*
dtype0*
_output_shapes
:

dense_12/BiasAddBiasAdddense_12/MatMuldense_12/BiasAdd/ReadVariableOp*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
_
dense_12/SoftmaxSoftmaxdense_12/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
PlaceholderPlaceholder*
shape: *
dtype0*&
_output_shapes
: 
P
AssignVariableOpAssignVariableOpconv2d_11/kernelPlaceholder*
dtype0
z
ReadVariableOpReadVariableOpconv2d_11/kernel^AssignVariableOp*
dtype0*&
_output_shapes
: 
V
Placeholder_1Placeholder*
shape: *
dtype0*
_output_shapes
: 
R
AssignVariableOp_1AssignVariableOpconv2d_11/biasPlaceholder_1*
dtype0
p
ReadVariableOp_1ReadVariableOpconv2d_11/bias^AssignVariableOp_1*
dtype0*
_output_shapes
: 
n
Placeholder_2Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
T
AssignVariableOp_2AssignVariableOpconv2d_12/kernelPlaceholder_2*
dtype0
~
ReadVariableOp_2ReadVariableOpconv2d_12/kernel^AssignVariableOp_2*
dtype0*&
_output_shapes
:  
V
Placeholder_3Placeholder*
dtype0*
_output_shapes
: *
shape: 
R
AssignVariableOp_3AssignVariableOpconv2d_12/biasPlaceholder_3*
dtype0
p
ReadVariableOp_3ReadVariableOpconv2d_12/bias^AssignVariableOp_3*
dtype0*
_output_shapes
: 
b
Placeholder_4Placeholder*
dtype0* 
_output_shapes
:
1*
shape:
1
S
AssignVariableOp_4AssignVariableOpdense_11/kernelPlaceholder_4*
dtype0
w
ReadVariableOp_4ReadVariableOpdense_11/kernel^AssignVariableOp_4*
dtype0* 
_output_shapes
:
1
X
Placeholder_5Placeholder*
shape:*
dtype0*
_output_shapes	
:
Q
AssignVariableOp_5AssignVariableOpdense_11/biasPlaceholder_5*
dtype0
p
ReadVariableOp_5ReadVariableOpdense_11/bias^AssignVariableOp_5*
dtype0*
_output_shapes	
:
`
Placeholder_6Placeholder*
dtype0*
_output_shapes
:	*
shape:	
S
AssignVariableOp_6AssignVariableOpdense_12/kernelPlaceholder_6*
dtype0
v
ReadVariableOp_6ReadVariableOpdense_12/kernel^AssignVariableOp_6*
dtype0*
_output_shapes
:	
V
Placeholder_7Placeholder*
dtype0*
_output_shapes
:*
shape:
Q
AssignVariableOp_7AssignVariableOpdense_12/biasPlaceholder_7*
dtype0
o
ReadVariableOp_7ReadVariableOpdense_12/bias^AssignVariableOp_7*
dtype0*
_output_shapes
:
Q
VarIsInitializedOpVarIsInitializedOpdense_11/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpdense_12/bias*
_output_shapes
: 
T
VarIsInitializedOp_2VarIsInitializedOpconv2d_11/kernel*
_output_shapes
: 
R
VarIsInitializedOp_3VarIsInitializedOpconv2d_11/bias*
_output_shapes
: 
S
VarIsInitializedOp_4VarIsInitializedOpdense_12/kernel*
_output_shapes
: 
T
VarIsInitializedOp_5VarIsInitializedOpconv2d_12/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_6VarIsInitializedOpdense_11/bias*
_output_shapes
: 
R
VarIsInitializedOp_7VarIsInitializedOpconv2d_12/bias*
_output_shapes
: 
Đ
initNoOp^conv2d_11/bias/Assign^conv2d_11/kernel/Assign^conv2d_12/bias/Assign^conv2d_12/kernel/Assign^dense_11/bias/Assign^dense_11/kernel/Assign^dense_12/bias/Assign^dense_12/kernel/Assign

)Adam/iterations/Initializer/initial_valueConst*
value	B	 R *"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 
§
Adam/iterationsVarHandleOp*
dtype0	*
_output_shapes
: * 
shared_nameAdam/iterations*"
_class
loc:@Adam/iterations*
	container *
shape: 
o
0Adam/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/iterations*
_output_shapes
: 

Adam/iterations/AssignAssignVariableOpAdam/iterations)Adam/iterations/Initializer/initial_value*"
_class
loc:@Adam/iterations*
dtype0	

#Adam/iterations/Read/ReadVariableOpReadVariableOpAdam/iterations*"
_class
loc:@Adam/iterations*
dtype0	*
_output_shapes
: 

!Adam/lr/Initializer/initial_valueConst*
valueB
 *o:*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

Adam/lrVarHandleOp*
shared_name	Adam/lr*
_class
loc:@Adam/lr*
	container *
shape: *
dtype0*
_output_shapes
: 
_
(Adam/lr/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/lr*
_output_shapes
: 
w
Adam/lr/AssignAssignVariableOpAdam/lr!Adam/lr/Initializer/initial_value*
_class
loc:@Adam/lr*
dtype0
w
Adam/lr/Read/ReadVariableOpReadVariableOpAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

%Adam/beta_1/Initializer/initial_valueConst*
valueB
 *fff?*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

Adam/beta_1VarHandleOp*
shared_nameAdam/beta_1*
_class
loc:@Adam/beta_1*
	container *
shape: *
dtype0*
_output_shapes
: 
g
,Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_1*
_output_shapes
: 

Adam/beta_1/AssignAssignVariableOpAdam/beta_1%Adam/beta_1/Initializer/initial_value*
_class
loc:@Adam/beta_1*
dtype0

Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

%Adam/beta_2/Initializer/initial_valueConst*
valueB
 *wž?*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

Adam/beta_2VarHandleOp*
dtype0*
_output_shapes
: *
shared_nameAdam/beta_2*
_class
loc:@Adam/beta_2*
	container *
shape: 
g
,Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOpAdam/beta_2*
_output_shapes
: 

Adam/beta_2/AssignAssignVariableOpAdam/beta_2%Adam/beta_2/Initializer/initial_value*
_class
loc:@Adam/beta_2*
dtype0

Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: *
_class
loc:@Adam/beta_2

$Adam/decay/Initializer/initial_valueConst*
valueB
 *    *
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 


Adam/decayVarHandleOp*
dtype0*
_output_shapes
: *
shared_name
Adam/decay*
_class
loc:@Adam/decay*
	container *
shape: 
e
+Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Adam/decay*
_output_shapes
: 

Adam/decay/AssignAssignVariableOp
Adam/decay$Adam/decay/Initializer/initial_value*
dtype0*
_class
loc:@Adam/decay

Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 

dense_12_targetPlaceholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
R
ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:

dense_12_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
j
(loss/dense_12_loss/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
¨
loss/dense_12_loss/SumSumdense_12/Softmax(loss/dense_12_loss/Sum/reduction_indices*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims(

loss/dense_12_loss/truedivRealDivdense_12/Softmaxloss/dense_12_loss/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
]
loss/dense_12_loss/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
]
loss/dense_12_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
loss/dense_12_loss/subSubloss/dense_12_loss/sub/xloss/dense_12_loss/Const*
_output_shapes
: *
T0

(loss/dense_12_loss/clip_by_value/MinimumMinimumloss/dense_12_loss/truedivloss/dense_12_loss/sub*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ą
 loss/dense_12_loss/clip_by_valueMaximum(loss/dense_12_loss/clip_by_value/Minimumloss/dense_12_loss/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
q
loss/dense_12_loss/LogLog loss/dense_12_loss/clip_by_value*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
loss/dense_12_loss/mulMuldense_12_targetloss/dense_12_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
l
*loss/dense_12_loss/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ž
loss/dense_12_loss/Sum_1Sumloss/dense_12_loss/mul*loss/dense_12_loss/Sum_1/reduction_indices*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( *
T0
e
loss/dense_12_loss/NegNegloss/dense_12_loss/Sum_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

Gloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_12_sample_weights*
T0*
out_type0*
_output_shapes
:

Floss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 

Floss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shapeShapeloss/dense_12_loss/Neg*
T0*
out_type0*
_output_shapes
:

Eloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :

Eloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
ü
Closs/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalarEqualEloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar/xFloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: *
T0

Oloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchCloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalarCloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
Ń
Qloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityQloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
Ď
Qloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityOloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Â
Ploss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityCloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
í
Qloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchCloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalarPloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*V
_classL
JHloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

oloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualvloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchxloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 

vloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchEloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/rankPloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 

xloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchFloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/rankPloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_output_shapes
: : *
T0*Y
_classO
MKloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/rank
ř
iloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitcholoss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankoloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0


kloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitykloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 

kloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityiloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 

jloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityoloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
ź
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstl^loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ň
~loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
°
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchFloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shapePloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*Y
_classO
MKloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shape

loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchjloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Ă
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstl^loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
´
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstl^loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ě
}loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
Ż
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstl^loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ä
zloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2~loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims}loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
ž
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstl^loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
Ů
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:*

Tdim0
´
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchGloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shapePloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Z
_classP
NLloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchjloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Z
_classP
NLloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::

loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1zloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
set_operationa-b*
T0*
validate_indices(*<
_output_shapes*
(:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙:
Ď
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
Ľ
uloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstl^loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 

sloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualuloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ú
kloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switcholoss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankjloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
_output_shapes
: : *
T0
*
_classx
vtloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank
˙
hloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergekloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1sloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
N*
_output_shapes
: : *
T0

Â
Nloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergehloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeSloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
§
?loss/dense_12_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 

Aloss/dense_12_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 

Aloss/dense_12_loss/broadcast_weights/assert_broadcastable/Const_2Const*
dtype0*
_output_shapes
: **
value!B Bdense_12_sample_weights:0

Aloss/dense_12_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 

Aloss/dense_12_loss/broadcast_weights/assert_broadcastable/Const_4Const*)
value B Bloss/dense_12_loss/Neg:0*
dtype0*
_output_shapes
: 

Aloss/dense_12_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 

Lloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchNloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeNloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

Ë
Nloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityNloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
É
Nloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityLloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

Ę
Mloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityNloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
Ł
Jloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpO^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t

Xloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityNloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tK^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*a
_classW
USloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 

Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstO^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
ó
Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstO^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bweights.shape=
ţ
Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstO^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: **
value!B Bdense_12_sample_weights:0
ň
Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstO^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ý
Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstO^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*)
value B Bloss/dense_12_loss/Neg:0*
dtype0*
_output_shapes
: 
ď
Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstO^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Ó
Lloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertSloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize

Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchNloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*a
_classW
USloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge
ţ
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchGloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shapeMloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Z
_classP
NLloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ü
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchFloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shapeMloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
î
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchCloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalarMloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*V
_classL
JHloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 

Zloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityNloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fM^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*a
_classW
USloc:@loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
ś
Kloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeZloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Xloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Ř
4loss/dense_12_loss/broadcast_weights/ones_like/ShapeShapeloss/dense_12_loss/NegL^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
Ç
4loss/dense_12_loss/broadcast_weights/ones_like/ConstConstL^loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  ?*
dtype0*
_output_shapes
: 
â
.loss/dense_12_loss/broadcast_weights/ones_likeFill4loss/dense_12_loss/broadcast_weights/ones_like/Shape4loss/dense_12_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˘
$loss/dense_12_loss/broadcast_weightsMuldense_12_sample_weights.loss/dense_12_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

loss/dense_12_loss/Mul_1Mulloss/dense_12_loss/Neg$loss/dense_12_loss/broadcast_weights*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
d
loss/dense_12_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_12_loss/Sum_2Sumloss/dense_12_loss/Mul_1loss/dense_12_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
d
loss/dense_12_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_12_loss/Sum_3Sum$loss/dense_12_loss/broadcast_weightsloss/dense_12_loss/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
|
loss/dense_12_loss/truediv_1RealDivloss/dense_12_loss/Sum_2loss/dense_12_loss/Sum_3*
T0*
_output_shapes
: 
b
loss/dense_12_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_12_loss/GreaterGreaterloss/dense_12_loss/Sum_3loss/dense_12_loss/zeros_like*
_output_shapes
: *
T0

loss/dense_12_loss/SelectSelectloss/dense_12_loss/Greaterloss/dense_12_loss/truediv_1loss/dense_12_loss/zeros_like*
_output_shapes
: *
T0
]
loss/dense_12_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 

loss/dense_12_loss/MeanMeanloss/dense_12_loss/Selectloss/dense_12_loss/Const_3*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
O

loss/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
U
loss/mulMul
loss/mul/xloss/dense_12_loss/Mean*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙

metrics/acc/ArgMaxArgMaxdense_12_targetmetrics/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxdense_12/Softmaxmetrics/acc/ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
x
metrics/acc/CastCastmetrics/acc/Equal*

SrcT0
*
Truncate( *

DstT0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
}
training/Adam/gradients/ShapeConst*
valueB *
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
valueB
 *  ?*
_class
loc:@loss/mul*
dtype0*
_output_shapes
: 
ś
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*

index_type0*
_class
loc:@loss/mul*
_output_shapes
: 
Ľ
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_12_loss/Mean*
_output_shapes
: *
T0*
_class
loc:@loss/mul

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0*
_class
loc:@loss/mul
ą
Btraining/Adam/gradients/loss/dense_12_loss/Mean_grad/Reshape/shapeConst*
valueB **
_class 
loc:@loss/dense_12_loss/Mean*
dtype0*
_output_shapes
: 

<training/Adam/gradients/loss/dense_12_loss/Mean_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Btraining/Adam/gradients/loss/dense_12_loss/Mean_grad/Reshape/shape*
T0*
Tshape0**
_class 
loc:@loss/dense_12_loss/Mean*
_output_shapes
: 
Š
:training/Adam/gradients/loss/dense_12_loss/Mean_grad/ConstConst*
valueB **
_class 
loc:@loss/dense_12_loss/Mean*
dtype0*
_output_shapes
: 

9training/Adam/gradients/loss/dense_12_loss/Mean_grad/TileTile<training/Adam/gradients/loss/dense_12_loss/Mean_grad/Reshape:training/Adam/gradients/loss/dense_12_loss/Mean_grad/Const*
_output_shapes
: *

Tmultiples0*
T0**
_class 
loc:@loss/dense_12_loss/Mean
­
<training/Adam/gradients/loss/dense_12_loss/Mean_grad/Const_1Const*
valueB
 *  ?**
_class 
loc:@loss/dense_12_loss/Mean*
dtype0*
_output_shapes
: 

<training/Adam/gradients/loss/dense_12_loss/Mean_grad/truedivRealDiv9training/Adam/gradients/loss/dense_12_loss/Mean_grad/Tile<training/Adam/gradients/loss/dense_12_loss/Mean_grad/Const_1*
T0**
_class 
loc:@loss/dense_12_loss/Mean*
_output_shapes
: 
´
Atraining/Adam/gradients/loss/dense_12_loss/Select_grad/zeros_likeConst*
valueB
 *    *,
_class"
 loc:@loss/dense_12_loss/Select*
dtype0*
_output_shapes
: 
ł
=training/Adam/gradients/loss/dense_12_loss/Select_grad/SelectSelectloss/dense_12_loss/Greater<training/Adam/gradients/loss/dense_12_loss/Mean_grad/truedivAtraining/Adam/gradients/loss/dense_12_loss/Select_grad/zeros_like*
_output_shapes
: *
T0*,
_class"
 loc:@loss/dense_12_loss/Select
ľ
?training/Adam/gradients/loss/dense_12_loss/Select_grad/Select_1Selectloss/dense_12_loss/GreaterAtraining/Adam/gradients/loss/dense_12_loss/Select_grad/zeros_like<training/Adam/gradients/loss/dense_12_loss/Mean_grad/truediv*
_output_shapes
: *
T0*,
_class"
 loc:@loss/dense_12_loss/Select
ł
?training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/ShapeConst*
valueB */
_class%
#!loc:@loss/dense_12_loss/truediv_1*
dtype0*
_output_shapes
: 
ľ
Atraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/Shape_1Const*
valueB */
_class%
#!loc:@loss/dense_12_loss/truediv_1*
dtype0*
_output_shapes
: 
Ú
Otraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs?training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/ShapeAtraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/Shape_1*
T0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
÷
Atraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_12_loss/Select_grad/Selectloss/dense_12_loss/Sum_3*
T0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1*
_output_shapes
: 
Ç
=training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/SumSumAtraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/RealDivOtraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1*
_output_shapes
: 
Ź
Atraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/ReshapeReshape=training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/Sum?training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/Shape*
T0*
Tshape0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1*
_output_shapes
: 
°
=training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/NegNegloss/dense_12_loss/Sum_2*
T0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1*
_output_shapes
: 
ů
Ctraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/RealDiv_1RealDiv=training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/Negloss/dense_12_loss/Sum_3*
_output_shapes
: *
T0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1
˙
Ctraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/RealDiv_2RealDivCtraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/RealDiv_1loss/dense_12_loss/Sum_3*
_output_shapes
: *
T0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1

=training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_12_loss/Select_grad/SelectCtraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/RealDiv_2*
T0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1*
_output_shapes
: 
Ç
?training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/Sum_1Sum=training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/mulQtraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1*
_output_shapes
: *

Tidx0*
	keep_dims( 
˛
Ctraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/Reshape_1Reshape?training/Adam/gradients/loss/dense_12_loss/truediv_1_grad/Sum_1Atraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/Shape_1*
T0*
Tshape0*/
_class%
#!loc:@loss/dense_12_loss/truediv_1*
_output_shapes
: 
ş
Ctraining/Adam/gradients/loss/dense_12_loss/Sum_2_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:*+
_class!
loc:@loss/dense_12_loss/Sum_2
°
=training/Adam/gradients/loss/dense_12_loss/Sum_2_grad/ReshapeReshapeAtraining/Adam/gradients/loss/dense_12_loss/truediv_1_grad/ReshapeCtraining/Adam/gradients/loss/dense_12_loss/Sum_2_grad/Reshape/shape*
T0*
Tshape0*+
_class!
loc:@loss/dense_12_loss/Sum_2*
_output_shapes
:
Ŕ
;training/Adam/gradients/loss/dense_12_loss/Sum_2_grad/ShapeShapeloss/dense_12_loss/Mul_1*
T0*
out_type0*+
_class!
loc:@loss/dense_12_loss/Sum_2*
_output_shapes
:
Ť
:training/Adam/gradients/loss/dense_12_loss/Sum_2_grad/TileTile=training/Adam/gradients/loss/dense_12_loss/Sum_2_grad/Reshape;training/Adam/gradients/loss/dense_12_loss/Sum_2_grad/Shape*
T0*+
_class!
loc:@loss/dense_12_loss/Sum_2*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
ž
;training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/ShapeShapeloss/dense_12_loss/Neg*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/dense_12_loss/Mul_1
Î
=training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Shape_1Shape$loss/dense_12_loss/broadcast_weights*
T0*
out_type0*+
_class!
loc:@loss/dense_12_loss/Mul_1*
_output_shapes
:
Ę
Ktraining/Adam/gradients/loss/dense_12_loss/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs;training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Shape=training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*+
_class!
loc:@loss/dense_12_loss/Mul_1
ý
9training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/MulMul:training/Adam/gradients/loss/dense_12_loss/Sum_2_grad/Tile$loss/dense_12_loss/broadcast_weights*
T0*+
_class!
loc:@loss/dense_12_loss/Mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
9training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/SumSum9training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/MulKtraining/Adam/gradients/loss/dense_12_loss/Mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*+
_class!
loc:@loss/dense_12_loss/Mul_1*
_output_shapes
:
Š
=training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/ReshapeReshape9training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Sum;training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0*+
_class!
loc:@loss/dense_12_loss/Mul_1
ń
;training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Mul_1Mulloss/dense_12_loss/Neg:training/Adam/gradients/loss/dense_12_loss/Sum_2_grad/Tile*
T0*+
_class!
loc:@loss/dense_12_loss/Mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
;training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Sum_1Sum;training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Mul_1Mtraining/Adam/gradients/loss/dense_12_loss/Mul_1_grad/BroadcastGradientArgs:1*
T0*+
_class!
loc:@loss/dense_12_loss/Mul_1*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ż
?training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Reshape_1Reshape;training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Sum_1=training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Shape_1*
T0*
Tshape0*+
_class!
loc:@loss/dense_12_loss/Mul_1*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
7training/Adam/gradients/loss/dense_12_loss/Neg_grad/NegNeg=training/Adam/gradients/loss/dense_12_loss/Mul_1_grad/Reshape*
T0*)
_class
loc:@loss/dense_12_loss/Neg*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
;training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/ShapeShapeloss/dense_12_loss/mul*
_output_shapes
:*
T0*
out_type0*+
_class!
loc:@loss/dense_12_loss/Sum_1
Š
:training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/SizeConst*
value	B :*+
_class!
loc:@loss/dense_12_loss/Sum_1*
dtype0*
_output_shapes
: 
ö
9training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/addAdd*loss/dense_12_loss/Sum_1/reduction_indices:training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Size*
T0*+
_class!
loc:@loss/dense_12_loss/Sum_1*
_output_shapes
: 

9training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/modFloorMod9training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/add:training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Size*
T0*+
_class!
loc:@loss/dense_12_loss/Sum_1*
_output_shapes
: 
­
=training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *+
_class!
loc:@loss/dense_12_loss/Sum_1
°
Atraining/Adam/gradients/loss/dense_12_loss/Sum_1_grad/range/startConst*
value	B : *+
_class!
loc:@loss/dense_12_loss/Sum_1*
dtype0*
_output_shapes
: 
°
Atraining/Adam/gradients/loss/dense_12_loss/Sum_1_grad/range/deltaConst*
value	B :*+
_class!
loc:@loss/dense_12_loss/Sum_1*
dtype0*
_output_shapes
: 
Ű
;training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/rangeRangeAtraining/Adam/gradients/loss/dense_12_loss/Sum_1_grad/range/start:training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/SizeAtraining/Adam/gradients/loss/dense_12_loss/Sum_1_grad/range/delta*+
_class!
loc:@loss/dense_12_loss/Sum_1*
_output_shapes
:*

Tidx0
Ż
@training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Fill/valueConst*
value	B :*+
_class!
loc:@loss/dense_12_loss/Sum_1*
dtype0*
_output_shapes
: 
Ł
:training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/FillFill=training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Shape_1@training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*+
_class!
loc:@loss/dense_12_loss/Sum_1
 
Ctraining/Adam/gradients/loss/dense_12_loss/Sum_1_grad/DynamicStitchDynamicStitch;training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/range9training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/mod;training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Shape:training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Fill*
T0*+
_class!
loc:@loss/dense_12_loss/Sum_1*
N*
_output_shapes
:
Ž
?training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Maximum/yConst*
value	B :*+
_class!
loc:@loss/dense_12_loss/Sum_1*
dtype0*
_output_shapes
: 
 
=training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/MaximumMaximumCtraining/Adam/gradients/loss/dense_12_loss/Sum_1_grad/DynamicStitch?training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_12_loss/Sum_1*
_output_shapes
:

>training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/floordivFloorDiv;training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Shape=training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Maximum*
T0*+
_class!
loc:@loss/dense_12_loss/Sum_1*
_output_shapes
:
ź
=training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/ReshapeReshape7training/Adam/gradients/loss/dense_12_loss/Neg_grad/NegCtraining/Adam/gradients/loss/dense_12_loss/Sum_1_grad/DynamicStitch*
T0*
Tshape0*+
_class!
loc:@loss/dense_12_loss/Sum_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
˛
:training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/TileTile=training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Reshape>training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/floordiv*
T0*+
_class!
loc:@loss/dense_12_loss/Sum_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
ł
9training/Adam/gradients/loss/dense_12_loss/mul_grad/ShapeShapedense_12_target*
T0*
out_type0*)
_class
loc:@loss/dense_12_loss/mul*
_output_shapes
:
ź
;training/Adam/gradients/loss/dense_12_loss/mul_grad/Shape_1Shapeloss/dense_12_loss/Log*
_output_shapes
:*
T0*
out_type0*)
_class
loc:@loss/dense_12_loss/mul
Â
Itraining/Adam/gradients/loss/dense_12_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9training/Adam/gradients/loss/dense_12_loss/mul_grad/Shape;training/Adam/gradients/loss/dense_12_loss/mul_grad/Shape_1*
T0*)
_class
loc:@loss/dense_12_loss/mul*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ď
7training/Adam/gradients/loss/dense_12_loss/mul_grad/MulMul:training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Tileloss/dense_12_loss/Log*
T0*)
_class
loc:@loss/dense_12_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
7training/Adam/gradients/loss/dense_12_loss/mul_grad/SumSum7training/Adam/gradients/loss/dense_12_loss/mul_grad/MulItraining/Adam/gradients/loss/dense_12_loss/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*)
_class
loc:@loss/dense_12_loss/mul*
_output_shapes
:
Ž
;training/Adam/gradients/loss/dense_12_loss/mul_grad/ReshapeReshape7training/Adam/gradients/loss/dense_12_loss/mul_grad/Sum9training/Adam/gradients/loss/dense_12_loss/mul_grad/Shape*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0*)
_class
loc:@loss/dense_12_loss/mul
ę
9training/Adam/gradients/loss/dense_12_loss/mul_grad/Mul_1Muldense_12_target:training/Adam/gradients/loss/dense_12_loss/Sum_1_grad/Tile*
T0*)
_class
loc:@loss/dense_12_loss/mul*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ł
9training/Adam/gradients/loss/dense_12_loss/mul_grad/Sum_1Sum9training/Adam/gradients/loss/dense_12_loss/mul_grad/Mul_1Ktraining/Adam/gradients/loss/dense_12_loss/mul_grad/BroadcastGradientArgs:1*
T0*)
_class
loc:@loss/dense_12_loss/mul*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ť
=training/Adam/gradients/loss/dense_12_loss/mul_grad/Reshape_1Reshape9training/Adam/gradients/loss/dense_12_loss/mul_grad/Sum_1;training/Adam/gradients/loss/dense_12_loss/mul_grad/Shape_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
Tshape0*)
_class
loc:@loss/dense_12_loss/mul

>training/Adam/gradients/loss/dense_12_loss/Log_grad/Reciprocal
Reciprocal loss/dense_12_loss/clip_by_value>^training/Adam/gradients/loss/dense_12_loss/mul_grad/Reshape_1*
T0*)
_class
loc:@loss/dense_12_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

7training/Adam/gradients/loss/dense_12_loss/Log_grad/mulMul=training/Adam/gradients/loss/dense_12_loss/mul_grad/Reshape_1>training/Adam/gradients/loss/dense_12_loss/Log_grad/Reciprocal*
T0*)
_class
loc:@loss/dense_12_loss/Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
Ctraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/ShapeShape(loss/dense_12_loss/clip_by_value/Minimum*
T0*
out_type0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*
_output_shapes
:
˝
Etraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Shape_1Const*
valueB *3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*
dtype0*
_output_shapes
: 
ń
Etraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Shape_2Shape7training/Adam/gradients/loss/dense_12_loss/Log_grad/mul*
T0*
out_type0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*
_output_shapes
:
Ă
Itraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*
dtype0*
_output_shapes
: 
Ö
Ctraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/zerosFillEtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Shape_2Itraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Jtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/GreaterEqualGreaterEqual(loss/dense_12_loss/clip_by_value/Minimumloss/dense_12_loss/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value
ę
Straining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsCtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/ShapeEtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value
˙
Dtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/SelectSelectJtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/GreaterEqual7training/Adam/gradients/loss/dense_12_loss/Log_grad/mulCtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/zeros*
T0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ftraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Select_1SelectJtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/GreaterEqualCtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/zeros7training/Adam/gradients/loss/dense_12_loss/Log_grad/mul*
T0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ř
Atraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/SumSumDtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/SelectStraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*
_output_shapes
:*

Tidx0*
	keep_dims( 
Í
Etraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/ReshapeReshapeAtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/SumCtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Shape*
T0*
Tshape0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
Ctraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Sum_1SumFtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Select_1Utraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*
_output_shapes
:
Â
Gtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Reshape_1ReshapeCtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Sum_1Etraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*3
_class)
'%loc:@loss/dense_12_loss/clip_by_value*
_output_shapes
: 
â
Ktraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/ShapeShapeloss/dense_12_loss/truediv*
T0*
out_type0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum*
_output_shapes
:
Í
Mtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum

Mtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Shape_2ShapeEtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Reshape*
T0*
out_type0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum*
_output_shapes
:
Ó
Qtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum*
dtype0*
_output_shapes
: 
ö
Ktraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/zerosFillMtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Shape_2Qtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/zeros/Const*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*

index_type0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum
˙
Otraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/dense_12_loss/truedivloss/dense_12_loss/sub*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum

[training/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsKtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/ShapeMtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Shape_1*
T0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ş
Ltraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/SelectSelectOtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/LessEqualEtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/ReshapeKtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/zeros*
T0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ź
Ntraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Select_1SelectOtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/LessEqualKtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/zerosEtraining/Adam/gradients/loss/dense_12_loss/clip_by_value_grad/Reshape*
T0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ř
Itraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/SumSumLtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Select[training/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum
í
Mtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/ReshapeReshapeItraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/SumKtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ţ
Ktraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Sum_1SumNtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Select_1]training/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum*
_output_shapes
:*

Tidx0*
	keep_dims( 
â
Otraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeKtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Sum_1Mtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*;
_class1
/-loc:@loss/dense_12_loss/clip_by_value/Minimum*
_output_shapes
: 
ź
=training/Adam/gradients/loss/dense_12_loss/truediv_grad/ShapeShapedense_12/Softmax*
T0*
out_type0*-
_class#
!loc:@loss/dense_12_loss/truediv*
_output_shapes
:
Ä
?training/Adam/gradients/loss/dense_12_loss/truediv_grad/Shape_1Shapeloss/dense_12_loss/Sum*
T0*
out_type0*-
_class#
!loc:@loss/dense_12_loss/truediv*
_output_shapes
:
Ň
Mtraining/Adam/gradients/loss/dense_12_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs=training/Adam/gradients/loss/dense_12_loss/truediv_grad/Shape?training/Adam/gradients/loss/dense_12_loss/truediv_grad/Shape_1*
T0*-
_class#
!loc:@loss/dense_12_loss/truediv*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

?training/Adam/gradients/loss/dense_12_loss/truediv_grad/RealDivRealDivMtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/Reshapeloss/dense_12_loss/Sum*
T0*-
_class#
!loc:@loss/dense_12_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
;training/Adam/gradients/loss/dense_12_loss/truediv_grad/SumSum?training/Adam/gradients/loss/dense_12_loss/truediv_grad/RealDivMtraining/Adam/gradients/loss/dense_12_loss/truediv_grad/BroadcastGradientArgs*
T0*-
_class#
!loc:@loss/dense_12_loss/truediv*
_output_shapes
:*

Tidx0*
	keep_dims( 
ľ
?training/Adam/gradients/loss/dense_12_loss/truediv_grad/ReshapeReshape;training/Adam/gradients/loss/dense_12_loss/truediv_grad/Sum=training/Adam/gradients/loss/dense_12_loss/truediv_grad/Shape*
T0*
Tshape0*-
_class#
!loc:@loss/dense_12_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
;training/Adam/gradients/loss/dense_12_loss/truediv_grad/NegNegdense_12/Softmax*
T0*-
_class#
!loc:@loss/dense_12_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Atraining/Adam/gradients/loss/dense_12_loss/truediv_grad/RealDiv_1RealDiv;training/Adam/gradients/loss/dense_12_loss/truediv_grad/Negloss/dense_12_loss/Sum*
T0*-
_class#
!loc:@loss/dense_12_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Atraining/Adam/gradients/loss/dense_12_loss/truediv_grad/RealDiv_2RealDivAtraining/Adam/gradients/loss/dense_12_loss/truediv_grad/RealDiv_1loss/dense_12_loss/Sum*
T0*-
_class#
!loc:@loss/dense_12_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
;training/Adam/gradients/loss/dense_12_loss/truediv_grad/mulMulMtraining/Adam/gradients/loss/dense_12_loss/clip_by_value/Minimum_grad/ReshapeAtraining/Adam/gradients/loss/dense_12_loss/truediv_grad/RealDiv_2*
T0*-
_class#
!loc:@loss/dense_12_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
=training/Adam/gradients/loss/dense_12_loss/truediv_grad/Sum_1Sum;training/Adam/gradients/loss/dense_12_loss/truediv_grad/mulOtraining/Adam/gradients/loss/dense_12_loss/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*-
_class#
!loc:@loss/dense_12_loss/truediv*
_output_shapes
:
ť
Atraining/Adam/gradients/loss/dense_12_loss/truediv_grad/Reshape_1Reshape=training/Adam/gradients/loss/dense_12_loss/truediv_grad/Sum_1?training/Adam/gradients/loss/dense_12_loss/truediv_grad/Shape_1*
T0*
Tshape0*-
_class#
!loc:@loss/dense_12_loss/truediv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
9training/Adam/gradients/loss/dense_12_loss/Sum_grad/ShapeShapedense_12/Softmax*
T0*
out_type0*)
_class
loc:@loss/dense_12_loss/Sum*
_output_shapes
:
Ľ
8training/Adam/gradients/loss/dense_12_loss/Sum_grad/SizeConst*
value	B :*)
_class
loc:@loss/dense_12_loss/Sum*
dtype0*
_output_shapes
: 
î
7training/Adam/gradients/loss/dense_12_loss/Sum_grad/addAdd(loss/dense_12_loss/Sum/reduction_indices8training/Adam/gradients/loss/dense_12_loss/Sum_grad/Size*
T0*)
_class
loc:@loss/dense_12_loss/Sum*
_output_shapes
: 

7training/Adam/gradients/loss/dense_12_loss/Sum_grad/modFloorMod7training/Adam/gradients/loss/dense_12_loss/Sum_grad/add8training/Adam/gradients/loss/dense_12_loss/Sum_grad/Size*
T0*)
_class
loc:@loss/dense_12_loss/Sum*
_output_shapes
: 
Š
;training/Adam/gradients/loss/dense_12_loss/Sum_grad/Shape_1Const*
valueB *)
_class
loc:@loss/dense_12_loss/Sum*
dtype0*
_output_shapes
: 
Ź
?training/Adam/gradients/loss/dense_12_loss/Sum_grad/range/startConst*
value	B : *)
_class
loc:@loss/dense_12_loss/Sum*
dtype0*
_output_shapes
: 
Ź
?training/Adam/gradients/loss/dense_12_loss/Sum_grad/range/deltaConst*
value	B :*)
_class
loc:@loss/dense_12_loss/Sum*
dtype0*
_output_shapes
: 
Ń
9training/Adam/gradients/loss/dense_12_loss/Sum_grad/rangeRange?training/Adam/gradients/loss/dense_12_loss/Sum_grad/range/start8training/Adam/gradients/loss/dense_12_loss/Sum_grad/Size?training/Adam/gradients/loss/dense_12_loss/Sum_grad/range/delta*)
_class
loc:@loss/dense_12_loss/Sum*
_output_shapes
:*

Tidx0
Ť
>training/Adam/gradients/loss/dense_12_loss/Sum_grad/Fill/valueConst*
value	B :*)
_class
loc:@loss/dense_12_loss/Sum*
dtype0*
_output_shapes
: 

8training/Adam/gradients/loss/dense_12_loss/Sum_grad/FillFill;training/Adam/gradients/loss/dense_12_loss/Sum_grad/Shape_1>training/Adam/gradients/loss/dense_12_loss/Sum_grad/Fill/value*
T0*

index_type0*)
_class
loc:@loss/dense_12_loss/Sum*
_output_shapes
: 

Atraining/Adam/gradients/loss/dense_12_loss/Sum_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_12_loss/Sum_grad/range7training/Adam/gradients/loss/dense_12_loss/Sum_grad/mod9training/Adam/gradients/loss/dense_12_loss/Sum_grad/Shape8training/Adam/gradients/loss/dense_12_loss/Sum_grad/Fill*
T0*)
_class
loc:@loss/dense_12_loss/Sum*
N*
_output_shapes
:
Ş
=training/Adam/gradients/loss/dense_12_loss/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*)
_class
loc:@loss/dense_12_loss/Sum

;training/Adam/gradients/loss/dense_12_loss/Sum_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_12_loss/Sum_grad/DynamicStitch=training/Adam/gradients/loss/dense_12_loss/Sum_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_12_loss/Sum*
_output_shapes
:

<training/Adam/gradients/loss/dense_12_loss/Sum_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_12_loss/Sum_grad/Shape;training/Adam/gradients/loss/dense_12_loss/Sum_grad/Maximum*
T0*)
_class
loc:@loss/dense_12_loss/Sum*
_output_shapes
:
Ŕ
;training/Adam/gradients/loss/dense_12_loss/Sum_grad/ReshapeReshapeAtraining/Adam/gradients/loss/dense_12_loss/truediv_grad/Reshape_1Atraining/Adam/gradients/loss/dense_12_loss/Sum_grad/DynamicStitch*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*
Tshape0*)
_class
loc:@loss/dense_12_loss/Sum
Ş
8training/Adam/gradients/loss/dense_12_loss/Sum_grad/TileTile;training/Adam/gradients/loss/dense_12_loss/Sum_grad/Reshape<training/Adam/gradients/loss/dense_12_loss/Sum_grad/floordiv*

Tmultiples0*
T0*)
_class
loc:@loss/dense_12_loss/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

training/Adam/gradients/AddNAddN?training/Adam/gradients/loss/dense_12_loss/truediv_grad/Reshape8training/Adam/gradients/loss/dense_12_loss/Sum_grad/Tile*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*-
_class#
!loc:@loss/dense_12_loss/truediv
ż
1training/Adam/gradients/dense_12/Softmax_grad/mulMultraining/Adam/gradients/AddNdense_12/Softmax*
T0*#
_class
loc:@dense_12/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ł
Ctraining/Adam/gradients/dense_12/Softmax_grad/Sum/reduction_indicesConst*
valueB :
˙˙˙˙˙˙˙˙˙*#
_class
loc:@dense_12/Softmax*
dtype0*
_output_shapes
: 
¤
1training/Adam/gradients/dense_12/Softmax_grad/SumSum1training/Adam/gradients/dense_12/Softmax_grad/mulCtraining/Adam/gradients/dense_12/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0*#
_class
loc:@dense_12/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
1training/Adam/gradients/dense_12/Softmax_grad/subSubtraining/Adam/gradients/AddN1training/Adam/gradients/dense_12/Softmax_grad/Sum*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*#
_class
loc:@dense_12/Softmax
Ö
3training/Adam/gradients/dense_12/Softmax_grad/mul_1Mul1training/Adam/gradients/dense_12/Softmax_grad/subdense_12/Softmax*
T0*#
_class
loc:@dense_12/Softmax*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
9training/Adam/gradients/dense_12/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/dense_12/Softmax_grad/mul_1*
T0*#
_class
loc:@dense_12/BiasAdd*
data_formatNHWC*
_output_shapes
:

3training/Adam/gradients/dense_12/MatMul_grad/MatMulMatMul3training/Adam/gradients/dense_12/Softmax_grad/mul_1dense_12/MatMul/ReadVariableOp*
transpose_b(*
T0*"
_class
loc:@dense_12/MatMul*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
÷
5training/Adam/gradients/dense_12/MatMul_grad/MatMul_1MatMuldense_11/Relu3training/Adam/gradients/dense_12/Softmax_grad/mul_1*
transpose_b( *
T0*"
_class
loc:@dense_12/MatMul*
transpose_a(*
_output_shapes
:	
Ř
3training/Adam/gradients/dense_11/Relu_grad/ReluGradReluGrad3training/Adam/gradients/dense_12/MatMul_grad/MatMuldense_11/Relu*
T0* 
_class
loc:@dense_11/Relu*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ß
9training/Adam/gradients/dense_11/BiasAdd_grad/BiasAddGradBiasAddGrad3training/Adam/gradients/dense_11/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes	
:*
T0*#
_class
loc:@dense_11/BiasAdd

3training/Adam/gradients/dense_11/MatMul_grad/MatMulMatMul3training/Adam/gradients/dense_11/Relu_grad/ReluGraddense_11/MatMul/ReadVariableOp*
T0*"
_class
loc:@dense_11/MatMul*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙1*
transpose_b(
ü
5training/Adam/gradients/dense_11/MatMul_grad/MatMul_1MatMulflatten_6/Reshape3training/Adam/gradients/dense_11/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_11/MatMul*
transpose_a(* 
_output_shapes
:
1*
transpose_b( 
˛
4training/Adam/gradients/flatten_6/Reshape_grad/ShapeShapemax_pooling2d_12/MaxPool*
T0*
out_type0*$
_class
loc:@flatten_6/Reshape*
_output_shapes
:

6training/Adam/gradients/flatten_6/Reshape_grad/ReshapeReshape3training/Adam/gradients/dense_11/MatMul_grad/MatMul4training/Adam/gradients/flatten_6/Reshape_grad/Shape*
T0*
Tshape0*$
_class
loc:@flatten_6/Reshape*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ě
Atraining/Adam/gradients/max_pooling2d_12/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_12/Relumax_pooling2d_12/MaxPool6training/Adam/gradients/flatten_6/Reshape_grad/Reshape*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
T0*+
_class!
loc:@max_pooling2d_12/MaxPool*
data_formatNHWC*
strides

đ
4training/Adam/gradients/conv2d_12/Relu_grad/ReluGradReluGradAtraining/Adam/gradients/max_pooling2d_12/MaxPool_grad/MaxPoolGradconv2d_12/Relu*
T0*!
_class
loc:@conv2d_12/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
á
:training/Adam/gradients/conv2d_12/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/conv2d_12/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_12/BiasAdd*
data_formatNHWC*
_output_shapes
: 
â
4training/Adam/gradients/conv2d_12/Conv2D_grad/ShapeNShapeNmax_pooling2d_11/MaxPoolconv2d_12/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_12/Conv2D*
N* 
_output_shapes
::
ł
Atraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_12/Conv2D_grad/ShapeNconv2d_12/Conv2D/ReadVariableOp4training/Adam/gradients/conv2d_12/Relu_grad/ReluGrad*
T0*#
_class
loc:@conv2d_12/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ *
	dilations

§
Btraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFiltermax_pooling2d_11/MaxPool6training/Adam/gradients/conv2d_12/Conv2D_grad/ShapeN:14training/Adam/gradients/conv2d_12/Relu_grad/ReluGrad*
paddingVALID*&
_output_shapes
:  *
	dilations
*
T0*#
_class
loc:@conv2d_12/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
÷
Atraining/Adam/gradients/max_pooling2d_11/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_11/Relumax_pooling2d_11/MaxPoolAtraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropInput*
strides
*
data_formatNHWC*
ksize
*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> *
T0*+
_class!
loc:@max_pooling2d_11/MaxPool
đ
4training/Adam/gradients/conv2d_11/Relu_grad/ReluGradReluGradAtraining/Adam/gradients/max_pooling2d_11/MaxPool_grad/MaxPoolGradconv2d_11/Relu*
T0*!
_class
loc:@conv2d_11/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙>> 
á
:training/Adam/gradients/conv2d_11/BiasAdd_grad/BiasAddGradBiasAddGrad4training/Adam/gradients/conv2d_11/Relu_grad/ReluGrad*
T0*$
_class
loc:@conv2d_11/BiasAdd*
data_formatNHWC*
_output_shapes
: 
Ů
4training/Adam/gradients/conv2d_11/Conv2D_grad/ShapeNShapeNconv2d_11_inputconv2d_11/Conv2D/ReadVariableOp*
T0*
out_type0*#
_class
loc:@conv2d_11/Conv2D*
N* 
_output_shapes
::
ł
Atraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput4training/Adam/gradients/conv2d_11/Conv2D_grad/ShapeNconv2d_11/Conv2D/ReadVariableOp4training/Adam/gradients/conv2d_11/Relu_grad/ReluGrad*
	dilations
*
T0*#
_class
loc:@conv2d_11/Conv2D*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@@

Btraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv2d_11_input6training/Adam/gradients/conv2d_11/Conv2D_grad/ShapeN:14training/Adam/gradients/conv2d_11/Relu_grad/ReluGrad*&
_output_shapes
: *
	dilations
*
T0*#
_class
loc:@conv2d_11/Conv2D*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
U
training/Adam/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
k
!training/Adam/AssignAddVariableOpAssignAddVariableOpAdam/iterationstraining/Adam/Const*
dtype0	

training/Adam/ReadVariableOpReadVariableOpAdam/iterations"^training/Adam/AssignAddVariableOp*
dtype0	*
_output_shapes
: 
i
!training/Adam/Cast/ReadVariableOpReadVariableOpAdam/iterations*
dtype0	*
_output_shapes
: 
}
training/Adam/CastCast!training/Adam/Cast/ReadVariableOp*

SrcT0	*
Truncate( *

DstT0*
_output_shapes
: 
X
training/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
d
 training/Adam/Pow/ReadVariableOpReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
n
training/Adam/PowPow training/Adam/Pow/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_2Const*
valueB
 *  *
dtype0*
_output_shapes
: 
y
#training/Adam/clip_by_value/MinimumMinimumtraining/Adam/subtraining/Adam/Const_2*
T0*
_output_shapes
: 

training/Adam/clip_by_valueMaximum#training/Adam/clip_by_value/Minimumtraining/Adam/Const_1*
T0*
_output_shapes
: 
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
f
"training/Adam/Pow_1/ReadVariableOpReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
r
training/Adam/Pow_1Pow"training/Adam/Pow_1/ReadVariableOptraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
T0*
_output_shapes
: 
^
training/Adam/ReadVariableOp_1ReadVariableOpAdam/lr*
dtype0*
_output_shapes
: 
p
training/Adam/mulMultraining/Adam/ReadVariableOp_1training/Adam/truediv*
T0*
_output_shapes
: 
x
training/Adam/zerosConst*
dtype0*&
_output_shapes
: *%
valueB *    
Ě
training/Adam/VariableVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *'
shared_nametraining/Adam/Variable*)
_class
loc:@training/Adam/Variable
}
7training/Adam/Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 

training/Adam/Variable/AssignAssignVariableOptraining/Adam/Variabletraining/Adam/zeros*)
_class
loc:@training/Adam/Variable*
dtype0
´
*training/Adam/Variable/Read/ReadVariableOpReadVariableOptraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*&
_output_shapes
: 
b
training/Adam/zeros_1Const*
valueB *    *
dtype0*
_output_shapes
: 
Ć
training/Adam/Variable_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
	container *
shape: 

9training/Adam/Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 

training/Adam/Variable_1/AssignAssignVariableOptraining/Adam/Variable_1training/Adam/zeros_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0
Ž
,training/Adam/Variable_1/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
: 
~
%training/Adam/zeros_2/shape_as_tensorConst*%
valueB"              *
dtype0*
_output_shapes
:
`
training/Adam/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
¤
training/Adam/zeros_2Fill%training/Adam/zeros_2/shape_as_tensortraining/Adam/zeros_2/Const*&
_output_shapes
:  *
T0*

index_type0
Ň
training/Adam/Variable_2VarHandleOp*+
_class!
loc:@training/Adam/Variable_2*
	container *
shape:  *
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_2

9training/Adam/Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 

training/Adam/Variable_2/AssignAssignVariableOptraining/Adam/Variable_2training/Adam/zeros_2*
dtype0*+
_class!
loc:@training/Adam/Variable_2
ş
,training/Adam/Variable_2/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_2*+
_class!
loc:@training/Adam/Variable_2*
dtype0*&
_output_shapes
:  
b
training/Adam/zeros_3Const*
dtype0*
_output_shapes
: *
valueB *    
Ć
training/Adam/Variable_3VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
	container *
shape: 

9training/Adam/Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 

training/Adam/Variable_3/AssignAssignVariableOptraining/Adam/Variable_3training/Adam/zeros_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0
Ž
,training/Adam/Variable_3/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_3*+
_class!
loc:@training/Adam/Variable_3*
dtype0*
_output_shapes
: 
v
%training/Adam/zeros_4/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
`
training/Adam/zeros_4/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_4Fill%training/Adam/zeros_4/shape_as_tensortraining/Adam/zeros_4/Const*
T0*

index_type0* 
_output_shapes
:
1
Ě
training/Adam/Variable_4VarHandleOp*
shape:
1*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
	container 

9training/Adam/Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 

training/Adam/Variable_4/AssignAssignVariableOptraining/Adam/Variable_4training/Adam/zeros_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0
´
,training/Adam/Variable_4/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0* 
_output_shapes
:
1
d
training/Adam/zeros_5Const*
dtype0*
_output_shapes	
:*
valueB*    
Ç
training/Adam/Variable_5VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5

9training/Adam/Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 

training/Adam/Variable_5/AssignAssignVariableOptraining/Adam/Variable_5training/Adam/zeros_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0
Ż
,training/Adam/Variable_5/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes	
:
l
training/Adam/zeros_6Const*
dtype0*
_output_shapes
:	*
valueB	*    
Ë
training/Adam/Variable_6VarHandleOp*+
_class!
loc:@training/Adam/Variable_6*
	container *
shape:	*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_6

9training/Adam/Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 

training/Adam/Variable_6/AssignAssignVariableOptraining/Adam/Variable_6training/Adam/zeros_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0
ł
,training/Adam/Variable_6/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*
_output_shapes
:	*+
_class!
loc:@training/Adam/Variable_6
b
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes
:
Ć
training/Adam/Variable_7VarHandleOp*)
shared_nametraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
	container *
shape:*
dtype0*
_output_shapes
: 

9training/Adam/Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 

training/Adam/Variable_7/AssignAssignVariableOptraining/Adam/Variable_7training/Adam/zeros_7*
dtype0*+
_class!
loc:@training/Adam/Variable_7
Ž
,training/Adam/Variable_7/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
:
z
training/Adam/zeros_8Const*%
valueB *    *
dtype0*&
_output_shapes
: 
Ň
training/Adam/Variable_8VarHandleOp*
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
	container *
shape: 

9training/Adam/Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 

training/Adam/Variable_8/AssignAssignVariableOptraining/Adam/Variable_8training/Adam/zeros_8*
dtype0*+
_class!
loc:@training/Adam/Variable_8
ş
,training/Adam/Variable_8/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*&
_output_shapes
: 
b
training/Adam/zeros_9Const*
valueB *    *
dtype0*
_output_shapes
: 
Ć
training/Adam/Variable_9VarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *)
shared_nametraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9

9training/Adam/Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 

training/Adam/Variable_9/AssignAssignVariableOptraining/Adam/Variable_9training/Adam/zeros_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0
Ž
,training/Adam/Variable_9/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 

&training/Adam/zeros_10/shape_as_tensorConst*%
valueB"              *
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
§
training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
T0*

index_type0*&
_output_shapes
:  
Ő
training/Adam/Variable_10VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
	container *
shape:  

:training/Adam/Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
˘
 training/Adam/Variable_10/AssignAssignVariableOptraining/Adam/Variable_10training/Adam/zeros_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0
˝
-training/Adam/Variable_10/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*&
_output_shapes
:  
c
training/Adam/zeros_11Const*
valueB *    *
dtype0*
_output_shapes
: 
É
training/Adam/Variable_11VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
	container *
shape: 

:training/Adam/Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
˘
 training/Adam/Variable_11/AssignAssignVariableOptraining/Adam/Variable_11training/Adam/zeros_11*
dtype0*,
_class"
 loc:@training/Adam/Variable_11
ą
-training/Adam/Variable_11/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 
w
&training/Adam/zeros_12/shape_as_tensorConst*
valueB"     *
dtype0*
_output_shapes
:
a
training/Adam/zeros_12/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ą
training/Adam/zeros_12Fill&training/Adam/zeros_12/shape_as_tensortraining/Adam/zeros_12/Const* 
_output_shapes
:
1*
T0*

index_type0
Ď
training/Adam/Variable_12VarHandleOp*
shape:
1*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
	container 

:training/Adam/Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
˘
 training/Adam/Variable_12/AssignAssignVariableOptraining/Adam/Variable_12training/Adam/zeros_12*
dtype0*,
_class"
 loc:@training/Adam/Variable_12
ˇ
-training/Adam/Variable_12/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_12*,
_class"
 loc:@training/Adam/Variable_12*
dtype0* 
_output_shapes
:
1
e
training/Adam/zeros_13Const*
valueB*    *
dtype0*
_output_shapes	
:
Ę
training/Adam/Variable_13VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
	container *
shape:

:training/Adam/Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
˘
 training/Adam/Variable_13/AssignAssignVariableOptraining/Adam/Variable_13training/Adam/zeros_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0
˛
-training/Adam/Variable_13/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_13*,
_class"
 loc:@training/Adam/Variable_13*
dtype0*
_output_shapes	
:
m
training/Adam/zeros_14Const*
valueB	*    *
dtype0*
_output_shapes
:	
Î
training/Adam/Variable_14VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
	container *
shape:	

:training/Adam/Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
˘
 training/Adam/Variable_14/AssignAssignVariableOptraining/Adam/Variable_14training/Adam/zeros_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0
ś
-training/Adam/Variable_14/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_14*,
_class"
 loc:@training/Adam/Variable_14*
dtype0*
_output_shapes
:	
c
training/Adam/zeros_15Const*
valueB*    *
dtype0*
_output_shapes
:
É
training/Adam/Variable_15VarHandleOp*,
_class"
 loc:@training/Adam/Variable_15*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_15

:training/Adam/Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
˘
 training/Adam/Variable_15/AssignAssignVariableOptraining/Adam/Variable_15training/Adam/zeros_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0
ą
-training/Adam/Variable_15/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_15*,
_class"
 loc:@training/Adam/Variable_15*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_16/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_16/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_16Fill&training/Adam/zeros_16/shape_as_tensortraining/Adam/zeros_16/Const*
_output_shapes
:*
T0*

index_type0
É
training/Adam/Variable_16VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
	container *
shape:

:training/Adam/Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
˘
 training/Adam/Variable_16/AssignAssignVariableOptraining/Adam/Variable_16training/Adam/zeros_16*
dtype0*,
_class"
 loc:@training/Adam/Variable_16
ą
-training/Adam/Variable_16/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_16*,
_class"
 loc:@training/Adam/Variable_16*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_17/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_17/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_17Fill&training/Adam/zeros_17/shape_as_tensortraining/Adam/zeros_17/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_17VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_17*,
_class"
 loc:@training/Adam/Variable_17*
	container *
shape:

:training/Adam/Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
˘
 training/Adam/Variable_17/AssignAssignVariableOptraining/Adam/Variable_17training/Adam/zeros_17*,
_class"
 loc:@training/Adam/Variable_17*
dtype0
ą
-training/Adam/Variable_17/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_17*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_17
p
&training/Adam/zeros_18/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_18/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_18Fill&training/Adam/zeros_18/shape_as_tensortraining/Adam/zeros_18/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_18VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18

:training/Adam/Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
˘
 training/Adam/Variable_18/AssignAssignVariableOptraining/Adam/Variable_18training/Adam/zeros_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0
ą
-training/Adam/Variable_18/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_18*,
_class"
 loc:@training/Adam/Variable_18*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_19/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_19/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_19Fill&training/Adam/zeros_19/shape_as_tensortraining/Adam/zeros_19/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_19VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_19*,
_class"
 loc:@training/Adam/Variable_19*
	container 

:training/Adam/Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
˘
 training/Adam/Variable_19/AssignAssignVariableOptraining/Adam/Variable_19training/Adam/zeros_19*
dtype0*,
_class"
 loc:@training/Adam/Variable_19
ą
-training/Adam/Variable_19/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_19*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_19
p
&training/Adam/zeros_20/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
a
training/Adam/zeros_20/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_20Fill&training/Adam/zeros_20/shape_as_tensortraining/Adam/zeros_20/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_20VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20

:training/Adam/Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
˘
 training/Adam/Variable_20/AssignAssignVariableOptraining/Adam/Variable_20training/Adam/zeros_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0
ą
-training/Adam/Variable_20/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_20*,
_class"
 loc:@training/Adam/Variable_20*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_21/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_21/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_21Fill&training/Adam/zeros_21/shape_as_tensortraining/Adam/zeros_21/Const*
_output_shapes
:*
T0*

index_type0
É
training/Adam/Variable_21VarHandleOp*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
	container *
shape:

:training/Adam/Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
˘
 training/Adam/Variable_21/AssignAssignVariableOptraining/Adam/Variable_21training/Adam/zeros_21*
dtype0*,
_class"
 loc:@training/Adam/Variable_21
ą
-training/Adam/Variable_21/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_21*,
_class"
 loc:@training/Adam/Variable_21*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_22/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_22/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_22Fill&training/Adam/zeros_22/shape_as_tensortraining/Adam/zeros_22/Const*
T0*

index_type0*
_output_shapes
:
É
training/Adam/Variable_22VarHandleOp**
shared_nametraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
	container *
shape:*
dtype0*
_output_shapes
: 

:training/Adam/Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
˘
 training/Adam/Variable_22/AssignAssignVariableOptraining/Adam/Variable_22training/Adam/zeros_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0
ą
-training/Adam/Variable_22/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_22*,
_class"
 loc:@training/Adam/Variable_22*
dtype0*
_output_shapes
:
p
&training/Adam/zeros_23/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_23/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_23Fill&training/Adam/zeros_23/shape_as_tensortraining/Adam/zeros_23/Const*
_output_shapes
:*
T0*

index_type0
É
training/Adam/Variable_23VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_nametraining/Adam/Variable_23*,
_class"
 loc:@training/Adam/Variable_23*
	container 

:training/Adam/Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
˘
 training/Adam/Variable_23/AssignAssignVariableOptraining/Adam/Variable_23training/Adam/zeros_23*,
_class"
 loc:@training/Adam/Variable_23*
dtype0
ą
-training/Adam/Variable_23/Read/ReadVariableOpReadVariableOptraining/Adam/Variable_23*
dtype0*
_output_shapes
:*,
_class"
 loc:@training/Adam/Variable_23
b
training/Adam/ReadVariableOp_2ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

"training/Adam/mul_1/ReadVariableOpReadVariableOptraining/Adam/Variable*
dtype0*&
_output_shapes
: 

training/Adam/mul_1Multraining/Adam/ReadVariableOp_2"training/Adam/mul_1/ReadVariableOp*
T0*&
_output_shapes
: 
b
training/Adam/ReadVariableOp_3ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_2Subtraining/Adam/sub_2/xtraining/Adam/ReadVariableOp_3*
T0*
_output_shapes
: 
¤
training/Adam/mul_2Multraining/Adam/sub_2Btraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
u
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*&
_output_shapes
: *
T0
b
training/Adam/ReadVariableOp_4ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

"training/Adam/mul_3/ReadVariableOpReadVariableOptraining/Adam/Variable_8*
dtype0*&
_output_shapes
: 

training/Adam/mul_3Multraining/Adam/ReadVariableOp_4"training/Adam/mul_3/ReadVariableOp*
T0*&
_output_shapes
: 
b
training/Adam/ReadVariableOp_5ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
training/Adam/sub_3Subtraining/Adam/sub_3/xtraining/Adam/ReadVariableOp_5*
_output_shapes
: *
T0

training/Adam/SquareSquareBtraining/Adam/gradients/conv2d_11/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
: 
v
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*&
_output_shapes
: 
u
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*&
_output_shapes
: *
T0
s
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
T0*&
_output_shapes
: 
Z
training/Adam/Const_3Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_4Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_1/MinimumMinimumtraining/Adam/add_2training/Adam/Const_4*
T0*&
_output_shapes
: 

training/Adam/clip_by_value_1Maximum%training/Adam/clip_by_value_1/Minimumtraining/Adam/Const_3*
T0*&
_output_shapes
: 
l
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
T0*&
_output_shapes
: 
Z
training/Adam/add_3/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
x
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
T0*&
_output_shapes
: 
}
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
T0*&
_output_shapes
: 
w
training/Adam/ReadVariableOp_6ReadVariableOpconv2d_11/kernel*
dtype0*&
_output_shapes
: 

training/Adam/sub_4Subtraining/Adam/ReadVariableOp_6training/Adam/truediv_1*
T0*&
_output_shapes
: 
l
training/Adam/AssignVariableOpAssignVariableOptraining/Adam/Variabletraining/Adam/add_1*
dtype0

training/Adam/ReadVariableOp_7ReadVariableOptraining/Adam/Variable^training/Adam/AssignVariableOp*
dtype0*&
_output_shapes
: 
p
 training/Adam/AssignVariableOp_1AssignVariableOptraining/Adam/Variable_8training/Adam/add_2*
dtype0
˘
training/Adam/ReadVariableOp_8ReadVariableOptraining/Adam/Variable_8!^training/Adam/AssignVariableOp_1*
dtype0*&
_output_shapes
: 
h
 training/Adam/AssignVariableOp_2AssignVariableOpconv2d_11/kerneltraining/Adam/sub_4*
dtype0

training/Adam/ReadVariableOp_9ReadVariableOpconv2d_11/kernel!^training/Adam/AssignVariableOp_2*
dtype0*&
_output_shapes
: 
c
training/Adam/ReadVariableOp_10ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_6/ReadVariableOpReadVariableOptraining/Adam/Variable_1*
dtype0*
_output_shapes
: 

training/Adam/mul_6Multraining/Adam/ReadVariableOp_10"training/Adam/mul_6/ReadVariableOp*
_output_shapes
: *
T0
c
training/Adam/ReadVariableOp_11ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
s
training/Adam/sub_5Subtraining/Adam/sub_5/xtraining/Adam/ReadVariableOp_11*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_5:training/Adam/gradients/conv2d_11/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
: 
c
training/Adam/ReadVariableOp_12ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
w
"training/Adam/mul_8/ReadVariableOpReadVariableOptraining/Adam/Variable_9*
dtype0*
_output_shapes
: 

training/Adam/mul_8Multraining/Adam/ReadVariableOp_12"training/Adam/mul_8/ReadVariableOp*
T0*
_output_shapes
: 
c
training/Adam/ReadVariableOp_13ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_6Subtraining/Adam/sub_6/xtraining/Adam/ReadVariableOp_13*
_output_shapes
: *
T0

training/Adam/Square_1Square:training/Adam/gradients/conv2d_11/BiasAdd_grad/BiasAddGrad*
_output_shapes
: *
T0
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
_output_shapes
: *
T0
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
_output_shapes
: *
T0
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
_output_shapes
: *
T0
Z
training/Adam/Const_5Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_6Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_2/MinimumMinimumtraining/Adam/add_5training/Adam/Const_6*
T0*
_output_shapes
: 

training/Adam/clip_by_value_2Maximum%training/Adam/clip_by_value_2/Minimumtraining/Adam/Const_5*
_output_shapes
: *
T0
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
: 
Z
training/Adam/add_6/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
: 
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
T0*
_output_shapes
: 
j
training/Adam/ReadVariableOp_14ReadVariableOpconv2d_11/bias*
dtype0*
_output_shapes
: 
y
training/Adam/sub_7Subtraining/Adam/ReadVariableOp_14training/Adam/truediv_2*
T0*
_output_shapes
: 
p
 training/Adam/AssignVariableOp_3AssignVariableOptraining/Adam/Variable_1training/Adam/add_4*
dtype0

training/Adam/ReadVariableOp_15ReadVariableOptraining/Adam/Variable_1!^training/Adam/AssignVariableOp_3*
dtype0*
_output_shapes
: 
p
 training/Adam/AssignVariableOp_4AssignVariableOptraining/Adam/Variable_9training/Adam/add_5*
dtype0

training/Adam/ReadVariableOp_16ReadVariableOptraining/Adam/Variable_9!^training/Adam/AssignVariableOp_4*
dtype0*
_output_shapes
: 
f
 training/Adam/AssignVariableOp_5AssignVariableOpconv2d_11/biastraining/Adam/sub_7*
dtype0

training/Adam/ReadVariableOp_17ReadVariableOpconv2d_11/bias!^training/Adam/AssignVariableOp_5*
dtype0*
_output_shapes
: 
c
training/Adam/ReadVariableOp_18ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 

#training/Adam/mul_11/ReadVariableOpReadVariableOptraining/Adam/Variable_2*
dtype0*&
_output_shapes
:  

training/Adam/mul_11Multraining/Adam/ReadVariableOp_18#training/Adam/mul_11/ReadVariableOp*
T0*&
_output_shapes
:  
c
training/Adam/ReadVariableOp_19ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_8/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_8Subtraining/Adam/sub_8/xtraining/Adam/ReadVariableOp_19*
T0*
_output_shapes
: 
Ľ
training/Adam/mul_12Multraining/Adam/sub_8Btraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:  *
T0
w
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*&
_output_shapes
:  
c
training/Adam/ReadVariableOp_20ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_13/ReadVariableOpReadVariableOptraining/Adam/Variable_10*
dtype0*&
_output_shapes
:  

training/Adam/mul_13Multraining/Adam/ReadVariableOp_20#training/Adam/mul_13/ReadVariableOp*
T0*&
_output_shapes
:  
c
training/Adam/ReadVariableOp_21ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
Z
training/Adam/sub_9/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
s
training/Adam/sub_9Subtraining/Adam/sub_9/xtraining/Adam/ReadVariableOp_21*
T0*
_output_shapes
: 

training/Adam/Square_2SquareBtraining/Adam/gradients/conv2d_12/Conv2D_grad/Conv2DBackpropFilter*
T0*&
_output_shapes
:  
y
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*&
_output_shapes
:  *
T0
w
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
T0*&
_output_shapes
:  
t
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*&
_output_shapes
:  
Z
training/Adam/Const_7Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_8Const*
dtype0*
_output_shapes
: *
valueB
 *  

%training/Adam/clip_by_value_3/MinimumMinimumtraining/Adam/add_8training/Adam/Const_8*
T0*&
_output_shapes
:  

training/Adam/clip_by_value_3Maximum%training/Adam/clip_by_value_3/Minimumtraining/Adam/Const_7*&
_output_shapes
:  *
T0
l
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
T0*&
_output_shapes
:  
Z
training/Adam/add_9/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
x
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*&
_output_shapes
:  *
T0
~
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
T0*&
_output_shapes
:  
x
training/Adam/ReadVariableOp_22ReadVariableOpconv2d_12/kernel*
dtype0*&
_output_shapes
:  

training/Adam/sub_10Subtraining/Adam/ReadVariableOp_22training/Adam/truediv_3*
T0*&
_output_shapes
:  
p
 training/Adam/AssignVariableOp_6AssignVariableOptraining/Adam/Variable_2training/Adam/add_7*
dtype0
Ł
training/Adam/ReadVariableOp_23ReadVariableOptraining/Adam/Variable_2!^training/Adam/AssignVariableOp_6*
dtype0*&
_output_shapes
:  
q
 training/Adam/AssignVariableOp_7AssignVariableOptraining/Adam/Variable_10training/Adam/add_8*
dtype0
¤
training/Adam/ReadVariableOp_24ReadVariableOptraining/Adam/Variable_10!^training/Adam/AssignVariableOp_7*
dtype0*&
_output_shapes
:  
i
 training/Adam/AssignVariableOp_8AssignVariableOpconv2d_12/kerneltraining/Adam/sub_10*
dtype0

training/Adam/ReadVariableOp_25ReadVariableOpconv2d_12/kernel!^training/Adam/AssignVariableOp_8*
dtype0*&
_output_shapes
:  
c
training/Adam/ReadVariableOp_26ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_16/ReadVariableOpReadVariableOptraining/Adam/Variable_3*
dtype0*
_output_shapes
: 

training/Adam/mul_16Multraining/Adam/ReadVariableOp_26#training/Adam/mul_16/ReadVariableOp*
T0*
_output_shapes
: 
c
training/Adam/ReadVariableOp_27ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_11Subtraining/Adam/sub_11/xtraining/Adam/ReadVariableOp_27*
T0*
_output_shapes
: 

training/Adam/mul_17Multraining/Adam/sub_11:training/Adam/gradients/conv2d_12/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
: 
c
training/Adam/ReadVariableOp_28ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_18/ReadVariableOpReadVariableOptraining/Adam/Variable_11*
dtype0*
_output_shapes
: 

training/Adam/mul_18Multraining/Adam/ReadVariableOp_28#training/Adam/mul_18/ReadVariableOp*
T0*
_output_shapes
: 
c
training/Adam/ReadVariableOp_29ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_12/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_12Subtraining/Adam/sub_12/xtraining/Adam/ReadVariableOp_29*
T0*
_output_shapes
: 

training/Adam/Square_3Square:training/Adam/gradients/conv2d_12/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
: 
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
: 
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
: 
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
_output_shapes
: *
T0
Z
training/Adam/Const_9Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_10Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_4/MinimumMinimumtraining/Adam/add_11training/Adam/Const_10*
T0*
_output_shapes
: 

training/Adam/clip_by_value_4Maximum%training/Adam/clip_by_value_4/Minimumtraining/Adam/Const_9*
T0*
_output_shapes
: 
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
: 
[
training/Adam/add_12/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
_output_shapes
: *
T0
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
_output_shapes
: *
T0
j
training/Adam/ReadVariableOp_30ReadVariableOpconv2d_12/bias*
dtype0*
_output_shapes
: 
z
training/Adam/sub_13Subtraining/Adam/ReadVariableOp_30training/Adam/truediv_4*
_output_shapes
: *
T0
q
 training/Adam/AssignVariableOp_9AssignVariableOptraining/Adam/Variable_3training/Adam/add_10*
dtype0

training/Adam/ReadVariableOp_31ReadVariableOptraining/Adam/Variable_3!^training/Adam/AssignVariableOp_9*
dtype0*
_output_shapes
: 
s
!training/Adam/AssignVariableOp_10AssignVariableOptraining/Adam/Variable_11training/Adam/add_11*
dtype0

training/Adam/ReadVariableOp_32ReadVariableOptraining/Adam/Variable_11"^training/Adam/AssignVariableOp_10*
dtype0*
_output_shapes
: 
h
!training/Adam/AssignVariableOp_11AssignVariableOpconv2d_12/biastraining/Adam/sub_13*
dtype0

training/Adam/ReadVariableOp_33ReadVariableOpconv2d_12/bias"^training/Adam/AssignVariableOp_11*
dtype0*
_output_shapes
: 
c
training/Adam/ReadVariableOp_34ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
~
#training/Adam/mul_21/ReadVariableOpReadVariableOptraining/Adam/Variable_4*
dtype0* 
_output_shapes
:
1

training/Adam/mul_21Multraining/Adam/ReadVariableOp_34#training/Adam/mul_21/ReadVariableOp*
T0* 
_output_shapes
:
1
c
training/Adam/ReadVariableOp_35ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_14/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_14Subtraining/Adam/sub_14/xtraining/Adam/ReadVariableOp_35*
T0*
_output_shapes
: 

training/Adam/mul_22Multraining/Adam/sub_145training/Adam/gradients/dense_11/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
1
r
training/Adam/add_13Addtraining/Adam/mul_21training/Adam/mul_22*
T0* 
_output_shapes
:
1
c
training/Adam/ReadVariableOp_36ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 

#training/Adam/mul_23/ReadVariableOpReadVariableOptraining/Adam/Variable_12*
dtype0* 
_output_shapes
:
1

training/Adam/mul_23Multraining/Adam/ReadVariableOp_36#training/Adam/mul_23/ReadVariableOp*
T0* 
_output_shapes
:
1
c
training/Adam/ReadVariableOp_37ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_15/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_15Subtraining/Adam/sub_15/xtraining/Adam/ReadVariableOp_37*
T0*
_output_shapes
: 

training/Adam/Square_4Square5training/Adam/gradients/dense_11/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
1
t
training/Adam/mul_24Multraining/Adam/sub_15training/Adam/Square_4*
T0* 
_output_shapes
:
1
r
training/Adam/add_14Addtraining/Adam/mul_23training/Adam/mul_24*
T0* 
_output_shapes
:
1
o
training/Adam/mul_25Multraining/Adam/multraining/Adam/add_13*
T0* 
_output_shapes
:
1
[
training/Adam/Const_11Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_12Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_5/MinimumMinimumtraining/Adam/add_14training/Adam/Const_12* 
_output_shapes
:
1*
T0

training/Adam/clip_by_value_5Maximum%training/Adam/clip_by_value_5/Minimumtraining/Adam/Const_11*
T0* 
_output_shapes
:
1
f
training/Adam/Sqrt_5Sqrttraining/Adam/clip_by_value_5*
T0* 
_output_shapes
:
1
[
training/Adam/add_15/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
t
training/Adam/add_15Addtraining/Adam/Sqrt_5training/Adam/add_15/y*
T0* 
_output_shapes
:
1
y
training/Adam/truediv_5RealDivtraining/Adam/mul_25training/Adam/add_15*
T0* 
_output_shapes
:
1
q
training/Adam/ReadVariableOp_38ReadVariableOpdense_11/kernel*
dtype0* 
_output_shapes
:
1

training/Adam/sub_16Subtraining/Adam/ReadVariableOp_38training/Adam/truediv_5*
T0* 
_output_shapes
:
1
r
!training/Adam/AssignVariableOp_12AssignVariableOptraining/Adam/Variable_4training/Adam/add_13*
dtype0

training/Adam/ReadVariableOp_39ReadVariableOptraining/Adam/Variable_4"^training/Adam/AssignVariableOp_12*
dtype0* 
_output_shapes
:
1
s
!training/Adam/AssignVariableOp_13AssignVariableOptraining/Adam/Variable_12training/Adam/add_14*
dtype0

training/Adam/ReadVariableOp_40ReadVariableOptraining/Adam/Variable_12"^training/Adam/AssignVariableOp_13*
dtype0* 
_output_shapes
:
1
i
!training/Adam/AssignVariableOp_14AssignVariableOpdense_11/kerneltraining/Adam/sub_16*
dtype0

training/Adam/ReadVariableOp_41ReadVariableOpdense_11/kernel"^training/Adam/AssignVariableOp_14*
dtype0* 
_output_shapes
:
1
c
training/Adam/ReadVariableOp_42ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_26/ReadVariableOpReadVariableOptraining/Adam/Variable_5*
dtype0*
_output_shapes	
:

training/Adam/mul_26Multraining/Adam/ReadVariableOp_42#training/Adam/mul_26/ReadVariableOp*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_43ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_17/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_17Subtraining/Adam/sub_17/xtraining/Adam/ReadVariableOp_43*
T0*
_output_shapes
: 

training/Adam/mul_27Multraining/Adam/sub_179training/Adam/gradients/dense_11/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
m
training/Adam/add_16Addtraining/Adam/mul_26training/Adam/mul_27*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_44ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
z
#training/Adam/mul_28/ReadVariableOpReadVariableOptraining/Adam/Variable_13*
dtype0*
_output_shapes	
:

training/Adam/mul_28Multraining/Adam/ReadVariableOp_44#training/Adam/mul_28/ReadVariableOp*
T0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_45ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_18/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_18Subtraining/Adam/sub_18/xtraining/Adam/ReadVariableOp_45*
T0*
_output_shapes
: 

training/Adam/Square_5Square9training/Adam/gradients/dense_11/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
o
training/Adam/mul_29Multraining/Adam/sub_18training/Adam/Square_5*
T0*
_output_shapes	
:
m
training/Adam/add_17Addtraining/Adam/mul_28training/Adam/mul_29*
T0*
_output_shapes	
:
j
training/Adam/mul_30Multraining/Adam/multraining/Adam/add_16*
_output_shapes	
:*
T0
[
training/Adam/Const_13Const*
valueB
 *    *
dtype0*
_output_shapes
: 
[
training/Adam/Const_14Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_6/MinimumMinimumtraining/Adam/add_17training/Adam/Const_14*
T0*
_output_shapes	
:

training/Adam/clip_by_value_6Maximum%training/Adam/clip_by_value_6/Minimumtraining/Adam/Const_13*
_output_shapes	
:*
T0
a
training/Adam/Sqrt_6Sqrttraining/Adam/clip_by_value_6*
_output_shapes	
:*
T0
[
training/Adam/add_18/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
o
training/Adam/add_18Addtraining/Adam/Sqrt_6training/Adam/add_18/y*
T0*
_output_shapes	
:
t
training/Adam/truediv_6RealDivtraining/Adam/mul_30training/Adam/add_18*
T0*
_output_shapes	
:
j
training/Adam/ReadVariableOp_46ReadVariableOpdense_11/bias*
dtype0*
_output_shapes	
:
{
training/Adam/sub_19Subtraining/Adam/ReadVariableOp_46training/Adam/truediv_6*
T0*
_output_shapes	
:
r
!training/Adam/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_5training/Adam/add_16*
dtype0

training/Adam/ReadVariableOp_47ReadVariableOptraining/Adam/Variable_5"^training/Adam/AssignVariableOp_15*
dtype0*
_output_shapes	
:
s
!training/Adam/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_13training/Adam/add_17*
dtype0

training/Adam/ReadVariableOp_48ReadVariableOptraining/Adam/Variable_13"^training/Adam/AssignVariableOp_16*
dtype0*
_output_shapes	
:
g
!training/Adam/AssignVariableOp_17AssignVariableOpdense_11/biastraining/Adam/sub_19*
dtype0

training/Adam/ReadVariableOp_49ReadVariableOpdense_11/bias"^training/Adam/AssignVariableOp_17*
dtype0*
_output_shapes	
:
c
training/Adam/ReadVariableOp_50ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
}
#training/Adam/mul_31/ReadVariableOpReadVariableOptraining/Adam/Variable_6*
dtype0*
_output_shapes
:	

training/Adam/mul_31Multraining/Adam/ReadVariableOp_50#training/Adam/mul_31/ReadVariableOp*
T0*
_output_shapes
:	
c
training/Adam/ReadVariableOp_51ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_20/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_20Subtraining/Adam/sub_20/xtraining/Adam/ReadVariableOp_51*
_output_shapes
: *
T0

training/Adam/mul_32Multraining/Adam/sub_205training/Adam/gradients/dense_12/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	
q
training/Adam/add_19Addtraining/Adam/mul_31training/Adam/mul_32*
T0*
_output_shapes
:	
c
training/Adam/ReadVariableOp_52ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
~
#training/Adam/mul_33/ReadVariableOpReadVariableOptraining/Adam/Variable_14*
dtype0*
_output_shapes
:	

training/Adam/mul_33Multraining/Adam/ReadVariableOp_52#training/Adam/mul_33/ReadVariableOp*
T0*
_output_shapes
:	
c
training/Adam/ReadVariableOp_53ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_21/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_21Subtraining/Adam/sub_21/xtraining/Adam/ReadVariableOp_53*
T0*
_output_shapes
: 

training/Adam/Square_6Square5training/Adam/gradients/dense_12/MatMul_grad/MatMul_1*
_output_shapes
:	*
T0
s
training/Adam/mul_34Multraining/Adam/sub_21training/Adam/Square_6*
_output_shapes
:	*
T0
q
training/Adam/add_20Addtraining/Adam/mul_33training/Adam/mul_34*
T0*
_output_shapes
:	
n
training/Adam/mul_35Multraining/Adam/multraining/Adam/add_19*
_output_shapes
:	*
T0
[
training/Adam/Const_15Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_16Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_7/MinimumMinimumtraining/Adam/add_20training/Adam/Const_16*
T0*
_output_shapes
:	

training/Adam/clip_by_value_7Maximum%training/Adam/clip_by_value_7/Minimumtraining/Adam/Const_15*
_output_shapes
:	*
T0
e
training/Adam/Sqrt_7Sqrttraining/Adam/clip_by_value_7*
T0*
_output_shapes
:	
[
training/Adam/add_21/yConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
s
training/Adam/add_21Addtraining/Adam/Sqrt_7training/Adam/add_21/y*
T0*
_output_shapes
:	
x
training/Adam/truediv_7RealDivtraining/Adam/mul_35training/Adam/add_21*
T0*
_output_shapes
:	
p
training/Adam/ReadVariableOp_54ReadVariableOpdense_12/kernel*
dtype0*
_output_shapes
:	

training/Adam/sub_22Subtraining/Adam/ReadVariableOp_54training/Adam/truediv_7*
T0*
_output_shapes
:	
r
!training/Adam/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_6training/Adam/add_19*
dtype0

training/Adam/ReadVariableOp_55ReadVariableOptraining/Adam/Variable_6"^training/Adam/AssignVariableOp_18*
dtype0*
_output_shapes
:	
s
!training/Adam/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_14training/Adam/add_20*
dtype0

training/Adam/ReadVariableOp_56ReadVariableOptraining/Adam/Variable_14"^training/Adam/AssignVariableOp_19*
dtype0*
_output_shapes
:	
i
!training/Adam/AssignVariableOp_20AssignVariableOpdense_12/kerneltraining/Adam/sub_22*
dtype0

training/Adam/ReadVariableOp_57ReadVariableOpdense_12/kernel"^training/Adam/AssignVariableOp_20*
dtype0*
_output_shapes
:	
c
training/Adam/ReadVariableOp_58ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
x
#training/Adam/mul_36/ReadVariableOpReadVariableOptraining/Adam/Variable_7*
dtype0*
_output_shapes
:

training/Adam/mul_36Multraining/Adam/ReadVariableOp_58#training/Adam/mul_36/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_59ReadVariableOpAdam/beta_1*
dtype0*
_output_shapes
: 
[
training/Adam/sub_23/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
u
training/Adam/sub_23Subtraining/Adam/sub_23/xtraining/Adam/ReadVariableOp_59*
T0*
_output_shapes
: 

training/Adam/mul_37Multraining/Adam/sub_239training/Adam/gradients/dense_12/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_22Addtraining/Adam/mul_36training/Adam/mul_37*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_60ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
y
#training/Adam/mul_38/ReadVariableOpReadVariableOptraining/Adam/Variable_15*
dtype0*
_output_shapes
:

training/Adam/mul_38Multraining/Adam/ReadVariableOp_60#training/Adam/mul_38/ReadVariableOp*
T0*
_output_shapes
:
c
training/Adam/ReadVariableOp_61ReadVariableOpAdam/beta_2*
dtype0*
_output_shapes
: 
[
training/Adam/sub_24/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
training/Adam/sub_24Subtraining/Adam/sub_24/xtraining/Adam/ReadVariableOp_61*
T0*
_output_shapes
: 

training/Adam/Square_7Square9training/Adam/gradients/dense_12/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_39Multraining/Adam/sub_24training/Adam/Square_7*
T0*
_output_shapes
:
l
training/Adam/add_23Addtraining/Adam/mul_38training/Adam/mul_39*
T0*
_output_shapes
:
i
training/Adam/mul_40Multraining/Adam/multraining/Adam/add_22*
T0*
_output_shapes
:
[
training/Adam/Const_17Const*
dtype0*
_output_shapes
: *
valueB
 *    
[
training/Adam/Const_18Const*
valueB
 *  *
dtype0*
_output_shapes
: 

%training/Adam/clip_by_value_8/MinimumMinimumtraining/Adam/add_23training/Adam/Const_18*
T0*
_output_shapes
:

training/Adam/clip_by_value_8Maximum%training/Adam/clip_by_value_8/Minimumtraining/Adam/Const_17*
T0*
_output_shapes
:
`
training/Adam/Sqrt_8Sqrttraining/Adam/clip_by_value_8*
T0*
_output_shapes
:
[
training/Adam/add_24/yConst*
dtype0*
_output_shapes
: *
valueB
 *żÖ3
n
training/Adam/add_24Addtraining/Adam/Sqrt_8training/Adam/add_24/y*
_output_shapes
:*
T0
s
training/Adam/truediv_8RealDivtraining/Adam/mul_40training/Adam/add_24*
_output_shapes
:*
T0
i
training/Adam/ReadVariableOp_62ReadVariableOpdense_12/bias*
dtype0*
_output_shapes
:
z
training/Adam/sub_25Subtraining/Adam/ReadVariableOp_62training/Adam/truediv_8*
T0*
_output_shapes
:
r
!training/Adam/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_7training/Adam/add_22*
dtype0

training/Adam/ReadVariableOp_63ReadVariableOptraining/Adam/Variable_7"^training/Adam/AssignVariableOp_21*
dtype0*
_output_shapes
:
s
!training/Adam/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_15training/Adam/add_23*
dtype0

training/Adam/ReadVariableOp_64ReadVariableOptraining/Adam/Variable_15"^training/Adam/AssignVariableOp_22*
dtype0*
_output_shapes
:
g
!training/Adam/AssignVariableOp_23AssignVariableOpdense_12/biastraining/Adam/sub_25*
dtype0

training/Adam/ReadVariableOp_65ReadVariableOpdense_12/bias"^training/Adam/AssignVariableOp_23*
dtype0*
_output_shapes
:

training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/Adam/ReadVariableOp ^training/Adam/ReadVariableOp_15 ^training/Adam/ReadVariableOp_16 ^training/Adam/ReadVariableOp_17 ^training/Adam/ReadVariableOp_23 ^training/Adam/ReadVariableOp_24 ^training/Adam/ReadVariableOp_25 ^training/Adam/ReadVariableOp_31 ^training/Adam/ReadVariableOp_32 ^training/Adam/ReadVariableOp_33 ^training/Adam/ReadVariableOp_39 ^training/Adam/ReadVariableOp_40 ^training/Adam/ReadVariableOp_41 ^training/Adam/ReadVariableOp_47 ^training/Adam/ReadVariableOp_48 ^training/Adam/ReadVariableOp_49 ^training/Adam/ReadVariableOp_55 ^training/Adam/ReadVariableOp_56 ^training/Adam/ReadVariableOp_57 ^training/Adam/ReadVariableOp_63 ^training/Adam/ReadVariableOp_64 ^training/Adam/ReadVariableOp_65^training/Adam/ReadVariableOp_7^training/Adam/ReadVariableOp_8^training/Adam/ReadVariableOp_9
\
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/Variable_8*
_output_shapes
: 
]
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/Variable_20*
_output_shapes
: 
^
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/Variable_12*
_output_shapes
: 
^
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/Variable_16*
_output_shapes
: 
^
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/Variable_10*
_output_shapes
: 
^
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/Variable_17*
_output_shapes
: 
]
VarIsInitializedOp_14VarIsInitializedOptraining/Adam/Variable_3*
_output_shapes
: 
T
VarIsInitializedOp_15VarIsInitializedOpAdam/iterations*
_output_shapes
: 
^
VarIsInitializedOp_16VarIsInitializedOptraining/Adam/Variable_13*
_output_shapes
: 
^
VarIsInitializedOp_17VarIsInitializedOptraining/Adam/Variable_19*
_output_shapes
: 
]
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/Variable_6*
_output_shapes
: 
]
VarIsInitializedOp_19VarIsInitializedOptraining/Adam/Variable_5*
_output_shapes
: 
^
VarIsInitializedOp_20VarIsInitializedOptraining/Adam/Variable_18*
_output_shapes
: 
]
VarIsInitializedOp_21VarIsInitializedOptraining/Adam/Variable_9*
_output_shapes
: 
^
VarIsInitializedOp_22VarIsInitializedOptraining/Adam/Variable_11*
_output_shapes
: 
^
VarIsInitializedOp_23VarIsInitializedOptraining/Adam/Variable_15*
_output_shapes
: 
O
VarIsInitializedOp_24VarIsInitializedOp
Adam/decay*
_output_shapes
: 
]
VarIsInitializedOp_25VarIsInitializedOptraining/Adam/Variable_2*
_output_shapes
: 
[
VarIsInitializedOp_26VarIsInitializedOptraining/Adam/Variable*
_output_shapes
: 
^
VarIsInitializedOp_27VarIsInitializedOptraining/Adam/Variable_14*
_output_shapes
: 
]
VarIsInitializedOp_28VarIsInitializedOptraining/Adam/Variable_4*
_output_shapes
: 
L
VarIsInitializedOp_29VarIsInitializedOpAdam/lr*
_output_shapes
: 
]
VarIsInitializedOp_30VarIsInitializedOptraining/Adam/Variable_7*
_output_shapes
: 
^
VarIsInitializedOp_31VarIsInitializedOptraining/Adam/Variable_23*
_output_shapes
: 
]
VarIsInitializedOp_32VarIsInitializedOptraining/Adam/Variable_1*
_output_shapes
: 
^
VarIsInitializedOp_33VarIsInitializedOptraining/Adam/Variable_22*
_output_shapes
: 
P
VarIsInitializedOp_34VarIsInitializedOpAdam/beta_1*
_output_shapes
: 
^
VarIsInitializedOp_35VarIsInitializedOptraining/Adam/Variable_21*
_output_shapes
: 
P
VarIsInitializedOp_36VarIsInitializedOpAdam/beta_2*
_output_shapes
: 
˛
init_1NoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign!^training/Adam/Variable_12/Assign!^training/Adam/Variable_13/Assign!^training/Adam/Variable_14/Assign!^training/Adam/Variable_15/Assign!^training/Adam/Variable_16/Assign!^training/Adam/Variable_17/Assign!^training/Adam/Variable_18/Assign!^training/Adam/Variable_19/Assign ^training/Adam/Variable_2/Assign!^training/Adam/Variable_20/Assign!^training/Adam/Variable_21/Assign!^training/Adam/Variable_22/Assign!^training/Adam/Variable_23/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
N
Placeholder_8Placeholder*
dtype0	*
_output_shapes
: *
shape: 
S
AssignVariableOp_8AssignVariableOpAdam/iterationsPlaceholder_8*
dtype0	
m
ReadVariableOp_8ReadVariableOpAdam/iterations^AssignVariableOp_8*
dtype0	*
_output_shapes
: 
n
Placeholder_9Placeholder*
dtype0*&
_output_shapes
: *
shape: 
Z
AssignVariableOp_9AssignVariableOptraining/Adam/VariablePlaceholder_9*
dtype0

ReadVariableOp_9ReadVariableOptraining/Adam/Variable^AssignVariableOp_9*
dtype0*&
_output_shapes
: 
W
Placeholder_10Placeholder*
dtype0*
_output_shapes
: *
shape: 
^
AssignVariableOp_10AssignVariableOptraining/Adam/Variable_1Placeholder_10*
dtype0
|
ReadVariableOp_10ReadVariableOptraining/Adam/Variable_1^AssignVariableOp_10*
dtype0*
_output_shapes
: 
o
Placeholder_11Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
^
AssignVariableOp_11AssignVariableOptraining/Adam/Variable_2Placeholder_11*
dtype0

ReadVariableOp_11ReadVariableOptraining/Adam/Variable_2^AssignVariableOp_11*
dtype0*&
_output_shapes
:  
W
Placeholder_12Placeholder*
dtype0*
_output_shapes
: *
shape: 
^
AssignVariableOp_12AssignVariableOptraining/Adam/Variable_3Placeholder_12*
dtype0
|
ReadVariableOp_12ReadVariableOptraining/Adam/Variable_3^AssignVariableOp_12*
dtype0*
_output_shapes
: 
c
Placeholder_13Placeholder*
shape:
1*
dtype0* 
_output_shapes
:
1
^
AssignVariableOp_13AssignVariableOptraining/Adam/Variable_4Placeholder_13*
dtype0

ReadVariableOp_13ReadVariableOptraining/Adam/Variable_4^AssignVariableOp_13*
dtype0* 
_output_shapes
:
1
Y
Placeholder_14Placeholder*
dtype0*
_output_shapes	
:*
shape:
^
AssignVariableOp_14AssignVariableOptraining/Adam/Variable_5Placeholder_14*
dtype0
}
ReadVariableOp_14ReadVariableOptraining/Adam/Variable_5^AssignVariableOp_14*
dtype0*
_output_shapes	
:
a
Placeholder_15Placeholder*
shape:	*
dtype0*
_output_shapes
:	
^
AssignVariableOp_15AssignVariableOptraining/Adam/Variable_6Placeholder_15*
dtype0

ReadVariableOp_15ReadVariableOptraining/Adam/Variable_6^AssignVariableOp_15*
dtype0*
_output_shapes
:	
W
Placeholder_16Placeholder*
dtype0*
_output_shapes
:*
shape:
^
AssignVariableOp_16AssignVariableOptraining/Adam/Variable_7Placeholder_16*
dtype0
|
ReadVariableOp_16ReadVariableOptraining/Adam/Variable_7^AssignVariableOp_16*
dtype0*
_output_shapes
:
o
Placeholder_17Placeholder*
dtype0*&
_output_shapes
: *
shape: 
^
AssignVariableOp_17AssignVariableOptraining/Adam/Variable_8Placeholder_17*
dtype0

ReadVariableOp_17ReadVariableOptraining/Adam/Variable_8^AssignVariableOp_17*
dtype0*&
_output_shapes
: 
W
Placeholder_18Placeholder*
dtype0*
_output_shapes
: *
shape: 
^
AssignVariableOp_18AssignVariableOptraining/Adam/Variable_9Placeholder_18*
dtype0
|
ReadVariableOp_18ReadVariableOptraining/Adam/Variable_9^AssignVariableOp_18*
dtype0*
_output_shapes
: 
o
Placeholder_19Placeholder*
dtype0*&
_output_shapes
:  *
shape:  
_
AssignVariableOp_19AssignVariableOptraining/Adam/Variable_10Placeholder_19*
dtype0

ReadVariableOp_19ReadVariableOptraining/Adam/Variable_10^AssignVariableOp_19*
dtype0*&
_output_shapes
:  
W
Placeholder_20Placeholder*
shape: *
dtype0*
_output_shapes
: 
_
AssignVariableOp_20AssignVariableOptraining/Adam/Variable_11Placeholder_20*
dtype0
}
ReadVariableOp_20ReadVariableOptraining/Adam/Variable_11^AssignVariableOp_20*
dtype0*
_output_shapes
: 
c
Placeholder_21Placeholder*
dtype0* 
_output_shapes
:
1*
shape:
1
_
AssignVariableOp_21AssignVariableOptraining/Adam/Variable_12Placeholder_21*
dtype0

ReadVariableOp_21ReadVariableOptraining/Adam/Variable_12^AssignVariableOp_21*
dtype0* 
_output_shapes
:
1
Y
Placeholder_22Placeholder*
dtype0*
_output_shapes	
:*
shape:
_
AssignVariableOp_22AssignVariableOptraining/Adam/Variable_13Placeholder_22*
dtype0
~
ReadVariableOp_22ReadVariableOptraining/Adam/Variable_13^AssignVariableOp_22*
dtype0*
_output_shapes	
:
a
Placeholder_23Placeholder*
dtype0*
_output_shapes
:	*
shape:	
_
AssignVariableOp_23AssignVariableOptraining/Adam/Variable_14Placeholder_23*
dtype0

ReadVariableOp_23ReadVariableOptraining/Adam/Variable_14^AssignVariableOp_23*
dtype0*
_output_shapes
:	
W
Placeholder_24Placeholder*
dtype0*
_output_shapes
:*
shape:
_
AssignVariableOp_24AssignVariableOptraining/Adam/Variable_15Placeholder_24*
dtype0
}
ReadVariableOp_24ReadVariableOptraining/Adam/Variable_15^AssignVariableOp_24*
dtype0*
_output_shapes
:
W
Placeholder_25Placeholder*
shape:*
dtype0*
_output_shapes
:
_
AssignVariableOp_25AssignVariableOptraining/Adam/Variable_16Placeholder_25*
dtype0
}
ReadVariableOp_25ReadVariableOptraining/Adam/Variable_16^AssignVariableOp_25*
dtype0*
_output_shapes
:
W
Placeholder_26Placeholder*
dtype0*
_output_shapes
:*
shape:
_
AssignVariableOp_26AssignVariableOptraining/Adam/Variable_17Placeholder_26*
dtype0
}
ReadVariableOp_26ReadVariableOptraining/Adam/Variable_17^AssignVariableOp_26*
dtype0*
_output_shapes
:
W
Placeholder_27Placeholder*
dtype0*
_output_shapes
:*
shape:
_
AssignVariableOp_27AssignVariableOptraining/Adam/Variable_18Placeholder_27*
dtype0
}
ReadVariableOp_27ReadVariableOptraining/Adam/Variable_18^AssignVariableOp_27*
dtype0*
_output_shapes
:
W
Placeholder_28Placeholder*
shape:*
dtype0*
_output_shapes
:
_
AssignVariableOp_28AssignVariableOptraining/Adam/Variable_19Placeholder_28*
dtype0
}
ReadVariableOp_28ReadVariableOptraining/Adam/Variable_19^AssignVariableOp_28*
dtype0*
_output_shapes
:
W
Placeholder_29Placeholder*
dtype0*
_output_shapes
:*
shape:
_
AssignVariableOp_29AssignVariableOptraining/Adam/Variable_20Placeholder_29*
dtype0
}
ReadVariableOp_29ReadVariableOptraining/Adam/Variable_20^AssignVariableOp_29*
dtype0*
_output_shapes
:
W
Placeholder_30Placeholder*
dtype0*
_output_shapes
:*
shape:
_
AssignVariableOp_30AssignVariableOptraining/Adam/Variable_21Placeholder_30*
dtype0
}
ReadVariableOp_30ReadVariableOptraining/Adam/Variable_21^AssignVariableOp_30*
dtype0*
_output_shapes
:
W
Placeholder_31Placeholder*
dtype0*
_output_shapes
:*
shape:
_
AssignVariableOp_31AssignVariableOptraining/Adam/Variable_22Placeholder_31*
dtype0
}
ReadVariableOp_31ReadVariableOptraining/Adam/Variable_22^AssignVariableOp_31*
dtype0*
_output_shapes
:
W
Placeholder_32Placeholder*
dtype0*
_output_shapes
:*
shape:
_
AssignVariableOp_32AssignVariableOptraining/Adam/Variable_23Placeholder_32*
dtype0
}
ReadVariableOp_32ReadVariableOptraining/Adam/Variable_23^AssignVariableOp_32*
dtype0*
_output_shapes
:
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_b6903ba277e64eeaa5193f7cf64465e3/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
˘
save/SaveV2/tensor_namesConst*Ő
valueËBČ%BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBconv2d_11/biasBconv2d_11/kernelBconv2d_12/biasBconv2d_12/kernelBdense_11/biasBdense_11/kernelBdense_12/biasBdense_12/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:%
­
save/SaveV2/shape_and_slicesConst*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
ź
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp#Adam/iterations/Read/ReadVariableOpAdam/lr/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_12/bias/Read/ReadVariableOp$conv2d_12/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp*training/Adam/Variable/Read/ReadVariableOp,training/Adam/Variable_1/Read/ReadVariableOp-training/Adam/Variable_10/Read/ReadVariableOp-training/Adam/Variable_11/Read/ReadVariableOp-training/Adam/Variable_12/Read/ReadVariableOp-training/Adam/Variable_13/Read/ReadVariableOp-training/Adam/Variable_14/Read/ReadVariableOp-training/Adam/Variable_15/Read/ReadVariableOp-training/Adam/Variable_16/Read/ReadVariableOp-training/Adam/Variable_17/Read/ReadVariableOp-training/Adam/Variable_18/Read/ReadVariableOp-training/Adam/Variable_19/Read/ReadVariableOp,training/Adam/Variable_2/Read/ReadVariableOp-training/Adam/Variable_20/Read/ReadVariableOp-training/Adam/Variable_21/Read/ReadVariableOp-training/Adam/Variable_22/Read/ReadVariableOp-training/Adam/Variable_23/Read/ReadVariableOp,training/Adam/Variable_3/Read/ReadVariableOp,training/Adam/Variable_4/Read/ReadVariableOp,training/Adam/Variable_5/Read/ReadVariableOp,training/Adam/Variable_6/Read/ReadVariableOp,training/Adam/Variable_7/Read/ReadVariableOp,training/Adam/Variable_8/Read/ReadVariableOp,training/Adam/Variable_9/Read/ReadVariableOp*3
dtypes)
'2%	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
Ľ
save/RestoreV2/tensor_namesConst*Ő
valueËBČ%BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBconv2d_11/biasBconv2d_11/kernelBconv2d_12/biasBconv2d_12/kernelBdense_11/biasBdense_11/kernelBdense_12/biasBdense_12/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_12Btraining/Adam/Variable_13Btraining/Adam/Variable_14Btraining/Adam/Variable_15Btraining/Adam/Variable_16Btraining/Adam/Variable_17Btraining/Adam/Variable_18Btraining/Adam/Variable_19Btraining/Adam/Variable_2Btraining/Adam/Variable_20Btraining/Adam/Variable_21Btraining/Adam/Variable_22Btraining/Adam/Variable_23Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:%
°
save/RestoreV2/shape_and_slicesConst*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:%
Ç
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*Ş
_output_shapes
:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpAdam/beta_1save/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
V
save/AssignVariableOp_1AssignVariableOpAdam/beta_2save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
U
save/AssignVariableOp_2AssignVariableOp
Adam/decaysave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0	*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpAdam/iterationssave/Identity_4*
dtype0	
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
R
save/AssignVariableOp_4AssignVariableOpAdam/lrsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Y
save/AssignVariableOp_5AssignVariableOpconv2d_11/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
[
save/AssignVariableOp_6AssignVariableOpconv2d_11/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
Y
save/AssignVariableOp_7AssignVariableOpconv2d_12/biassave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
[
save/AssignVariableOp_8AssignVariableOpconv2d_12/kernelsave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
_output_shapes
:*
T0
Y
save/AssignVariableOp_9AssignVariableOpdense_11/biassave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
\
save/AssignVariableOp_10AssignVariableOpdense_11/kernelsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
Z
save/AssignVariableOp_11AssignVariableOpdense_12/biassave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
\
save/AssignVariableOp_12AssignVariableOpdense_12/kernelsave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
c
save/AssignVariableOp_13AssignVariableOptraining/Adam/Variablesave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
e
save/AssignVariableOp_14AssignVariableOptraining/Adam/Variable_1save/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
f
save/AssignVariableOp_15AssignVariableOptraining/Adam/Variable_10save/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
_output_shapes
:*
T0
f
save/AssignVariableOp_16AssignVariableOptraining/Adam/Variable_11save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
f
save/AssignVariableOp_17AssignVariableOptraining/Adam/Variable_12save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
f
save/AssignVariableOp_18AssignVariableOptraining/Adam/Variable_13save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
f
save/AssignVariableOp_19AssignVariableOptraining/Adam/Variable_14save/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
_output_shapes
:*
T0
f
save/AssignVariableOp_20AssignVariableOptraining/Adam/Variable_15save/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
f
save/AssignVariableOp_21AssignVariableOptraining/Adam/Variable_16save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
f
save/AssignVariableOp_22AssignVariableOptraining/Adam/Variable_17save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
f
save/AssignVariableOp_23AssignVariableOptraining/Adam/Variable_18save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
_output_shapes
:*
T0
f
save/AssignVariableOp_24AssignVariableOptraining/Adam/Variable_19save/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
e
save/AssignVariableOp_25AssignVariableOptraining/Adam/Variable_2save/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
f
save/AssignVariableOp_26AssignVariableOptraining/Adam/Variable_20save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
_output_shapes
:*
T0
f
save/AssignVariableOp_27AssignVariableOptraining/Adam/Variable_21save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
_output_shapes
:*
T0
f
save/AssignVariableOp_28AssignVariableOptraining/Adam/Variable_22save/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
f
save/AssignVariableOp_29AssignVariableOptraining/Adam/Variable_23save/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
e
save/AssignVariableOp_30AssignVariableOptraining/Adam/Variable_3save/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
e
save/AssignVariableOp_31AssignVariableOptraining/Adam/Variable_4save/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
e
save/AssignVariableOp_32AssignVariableOptraining/Adam/Variable_5save/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
e
save/AssignVariableOp_33AssignVariableOptraining/Adam/Variable_6save/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
_output_shapes
:*
T0
e
save/AssignVariableOp_34AssignVariableOptraining/Adam/Variable_7save/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
e
save/AssignVariableOp_35AssignVariableOptraining/Adam/Variable_8save/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
e
save/AssignVariableOp_36AssignVariableOptraining/Adam/Variable_9save/Identity_37*
dtype0
ő
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"É'
trainable_variablesą'Ž'

conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2-conv2d_11/kernel/Initializer/random_uniform:08
w
conv2d_11/bias:0conv2d_11/bias/Assign$conv2d_11/bias/Read/ReadVariableOp:0(2"conv2d_11/bias/Initializer/zeros:08

conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2-conv2d_12/kernel/Initializer/random_uniform:08
w
conv2d_12/bias:0conv2d_12/bias/Assign$conv2d_12/bias/Read/ReadVariableOp:0(2"conv2d_12/bias/Initializer/zeros:08

dense_11/kernel:0dense_11/kernel/Assign%dense_11/kernel/Read/ReadVariableOp:0(2,dense_11/kernel/Initializer/random_uniform:08
s
dense_11/bias:0dense_11/bias/Assign#dense_11/bias/Read/ReadVariableOp:0(2!dense_11/bias/Initializer/zeros:08

dense_12/kernel:0dense_12/kernel/Assign%dense_12/kernel/Read/ReadVariableOp:0(2,dense_12/kernel/Initializer/random_uniform:08
s
dense_12/bias:0dense_12/bias/Assign#dense_12/bias/Read/ReadVariableOp:0(2!dense_12/bias/Initializer/zeros:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08"Ĺx
cond_context´xąx
ć
Rloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textRloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *ä
Eloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Rloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0¨
Rloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Eloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar:0Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
ÍW
Tloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Rloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*î'
jloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
jloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
kloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
kloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
|loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
wloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
uloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
xloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
zloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
qloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
lloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Rloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Sloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Gloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/rank:0
Hloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Iloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ă
Gloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/rank:0xloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0×
Iloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0¨
Rloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ô
Hloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ć
Hloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/rank:0zloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02#
#
lloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textlloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *ż 
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
|loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
wloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
uloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
lloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Hloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shape:0
Iloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shape:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ö
Hloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shape:0loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Ü
lloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ů
Iloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shape:0loss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:12Ĺ

Â

nloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1lloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*ň
mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
qloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
lloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Ü
lloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0â
qloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0mloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0

Oloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textOloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *¤
Zloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Oloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ploss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0˘
Oloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ő
Qloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Oloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*Ü
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Wloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Wloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Wloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
\loss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Oloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ploss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Eloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Ploss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Hloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shape:0
Iloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ł
Hloss/dense_12_loss/broadcast_weights/assert_broadcastable/values/shape:0Wloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0Š
Ploss/dense_12_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Uloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0¤
Iloss/dense_12_loss/broadcast_weights/assert_broadcastable/weights/shape:0Wloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0˘
Oloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0 
Eloss/dense_12_loss/broadcast_weights/assert_broadcastable/is_scalar:0Wloss/dense_12_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0"ż'
	variablesą'Ž'

conv2d_11/kernel:0conv2d_11/kernel/Assign&conv2d_11/kernel/Read/ReadVariableOp:0(2-conv2d_11/kernel/Initializer/random_uniform:08
w
conv2d_11/bias:0conv2d_11/bias/Assign$conv2d_11/bias/Read/ReadVariableOp:0(2"conv2d_11/bias/Initializer/zeros:08

conv2d_12/kernel:0conv2d_12/kernel/Assign&conv2d_12/kernel/Read/ReadVariableOp:0(2-conv2d_12/kernel/Initializer/random_uniform:08
w
conv2d_12/bias:0conv2d_12/bias/Assign$conv2d_12/bias/Read/ReadVariableOp:0(2"conv2d_12/bias/Initializer/zeros:08

dense_11/kernel:0dense_11/kernel/Assign%dense_11/kernel/Read/ReadVariableOp:0(2,dense_11/kernel/Initializer/random_uniform:08
s
dense_11/bias:0dense_11/bias/Assign#dense_11/bias/Read/ReadVariableOp:0(2!dense_11/bias/Initializer/zeros:08

dense_12/kernel:0dense_12/kernel/Assign%dense_12/kernel/Read/ReadVariableOp:0(2,dense_12/kernel/Initializer/random_uniform:08
s
dense_12/bias:0dense_12/bias/Assign#dense_12/bias/Read/ReadVariableOp:0(2!dense_12/bias/Initializer/zeros:08

Adam/iterations:0Adam/iterations/Assign%Adam/iterations/Read/ReadVariableOp:0(2+Adam/iterations/Initializer/initial_value:08
c
	Adam/lr:0Adam/lr/AssignAdam/lr/Read/ReadVariableOp:0(2#Adam/lr/Initializer/initial_value:08
s
Adam/beta_1:0Adam/beta_1/Assign!Adam/beta_1/Read/ReadVariableOp:0(2'Adam/beta_1/Initializer/initial_value:08
s
Adam/beta_2:0Adam/beta_2/Assign!Adam/beta_2/Read/ReadVariableOp:0(2'Adam/beta_2/Initializer/initial_value:08
o
Adam/decay:0Adam/decay/Assign Adam/decay/Read/ReadVariableOp:0(2&Adam/decay/Initializer/initial_value:08

training/Adam/Variable:0training/Adam/Variable/Assign,training/Adam/Variable/Read/ReadVariableOp:0(2training/Adam/zeros:08

training/Adam/Variable_1:0training/Adam/Variable_1/Assign.training/Adam/Variable_1/Read/ReadVariableOp:0(2training/Adam/zeros_1:08

training/Adam/Variable_2:0training/Adam/Variable_2/Assign.training/Adam/Variable_2/Read/ReadVariableOp:0(2training/Adam/zeros_2:08

training/Adam/Variable_3:0training/Adam/Variable_3/Assign.training/Adam/Variable_3/Read/ReadVariableOp:0(2training/Adam/zeros_3:08

training/Adam/Variable_4:0training/Adam/Variable_4/Assign.training/Adam/Variable_4/Read/ReadVariableOp:0(2training/Adam/zeros_4:08

training/Adam/Variable_5:0training/Adam/Variable_5/Assign.training/Adam/Variable_5/Read/ReadVariableOp:0(2training/Adam/zeros_5:08

training/Adam/Variable_6:0training/Adam/Variable_6/Assign.training/Adam/Variable_6/Read/ReadVariableOp:0(2training/Adam/zeros_6:08

training/Adam/Variable_7:0training/Adam/Variable_7/Assign.training/Adam/Variable_7/Read/ReadVariableOp:0(2training/Adam/zeros_7:08

training/Adam/Variable_8:0training/Adam/Variable_8/Assign.training/Adam/Variable_8/Read/ReadVariableOp:0(2training/Adam/zeros_8:08

training/Adam/Variable_9:0training/Adam/Variable_9/Assign.training/Adam/Variable_9/Read/ReadVariableOp:0(2training/Adam/zeros_9:08

training/Adam/Variable_10:0 training/Adam/Variable_10/Assign/training/Adam/Variable_10/Read/ReadVariableOp:0(2training/Adam/zeros_10:08

training/Adam/Variable_11:0 training/Adam/Variable_11/Assign/training/Adam/Variable_11/Read/ReadVariableOp:0(2training/Adam/zeros_11:08

training/Adam/Variable_12:0 training/Adam/Variable_12/Assign/training/Adam/Variable_12/Read/ReadVariableOp:0(2training/Adam/zeros_12:08

training/Adam/Variable_13:0 training/Adam/Variable_13/Assign/training/Adam/Variable_13/Read/ReadVariableOp:0(2training/Adam/zeros_13:08

training/Adam/Variable_14:0 training/Adam/Variable_14/Assign/training/Adam/Variable_14/Read/ReadVariableOp:0(2training/Adam/zeros_14:08

training/Adam/Variable_15:0 training/Adam/Variable_15/Assign/training/Adam/Variable_15/Read/ReadVariableOp:0(2training/Adam/zeros_15:08

training/Adam/Variable_16:0 training/Adam/Variable_16/Assign/training/Adam/Variable_16/Read/ReadVariableOp:0(2training/Adam/zeros_16:08

training/Adam/Variable_17:0 training/Adam/Variable_17/Assign/training/Adam/Variable_17/Read/ReadVariableOp:0(2training/Adam/zeros_17:08

training/Adam/Variable_18:0 training/Adam/Variable_18/Assign/training/Adam/Variable_18/Read/ReadVariableOp:0(2training/Adam/zeros_18:08

training/Adam/Variable_19:0 training/Adam/Variable_19/Assign/training/Adam/Variable_19/Read/ReadVariableOp:0(2training/Adam/zeros_19:08

training/Adam/Variable_20:0 training/Adam/Variable_20/Assign/training/Adam/Variable_20/Read/ReadVariableOp:0(2training/Adam/zeros_20:08

training/Adam/Variable_21:0 training/Adam/Variable_21/Assign/training/Adam/Variable_21/Read/ReadVariableOp:0(2training/Adam/zeros_21:08

training/Adam/Variable_22:0 training/Adam/Variable_22/Assign/training/Adam/Variable_22/Read/ReadVariableOp:0(2training/Adam/zeros_22:08

training/Adam/Variable_23:0 training/Adam/Variable_23/Assign/training/Adam/Variable_23/Read/ReadVariableOp:0(2training/Adam/zeros_23:08*˛
serving_default
?
input_image0
conv2d_11_input:0˙˙˙˙˙˙˙˙˙@@?
dense_12/Softmax:0)
dense_12/Softmax:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict