.class Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getBirthday()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$wvM:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

.field final synthetic val$wvY:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvY:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iput-object p4, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$ad:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    .line 620
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 621
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvY:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5e740"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 627
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvY:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setBirthday(Ljava/lang/String;)V

    .line 631
    :goto_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$702(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Z)Z

    .line 632
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 633
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvY:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvY:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$11;->val$wvM:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setBirthday(Ljava/lang/String;)V

    goto :goto_1
.end method
