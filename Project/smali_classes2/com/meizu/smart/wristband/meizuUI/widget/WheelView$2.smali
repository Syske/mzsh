.class Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;
.super Landroid/graphics/drawable/Drawable;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 336
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)[I

    move-result-object v0

    aget v0, v0, v4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->viewWidth:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)[I

    move-result-object v0

    aget v0, v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 337
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v2, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->viewWidth:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;)[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v4, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/widget/WheelView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 338
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 343
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 348
    return-void
.end method
