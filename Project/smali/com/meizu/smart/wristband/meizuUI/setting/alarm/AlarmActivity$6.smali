.class Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$6;
.super Ljava/lang/Object;
.source "AlarmActivity.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;->CheckUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Boolean;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 755
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$6;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 759
    .local v0, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/alarm/AlarmActivity;

    invoke-static {v1, v0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->checkUpdate(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    .line 762
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method
