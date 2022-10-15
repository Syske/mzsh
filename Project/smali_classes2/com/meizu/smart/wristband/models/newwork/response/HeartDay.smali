.class public Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;
.super Ljava/lang/Object;
.source "HeartDay.java"


# instance fields
.field endTime:Ljava/lang/String;

.field heartrates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;"
        }
    .end annotation
.end field

.field startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartrates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;->heartrates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;->endTime:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setHeartrates(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "heartrates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;->heartrates:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;->startTime:Ljava/lang/String;

    .line 20
    return-void
.end method
