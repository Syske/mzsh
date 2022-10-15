.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;
.super Ljava/lang/Object;
.source "CommitHeartRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeartRate"
.end annotation


# instance fields
.field gt:Ljava/lang/String;

.field gv:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;->gt:Ljava/lang/String;

    return-object v0
.end method

.method public getGv()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;->gv:Ljava/lang/Integer;

    return-object v0
.end method

.method public setGt(Ljava/lang/String;)V
    .locals 0
    .param p1, "gt"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;->gt:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setGv(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "gv"    # Ljava/lang/Integer;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;->gv:Ljava/lang/Integer;

    .line 78
    return-void
.end method
