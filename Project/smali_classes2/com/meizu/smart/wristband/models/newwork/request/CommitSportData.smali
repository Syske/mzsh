.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;
.super Ljava/lang/Object;
.source "CommitSportData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;
    }
.end annotation


# instance fields
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

.field private sportdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
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
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;->bind:Ljava/util/List;

    return-object v0
.end method

.method public getSportdata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;->sportdata:Ljava/util/List;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;->username:Ljava/lang/String;

    return-object v0
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
    .line 35
    .local p1, "bind":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;->bind:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setSportdata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "sportdata":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;->sportdata:Ljava/util/List;

    .line 28
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;->username:Ljava/lang/String;

    .line 20
    return-void
.end method
