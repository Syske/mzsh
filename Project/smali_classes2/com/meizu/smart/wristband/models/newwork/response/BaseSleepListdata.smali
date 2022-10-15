.class public Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;
.super Ljava/lang/Object;
.source "BaseSleepListdata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;
    }
.end annotation


# instance fields
.field private sit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;",
            ">;"
        }
    .end annotation
.end field

.field private sleep:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getSit()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;->sit:Ljava/util/List;

    return-object v0
.end method

.method public getSleep()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;->sleep:Ljava/util/List;

    return-object v0
.end method

.method public setSit(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "sit":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata$Sit;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;->sit:Ljava/util/List;

    .line 27
    return-void
.end method

.method public setSleep(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "sleep":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;->sleep:Ljava/util/List;

    .line 17
    return-void
.end method
