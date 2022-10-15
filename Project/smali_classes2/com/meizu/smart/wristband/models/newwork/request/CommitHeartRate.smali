.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;
.super Ljava/lang/Object;
.source "CommitHeartRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;,
        Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;
    }
.end annotation


# instance fields
.field dayHeartrates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;",
            ">;"
        }
    .end annotation
.end field

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public getDayHeartrates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->dayHeartrates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setDayHeartrates(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "dayHeartrates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->dayHeartrates:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->username:Ljava/lang/String;

    .line 20
    return-void
.end method
