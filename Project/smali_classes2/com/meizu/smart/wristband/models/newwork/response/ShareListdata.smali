.class public Lcom/meizu/smart/wristband/models/newwork/response/ShareListdata;
.super Ljava/lang/Object;
.source "ShareListdata.java"


# instance fields
.field private detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;",
            ">;"
        }
    .end annotation
.end field

.field private gdate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
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
            "Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareListdata;->detail:Ljava/util/List;

    return-object v0
.end method

.method public getGdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareListdata;->gdate:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "detail":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/ShareGetdata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareListdata;->detail:Ljava/util/List;

    .line 27
    return-void
.end method

.method public setGdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "gdate"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/ShareListdata;->gdate:Ljava/lang/String;

    .line 20
    return-void
.end method
