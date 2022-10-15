.class Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NewBindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 497
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;
    .param p2, "x1"    # Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$1;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 517
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, "holder":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;
    if-nez p2, :cond_1

    .line 524
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    const v4, 0x7f04009f

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 525
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;

    .end local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;
    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;)V

    .line 526
    .restart local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;
    const v3, 0x7f0e02f0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->rssi:Landroid/widget/ImageView;

    .line 527
    const v3, 0x7f0e02ee

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->tv_name:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 528
    const v3, 0x7f0e02ef

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->tv_mac:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 529
    const v3, 0x7f0e02f1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->tv_state:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 530
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 535
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;

    .line 536
    .local v2, "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    iget-object v0, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->name:Ljava/lang/String;

    .line 537
    .local v0, "deviceName":Ljava/lang/String;
    const-string v3, "Meizu"

    const-string/jumbo v4, "\u9b45\u65cf\u624b\u73af"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->tv_name:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    sget-boolean v3, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    if-eqz v3, :cond_2

    .line 540
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->tv_mac:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v4, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_1
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->rssi:Landroid/widget/ImageView;

    const v4, 0x7f020063

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    iget v3, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->rssi:I

    const/16 v4, -0x32

    if-le v3, v4, :cond_3

    .line 548
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->rssi:Landroid/widget/ImageView;

    const v4, 0x7f020066

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 556
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->nSelectIndex:I

    if-ne v3, p1, :cond_5

    .line 557
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->tv_state:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 562
    :goto_3
    return-object p2

    .line 532
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v2    # "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;
    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;

    .restart local v1    # "holder":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;
    goto :goto_0

    .line 542
    .restart local v0    # "deviceName":Ljava/lang/String;
    .restart local v2    # "p":Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;
    :cond_2
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->tv_mac:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->mac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->rssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 549
    :cond_3
    iget v3, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->rssi:I

    const/16 v4, -0x46

    if-le v3, v4, :cond_4

    .line 550
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->rssi:Landroid/widget/ImageView;

    const v4, 0x7f020065

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 551
    :cond_4
    iget v3, v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$Product;->rssi:I

    const/16 v4, -0x5a

    if-le v3, v4, :cond_0

    .line 552
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->rssi:Landroid/widget/ImageView;

    const v4, 0x7f020064

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 559
    :cond_5
    iget-object v3, v1, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$MyListAdapter$Holder;->tv_state:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    goto :goto_3
.end method
