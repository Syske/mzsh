.class Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;
.super Ljava/lang/Object;
.source "LongSitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->showTimeDialogSit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

.field final synthetic val$ad:Landroid/app/Dialog;

.field final synthetic val$time:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;Landroid/app/Dialog;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;->val$ad:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;->val$time:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;->val$ad:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 357
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;->val$time:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->access$302(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;I)I

    .line 358
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;->val$time:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/product521/long_sit/LongSitActivity;)V

    .line 360
    return-void
.end method
