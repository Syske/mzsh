.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;
.super Ljava/lang/Object;
.source "CommitSleep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Motion;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$HeartRate;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$OriginalState;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;
    }
.end annotation


# instance fields
.field private baseSleep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;",
            ">;"
        }
    .end annotation
.end field

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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method


# virtual methods
.method public getBaseSleep()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;->baseSleep:Ljava/util/ArrayList;

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
    .line 34
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;->bind:Ljava/util/List;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseSleep(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "baseSleep":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Record;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;->baseSleep:Ljava/util/ArrayList;

    .line 31
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
    .line 38
    .local p1, "bind":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;->bind:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;->username:Ljava/lang/String;

    .line 23
    return-void
.end method
