.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;
.super Ljava/lang/Object;
.source "CommitRealSport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$HeartRate;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;
    }
.end annotation


# instance fields
.field rtsportdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;",
            ">;"
        }
    .end annotation
.end field

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public getRtsportdata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->rtsportdata:Ljava/util/List;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setRtsportdata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "rtsportdata":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->rtsportdata:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->username:Ljava/lang/String;

    .line 21
    return-void
.end method
