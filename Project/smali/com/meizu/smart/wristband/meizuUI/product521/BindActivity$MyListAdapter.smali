.class Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 394
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;
    .param p2, "x1"    # Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$1;

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 413
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "holder":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;
    if-nez p2, :cond_0

    .line 420
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    const v4, 0x7f04004e

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 421
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;

    .end local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;
    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;)V

    .line 422
    .restart local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;
    const v3, 0x7f0e00bc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;->iv_pic:Landroid/widget/ImageView;

    .line 423
    const v3, 0x7f0e008c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;->tv_name:Landroid/widget/TextView;

    .line 424
    const v3, 0x7f0e0204

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;->tv_mac:Landroid/widget/TextView;

    .line 425
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 430
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;

    .line 431
    .local v2, "p":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;
    iget-object v0, v2, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->name:Ljava/lang/String;

    .line 432
    .local v0, "deviceName":Ljava/lang/String;
    const-string v3, "Meizu"

    const-string/jumbo v4, "\u9b45\u65cf\u624b\u73af"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 433
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;->tv_name:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;->tv_mac:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->mac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->rssi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    iget-object v4, v2, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;->name:Ljava/lang/String;

    iget-object v5, v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;->iv_pic:Landroid/widget/ImageView;

    invoke-static {v3, v4, v5}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$1100(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 437
    return-object p2

    .line 427
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v2    # "p":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$P;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;
    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;

    .restart local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$MyListAdapter$Holder;
    goto :goto_0
.end method
