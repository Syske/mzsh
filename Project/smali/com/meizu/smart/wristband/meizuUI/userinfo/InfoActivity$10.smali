.class Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;
.super Ljava/lang/Object;
.source "InfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->getSex()V
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
    .line 527
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->val$ad:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 531
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/constant/Sex;->convert1(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/constant/Sex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSex(Lcom/meizu/smart/wristband/constant/Sex;)V

    .line 532
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$702(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;Z)Z

    .line 533
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/InfoActivity$10;->val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    return-void
.end method
