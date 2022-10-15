.class Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;
.super Landroid/graphics/drawable/Drawable;
.source "CycleWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getWidth()I

    move-result v19

    .line 400
    .local v19, "viewWidth":I
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 401
    .local v18, "dividerPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$500(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$600(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 403
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 404
    .local v12, "seletedSolidPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$700(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 405
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 406
    .local v6, "solidPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$800(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    mul-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 408
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v1, v3

    int-to-float v3, v1

    move/from16 v0, v19

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 409
    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v5

    mul-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v1, p1

    .line 408
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 410
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v9, v1

    move/from16 v0, v19

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 411
    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    int-to-float v11, v1

    move-object/from16 v7, p1

    .line 410
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 412
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v15, v1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 413
    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    int-to-float v0, v1

    move/from16 v17, v0

    move-object/from16 v13, p1

    .line 412
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 414
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    int-to-float v15, v1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .line 415
    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    int-to-float v0, v1

    move/from16 v17, v0

    move-object/from16 v13, p1

    .line 414
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 416
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 420
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 424
    return-void
.end method
