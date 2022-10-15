.class public Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;
.super Landroid/widget/BaseAdapter;
.source "SportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;
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
            "Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->mList:Ljava/util/List;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->mList:Ljava/util/List;

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
    .line 64
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;->type:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->mList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;

    .line 77
    .local v3, "item":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;
    iget v1, v3, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;->type:I

    .line 78
    .local v1, "ItemType":I
    iget v0, v3, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;->mode:I

    .line 79
    .local v0, "ItemMode":I
    new-instance v8, Lcom/meizu/smart/wristband/constant/SystemContant;

    invoke-direct {v8}, Lcom/meizu/smart/wristband/constant/SystemContant;-><init>()V

    sget-object v6, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    .line 80
    .local v6, "timeFormat0":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    if-nez p2, :cond_0

    .line 82
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0400bd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;

    .end local v2    # "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;
    invoke-direct {v2, p0, p2}, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;Landroid/view/View;)V

    .line 84
    .restart local v2    # "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    move-object v4, v3

    .line 89
    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;

    .line 91
    .local v4, "s":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;
    iget-object v8, v2, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->tv_km:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0800f6

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;->context:Landroid/content/Context;

    const-string v9, "config"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 97
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v8, "checkbox_inch_time"

    const/4 v9, 0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 101
    .local v7, "timeTw":Z
    iget-object v8, v2, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_title1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->startTime:Ljava/util/Date;

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->endTime:Ljava/util/Date;

    invoke-virtual {v6, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v8, v2, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_title2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v9, v4, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->duration:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v8, v2, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_tv1:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v9, v4, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->step:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v8, v2, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_tv2:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v9, v4, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->dis:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v8, v2, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;->mTextView_tv3:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v9, v4, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->heat:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    return-object p2

    .line 86
    .end local v4    # "s":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;
    .end local v5    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v7    # "timeTw":Z
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;
    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;

    .restart local v2    # "holder":Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter$Holder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x3

    return v0
.end method
