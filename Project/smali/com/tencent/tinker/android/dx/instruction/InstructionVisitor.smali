.class public Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private final prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V
    .locals 0
    .param p1, "iv"    # Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    .line 29
    return-void
.end method


# virtual methods
.method public visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V
    .locals 6
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "size"    # I
    .param p5, "elementWidth"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V

    .line 89
    :cond_0
    return-void
.end method

.method public visitFiveRegisterInsn(IIIIIJIIIII)V
    .locals 14
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "index"    # I
    .param p4, "indexType"    # I
    .param p5, "target"    # I
    .param p6, "literal"    # J
    .param p8, "a"    # I
    .param p9, "b"    # I
    .param p10, "c"    # I
    .param p11, "d"    # I
    .param p12, "e"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFiveRegisterInsn(IIIIIJIIIII)V

    .line 65
    :cond_0
    return-void
.end method

.method public visitFourRegisterInsn(IIIIIJIIII)V
    .locals 12
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "index"    # I
    .param p4, "indexType"    # I
    .param p5, "target"    # I
    .param p6, "literal"    # J
    .param p8, "a"    # I
    .param p9, "b"    # I
    .param p10, "c"    # I
    .param p11, "d"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFourRegisterInsn(IIIIIJIIII)V

    .line 59
    :cond_0
    return-void
.end method

.method public visitOneRegisterInsn(IIIIIJI)V
    .locals 10
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "index"    # I
    .param p4, "indexType"    # I
    .param p5, "target"    # I
    .param p6, "literal"    # J
    .param p8, "a"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitOneRegisterInsn(IIIIIJI)V

    .line 41
    :cond_0
    return-void
.end method

.method public visitPackedSwitchPayloadInsn(III[I)V
    .locals 1
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "firstKey"    # I
    .param p4, "targets"    # [I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitPackedSwitchPayloadInsn(III[I)V

    .line 83
    :cond_0
    return-void
.end method

.method public visitRegisterRangeInsn(IIIIIJII)V
    .locals 10
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "index"    # I
    .param p4, "indexType"    # I
    .param p5, "target"    # I
    .param p6, "literal"    # J
    .param p8, "a"    # I
    .param p9, "registerCount"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitRegisterRangeInsn(IIIIIJII)V

    .line 71
    :cond_0
    return-void
.end method

.method public visitSparseSwitchPayloadInsn(II[I[I)V
    .locals 1
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "keys"    # [I
    .param p4, "targets"    # [I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitSparseSwitchPayloadInsn(II[I[I)V

    .line 77
    :cond_0
    return-void
.end method

.method public visitThreeRegisterInsn(IIIIIJIII)V
    .locals 12
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "index"    # I
    .param p4, "indexType"    # I
    .param p5, "target"    # I
    .param p6, "literal"    # J
    .param p8, "a"    # I
    .param p9, "b"    # I
    .param p10, "c"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitThreeRegisterInsn(IIIIIJIII)V

    .line 53
    :cond_0
    return-void
.end method

.method public visitTwoRegisterInsn(IIIIIJII)V
    .locals 10
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "index"    # I
    .param p4, "indexType"    # I
    .param p5, "target"    # I
    .param p6, "literal"    # J
    .param p8, "a"    # I
    .param p9, "b"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitTwoRegisterInsn(IIIIIJII)V

    .line 47
    :cond_0
    return-void
.end method

.method public visitZeroRegisterInsn(IIIIIJ)V
    .locals 8
    .param p1, "currentAddress"    # I
    .param p2, "opcode"    # I
    .param p3, "index"    # I
    .param p4, "indexType"    # I
    .param p5, "target"    # I
    .param p6, "literal"    # J

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitZeroRegisterInsn(IIIIIJ)V

    .line 35
    :cond_0
    return-void
.end method
