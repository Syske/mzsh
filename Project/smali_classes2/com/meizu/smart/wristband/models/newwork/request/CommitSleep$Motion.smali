.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$Motion;
.super Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$HeartRate;
.source "CommitSleep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Motion"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSleep$HeartRate;-><init>()V

    return-void
.end method
