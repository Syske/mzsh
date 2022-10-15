.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;
.super Ljava/lang/Object;
.source "CommitAutoSleep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Motion;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;
    }
.end annotation


# instance fields
.field private baseSleep:Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;

.field private bind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method


# virtual methods
.method public getBaseSleep()Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;->baseSleep:Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;

    return-object v0
.end method

.method public getBind()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;->bind:Ljava/util/List;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseSleep(Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;)V
    .locals 0
    .param p1, "baseSleep"    # Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;->baseSleep:Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;

    .line 30
    return-void
.end method

.method public setBind(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "bind":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;->bind:Ljava/util/List;

    .line 38
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;->username:Ljava/lang/String;

    .line 22
    return-void
.end method
