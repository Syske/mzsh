.class final Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;
.super Ljava/lang/Object;
.source "ModelSettingManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelSettingManager;->uploadSettings(Landroid/content/Context;)Lrx/Observable;
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
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$otherAim:Lcom/meizu/smart/wristband/models/database/entity/Other;

.field final synthetic val$otherAlarm:Lcom/meizu/smart/wristband/models/database/entity/Other;

.field final synthetic val$otherFindphone:Lcom/meizu/smart/wristband/models/database/entity/Other;

.field final synthetic val$otherHandup:Lcom/meizu/smart/wristband/models/database/entity/Other;

.field final synthetic val$otherHeartrate:Lcom/meizu/smart/wristband/models/database/entity/Other;

.field final synthetic val$otherSedentary:Lcom/meizu/smart/wristband/models/database/entity/Other;

.field final synthetic val$otherTimeDisplay:Lcom/meizu/smart/wristband/models/database/entity/Other;

.field final synthetic val$otherVibirate:Lcom/meizu/smart/wristband/models/database/entity/Other;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Lcom/meizu/smart/wristband/models/database/entity/Other;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherAlarm:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherAim:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iput-object p3, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherFindphone:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iput-object p4, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherHeartrate:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iput-object p5, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherHandup:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iput-object p6, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherSedentary:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iput-object p7, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherVibirate:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iput-object p8, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherTimeDisplay:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iput-object p9, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherAlarm:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherAim:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherFindphone:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iget-object v3, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherHeartrate:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherHandup:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherSedentary:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iget-object v6, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherVibirate:Lcom/meizu/smart/wristband/models/database/entity/Other;

    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->val$otherTimeDisplay:Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-static/range {v0 .. v7}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6$1;-><init>(Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 352
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 353
    const-string v0, "\u63d0\u4ea4\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 354
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager$6;->call(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
