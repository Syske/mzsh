.class public Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;
.super Lcom/github/mikephil/charting/components/MarkerView;
.source "MyMarkerView_sleep.java"


# instance fields
.field private context:Landroid/content/Context;

.field private ll_bg:Landroid/widget/LinearLayout;

.field private pointCount:I

.field private tv_sleep:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/components/MarkerView;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->context:Landroid/content/Context;

    .line 30
    const v0, 0x7f0e0340

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->tv_sleep:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 31
    const v0, 0x7f0e024a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->ll_bg:Landroid/widget/LinearLayout;

    .line 32
    return-void
.end method


# virtual methods
.method public getXOffset(F)I
    .locals 1
    .param p1, "xpos"    # F

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    return v0
.end method

.method public getYOffset(F)I
    .locals 1
    .param p1, "ypos"    # F

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 8
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    .line 39
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 40
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->ll_bg:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    :goto_0
    const/high16 v3, 0x42700000    # 60.0f

    div-float v1, v2, v3

    .line 46
    .local v1, "hour":F
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.0"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->tv_sleep:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v6, v1

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u5c0f\u65f6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void

    .line 42
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v1    # "hour":F
    :cond_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;->ll_bg:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
