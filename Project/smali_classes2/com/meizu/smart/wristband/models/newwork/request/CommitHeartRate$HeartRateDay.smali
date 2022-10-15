.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;
.super Ljava/lang/Object;
.source "CommitHeartRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeartRateDay"
.end annotation


# instance fields
.field endTime:Ljava/lang/String;

.field heartrates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;",
            ">;"
        }
    .end annotation
.end field

.field startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartrates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->heartrates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->endTime:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setHeartrates(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "heartrates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->heartrates:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->startTime:Ljava/lang/String;

    .line 41
    return-void
.end method
