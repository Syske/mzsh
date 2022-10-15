.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$3;
.super Ljava/lang/Object;
.source "SleepFragment.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->saveAim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 510
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$3;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 513
    const-string v0, "network error,no save sleep aim"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->sleepAim:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)V

    .line 516
    return-void
.end method
