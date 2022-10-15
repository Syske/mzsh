.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;
.super Ljava/lang/Object;
.source "CommitSportData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Day"
.end annotation


# instance fields
.field private detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;->detail:Ljava/util/List;

    return-object v0
.end method

.method public setDetail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "detail":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;->detail:Ljava/util/List;

    .line 47
    return-void
.end method
