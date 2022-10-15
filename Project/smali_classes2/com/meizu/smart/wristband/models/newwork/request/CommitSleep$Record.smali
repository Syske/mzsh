.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;
.super Ljava/lang/Object;
.source "CommitSleep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;
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
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Motion;",
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
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$HeartRate;",
            ">;"
        }
    .end annotation
.end field

.field private originalState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$OriginalState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
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
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Motion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;->acts:Ljava/util/List;

    return-object v0
.end method

.method public getGtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;->gtime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartRates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;->heartRates:Ljava/util/List;

    return-object v0
.end method

.method public getOriginalState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$OriginalState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;->originalState:Ljava/util/List;

    return-object v0
.end method

.method public setActs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Motion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "acts":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Motion;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;->acts:Ljava/util/List;

    .line 69
    return-void
.end method

.method public setGtime(Ljava/lang/String;)V
    .locals 0
    .param p1, "gtime"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;->gtime:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setHeartRates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$HeartRate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "heartRates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$HeartRate;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;->heartRates:Ljava/util/List;

    .line 61
    return-void
.end method

.method public setOriginalState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$OriginalState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "originalState":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$OriginalState;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;->originalState:Ljava/util/List;

    .line 77
    return-void
.end method
