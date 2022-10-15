.class public Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "pData":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mData:Ljava/util/List;

    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method

.method private isMove(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;

    .line 200
    .local v0, "currentEntity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;

    .line 201
    .local v2, "nextEntity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v4

    .line 205
    :cond_1
    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month:Ljava/lang/String;

    .line 206
    .local v1, "currentTitle":Ljava/lang/String;
    iget-object v3, v2, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month:Ljava/lang/String;

    .line 207
    .local v3, "nextTitle":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 212
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private needTitle(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v4

    .line 178
    :cond_1
    if-gez p1, :cond_2

    move v4, v5

    .line 179
    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;

    .line 183
    .local v0, "currentEntity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;

    .line 184
    .local v2, "previousEntity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    if-eqz v0, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v4, v5

    .line 185
    goto :goto_0

    .line 188
    :cond_4
    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month:Ljava/lang/String;

    .line 189
    .local v1, "currentTitle":Ljava/lang/String;
    iget-object v3, v2, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month:Ljava/lang/String;

    .line 191
    .local v3, "previousTitle":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 192
    goto :goto_0
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 6
    .param p1, "headerView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "alpaha"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p2}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;

    .line 158
    .local v4, "itemEntity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    iget-object v3, v4, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month:Ljava/lang/String;

    .line 159
    .local v3, "header_time":Ljava/lang/String;
    iget-object v2, v4, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month_dis:Ljava/lang/String;

    .line 162
    .local v2, "header_dis":Ljava/lang/String;
    const v5, 0x7f0e024b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 163
    .local v1, "headerTime":Landroid/widget/TextView;
    const v5, 0x7f0e024c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    .local v0, "headerDis":Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    if-gez p1, :cond_2

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 151
    :cond_1
    :goto_0
    return v0

    .line 147
    :cond_2
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->isMove(I)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 148
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "viewHolder0":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;
    if-nez p2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04006f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;

    .end local v1    # "viewHolder0":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;
    invoke-direct {v1, p0, v4}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$1;)V

    .line 62
    .restart local v1    # "viewHolder0":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;
    const v2, 0x7f0e004a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->title:Landroid/widget/LinearLayout;

    .line 63
    const v2, 0x7f0e024b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->head_time:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0e024c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->head_dis:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f0e024e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_time:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0e024d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_day_dur:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0e00ad

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_dis:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f0e015c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_speed:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f0e0254

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_speed_unit:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f0e0253

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_speed_img:Landroid/widget/ImageView;

    .line 71
    const v2, 0x7f0e0159

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_kacl:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0e0252

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->sport_long:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;

    .line 79
    .local v0, "itemEntity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_dis:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->day_dis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_day_dur:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->day_dur:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_time:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_kacl:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->kcal:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->type:I

    if-nez v2, :cond_1

    .line 85
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_speed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->speed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_speed_unit:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f08019f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_speed_img:Landroid/widget/ImageView;

    const v3, 0x7f02025b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 88
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->sport_long:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->sport_long:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_1
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter;->needTitle(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->head_time:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->head_dis:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->month_dis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->title:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    :goto_2
    return-object p2

    .line 75
    .end local v0    # "itemEntity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder0":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;
    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;

    .restart local v1    # "viewHolder0":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;
    goto :goto_0

    .line 90
    .restart local v0    # "itemEntity":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;
    :cond_1
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_speed:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity$ItemEntity;->heart_rate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_speed_unit:Landroid/widget/TextView;

    const-string v3, "bpm"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->item_speed_img:Landroid/widget/ImageView;

    const v3, 0x7f0200df

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 100
    :cond_2
    iget-object v2, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/CustomAdapter$ViewHolder0;->title:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 131
    instance-of v0, p1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;

    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;

    .end local p1    # "view":Landroid/widget/AbsListView;
    invoke-virtual {p1, p2}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->controlPinnedHeader(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 138
    return-void
.end method
