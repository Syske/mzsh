.class Lcom/meizu/smart/wristband/servers/ModelDataManager$11$1;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager$11;->call(Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$11;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/ModelDataManager$11;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/ModelDataManager$11;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$11$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$11$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$11;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/ModelDataManager$11;->val$sleepServer:Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$11$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$11;

    iget-object v2, v2, Lcom/meizu/smart/wristband/servers/ModelDataManager$11;->val$baseSleepStateList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->saveUnsyncSleepState(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 536
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0

    .line 532
    .end local v0    # "e":Ljava/sql/SQLException;
    :catch_1
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$11$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
