.class final Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;
.super Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dx/util/InstructionTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstructionTransformVisitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tinker/android/dx/util/InstructionTransformer;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/android/dx/util/InstructionTransformer;Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V
    .locals 0
    .param p2, "iv"    # Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/android/dx/util/InstructionTransformer;

    .line 61
    invoke-direct {p0, p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V

    .line 62
    return-void
.end method

.method private transformIndexIfNeeded(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "indexType"    # I

    .prologue
    .line 107
    packed-switch p2, :pswitch_data_0

    .line 121
    .end local p1    # "index":I
    :goto_0
    return p1

    .line 109
    .restart local p1    # "index":I
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/android/dx/util/InstructionTransformer;

    invoke-static {v0}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer;->access$000(Lcom/tencent/tinker/android/dx/util/InstructionTransformer;)Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result p1

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/android/dx/util/InstructionTransformer;

    invoke-static {v0}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer;->access$000(Lcom/tencent/tinker/android/dx/util/InstructionTransformer;)Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustTypeIdIndex(I)I

    move-result p1

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/android/dx/util/InstructionTransformer;

    invoke-static {v0}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer;->access$000(Lcom/tencent/tinker/android/dx/util/InstructionTransformer;)Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustFieldIdIndex(I)I

    move-result p1

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/android/dx/util/InstructionTransformer;

    invoke-static {v0}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer;->access$000(Lcom/tencent/tinker/android/dx/util/InstructionTransformer;)Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustMethodIdIndex(I)I

    move-result p1

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public visitFiveRegisterInsn(IIIIIJIIIII)V
    .locals 18
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
    .line 96
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v7

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    .line 97
    invoke-super/range {v4 .. v16}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFiveRegisterInsn(IIIIIJIIIII)V

    .line 98
    return-void
.end method

.method public visitFourRegisterInsn(IIIIIJIIII)V
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

    .prologue
    .line 90
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v5

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    .line 91
    invoke-super/range {v2 .. v13}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFourRegisterInsn(IIIIIJIIII)V

    .line 92
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
    .line 72
    invoke-direct {p0, p3, p4}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 73
    invoke-super/range {v0 .. v8}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitOneRegisterInsn(IIIIIJI)V

    .line 74
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
    .line 102
    invoke-direct {p0, p3, p4}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    .line 103
    invoke-super/range {v0 .. v9}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitRegisterRangeInsn(IIIIIJII)V

    .line 104
    return-void
.end method

.method public visitThreeRegisterInsn(IIIIIJIII)V
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

    .prologue
    .line 84
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v5

    move-object v2, p0

    move v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    .line 85
    invoke-super/range {v2 .. v12}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitThreeRegisterInsn(IIIIIJIII)V

    .line 86
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
    .line 78
    invoke-direct {p0, p3, p4}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    .line 79
    invoke-super/range {v0 .. v9}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitTwoRegisterInsn(IIIIIJII)V

    .line 80
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
    .line 66
    invoke-direct {p0, p3, p4}, Lcom/tencent/tinker/android/dx/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-wide v6, p6

    .line 67
    invoke-super/range {v0 .. v7}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitZeroRegisterInsn(IIIIIJ)V

    .line 68
    return-void
.end method
