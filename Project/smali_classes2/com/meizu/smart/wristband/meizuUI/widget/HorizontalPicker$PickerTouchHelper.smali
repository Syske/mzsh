.class Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "HorizontalPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PickerTouchHelper"
.end annotation


# instance fields
.field private mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)V
    .locals 0
    .param p1, "picker"    # Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .prologue
    .line 1263
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1264
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .line 1265
    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1270
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$400(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$600(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)F

    move-result v4

    add-float v1, v3, v4

    .line 1271
    .local v1, "itemWidth":F
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$700(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float v2, v3, v4

    .line 1273
    .local v2, "position":F
    div-float v0, v2, v1

    .line 1275
    .local v0, "item":F
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$800(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 1276
    :cond_0
    const/high16 v3, -0x80000000

    .line 1279
    :goto_0
    return v3

    :cond_1
    float-to-int v3, v0

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1286
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$400(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v6}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$600(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)F

    move-result v6

    add-float v2, v5, v6

    .line 1287
    .local v2, "itemWidth":F
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v6}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$700(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float v4, v5, v6

    .line 1289
    .local v4, "position":F
    div-float v5, v4, v2

    float-to-int v0, v5

    .line 1291
    .local v0, "first":I
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$700(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v5, 0x1

    .line 1293
    .local v3, "items":I
    rem-float v5, v4, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 1294
    add-int/lit8 v3, v3, 0x1

    .line 1297
    :cond_0
    if-gez v0, :cond_2

    .line 1298
    add-int/2addr v3, v0

    .line 1299
    const/4 v0, 0x0

    .line 1304
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1305
    add-int v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1304
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1300
    .end local v1    # "i":I
    :cond_2
    add-int v5, v0, v3

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v6}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$800(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    if-le v5, v6, :cond_1

    .line 1301
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$800(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)[Ljava/lang/CharSequence;

    move-result-object v5

    array-length v5, v5

    sub-int v3, v5, v0

    goto :goto_0

    .line 1308
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1332
    const/4 v0, 0x0

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$800(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1313
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 1318
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$400(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$600(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)F

    move-result v5

    add-float v0, v4, v5

    .line 1319
    .local v0, "itemWidth":F
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v5}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$700(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float v3, v4, v5

    .line 1321
    .local v3, "scrollOffset":F
    int-to-float v4, p1

    mul-float/2addr v4, v0

    sub-float/2addr v4, v3

    float-to-int v1, v4

    .line 1322
    .local v1, "left":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$400(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)I

    move-result v4

    add-int v2, v1, v4

    .line 1324
    .local v2, "right":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-static {v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->access$800(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1325
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$PickerTouchHelper;->mPicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1326
    const/16 v4, 0x10

    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1328
    return-void
.end method
