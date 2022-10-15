.class public Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 21
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;->list:[Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;->list:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 31
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    if-nez p2, :cond_0

    .line 39
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter$ViewHolder;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;)V

    .line 41
    .local v0, "holder":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter$ViewHolder;
    const v1, 0x7f0e0270

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :goto_0
    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter$ViewHolder;->content:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter;->list:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-object p2

    .line 46
    .end local v0    # "holder":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/meizu/smart/wristband/meizuUI/userinfo/choosecity/CityAdapter$ViewHolder;
    goto :goto_0
.end method
