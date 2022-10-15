.class Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$1;
.super Ljava/lang/Thread;
.source "WechatSportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->getQrText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

.field final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$1;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$1;->val$mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->getQrTextFormNetwork(Ljava/lang/String;)V

    .line 140
    return-void
.end method
