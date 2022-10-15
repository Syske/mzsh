.class Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;
.super Ljava/lang/Object;
.source "WechatSportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->CreateQrCode(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x258

    .line 154
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->val$text:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    .line 155
    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-static {v1, v4, v4, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->createQRImage(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    .line 157
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;)V

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    :cond_0
    return-void
.end method
