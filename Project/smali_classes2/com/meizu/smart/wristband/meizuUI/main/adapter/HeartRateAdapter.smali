.class public Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;
.super Landroid/widget/BaseAdapter;
.source "HeartRateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/util/List;)V
    .locals 1
    .param p1, "mainActivity"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->mList:Ljava/util/List;

    .line 35
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;
    if-nez p2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400bc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;

    .end local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;
    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;)V

    .line 67
    .restart local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;
    const v2, 0x7f0e0276

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;->heart_rate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 68
    const v2, 0x7f0e033f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;->heart_time:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;

    .line 75
    .local v0, "h":Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;->heart_rate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;->rate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;->heart_time:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    sget-object v3, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat17:Ljava/text/SimpleDateFormat;

    iget-object v4, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;->startTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-object p2

    .line 71
    .end local v0    # "h":Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;
    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;

    .restart local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter$Holder;
    goto :goto_0
.end method
