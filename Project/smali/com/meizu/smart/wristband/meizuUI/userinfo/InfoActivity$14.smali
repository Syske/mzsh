.class Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getAim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->val$ad:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 745
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$1400(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    const v3, 0x7f080288

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$702(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Z)Z

    .line 747
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$14;->val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$1502(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 748
    return-void
.end method
