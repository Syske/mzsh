.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;
.super Ljava/lang/Object;
.source "CommitAutoSleep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field private acts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Motion;",
            ">;"
        }
    .end annotation
.end field

.field private gtime:Ljava/lang/String;

.field private heartRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;",
            ">;"
        }
    .end annotation
.end field

.field private originalState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Motion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getGtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->gtime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartRates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->heartRates:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->originalState:Ljava/util/List;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Motion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "acts":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Motion;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->acts:Ljava/util/List;

    .line 68
    return-void
.end method

.method public setGtime(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtime"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->gtime:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setHeartRates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "heartRates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->heartRates:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setOriginalState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "originalState":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->originalState:Ljava/util/List;

    .line 76
    return-void
.end method
