.class final Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;
.super Ljava/lang/Object;
.source "ModelSettingManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelSettingManager;->downVersionFile(Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Boolean;",
        "Lcom/meizu/smart/wristband/models/database/entity/GainEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$deviceVer:Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$urlpath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$urlpath:Ljava/lang/String;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$deviceVer:Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;

    iput-object p3, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .locals 5
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download new rom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$urlpath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;-><init>()V

    .line 51
    .local v0, "ver":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    const-string v1, "%03d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$deviceVer:Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->getManufCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->setType1(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$deviceVer:Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->getGtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->setType2(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$deviceVer:Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->getExplains()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->setCnMsg(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$deviceVer:Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->getExplainsEN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->setEnMsg(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$deviceVer:Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->getVer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->setCode(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$deviceVer:Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/newwork/response/DeviceVer;->getAppurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->setUrl(Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->setDatapath(Ljava/lang/String;)V

    .line 58
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$1;->call(Ljava/lang/Boolean;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v0

    return-object v0
.end method
