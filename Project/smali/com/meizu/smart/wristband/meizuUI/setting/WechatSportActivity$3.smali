.class Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$3;
.super Ljava/lang/Object;
.source "WechatSportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->ShowToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

.field final synthetic val$toast:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$3;->val$toast:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$3;->val$toast:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    return-void
.end method
