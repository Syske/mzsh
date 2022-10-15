.class public Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "tcontext"    # Landroid/content/Context;
    .param p2, "tlist"    # [Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;->context:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;->list:[Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;->list:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 35
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 42
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04007f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 43
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;-><init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;)V

    .line 44
    .local v1, "holder":Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;
    const v3, 0x7f0e0270

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 45
    const v3, 0x7f0e0111

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;->content:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;->list:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 52
    .local v2, "icons":Landroid/content/res/TypedArray;
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 53
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-object p2

    .line 48
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;
    .end local v2    # "icons":Landroid/content/res/TypedArray;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/userinfo/photodialog/DialogAdapter$ViewHolder;
    goto :goto_0
.end method
