.class public Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;
.super Lcom/github/mikephil/charting/components/MarkerView;
.source "MyMarkerView_sport.java"


# instance fields
.field private context:Landroid/content/Context;

.field private final ll_bg:Landroid/widget/LinearLayout;

.field private tv_sport:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResource"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/components/MarkerView;-><init>(Landroid/content/Context;I)V

    .line 26
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->context:Landroid/content/Context;

    .line 27
    const v0, 0x7f0e0341

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->tv_sport:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 28
    const v0, 0x7f0e024a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->ll_bg:Landroid/widget/LinearLayout;

    .line 29
    return-void
.end method


# virtual methods
.method public getXOffset(F)I
    .locals 1
    .param p1, "xpos"    # F

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    return v0
.end method

.method public getYOffset(F)I
    .locals 1
    .param p1, "ypos"    # F

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public refreshContent(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v1

    float-to-int v0, v1

    .line 35
    .local v0, "value":I
    if-nez v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->ll_bg:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->tv_sport:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6b65"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;->ll_bg:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
