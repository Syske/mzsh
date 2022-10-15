.class Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;
.super Landroid/graphics/drawable/Drawable;
.source "MyWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

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

    .line 332
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->viewWidth:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x6

    int-to-float v1, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)[I

    move-result-object v0

    aget v0, v0, v4

    int-to-float v2, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->viewWidth:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x6

    int-to-float v3, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)[I

    move-result-object v0

    aget v0, v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 333
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->viewWidth:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x6

    int-to-float v1, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v2, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->viewWidth:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x6

    int-to-float v3, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->access$100(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v4, v0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 334
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 339
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 344
    return-void
.end method
