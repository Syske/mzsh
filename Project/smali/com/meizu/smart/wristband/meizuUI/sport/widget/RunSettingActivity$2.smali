.class Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;
.super Ljava/lang/Object;
.source "RunSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->setMaxHeartRate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

.field final synthetic val$ad:Landroid/app/AlertDialog;

.field final synthetic val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;->val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;->val$ad:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;->val$wv:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->getSeletedItem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->access$102(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;I)I

    .line 151
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RunSettingActivity$2;->val$ad:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    return-void
.end method
