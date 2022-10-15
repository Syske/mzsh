.class public Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;
.super Ljava/lang/Object;
.source "SleepListdata.java"


# instance fields
.field private avgHumi:Ljava/lang/String;

.field private avgTmep:Ljava/lang/String;

.field private dayGold:Ljava/lang/Integer;

.field private detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;",
            ">;"
        }
    .end annotation
.end field

.field private envQuantity:F

.field private gdate:Ljava/lang/String;

.field private gtime:Ljava/lang/Integer;

.field private heartRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;"
        }
    .end annotation
.end field

.field private quantity:F

.field private sleepState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepState;",
            ">;"
        }
    .end annotation
.end field

.field private sleepTime:Ljava/lang/String;

.field private wakeup:Ljava/lang/Integer;

.field private wakeupDuration:Ljava/lang/Integer;

.field private wakeupTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->sleepState:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->heartRates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAvgHumi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->avgHumi:Ljava/lang/String;

    return-object v0
.end method

.method public getAvgTmep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->avgTmep:Ljava/lang/String;

    return-object v0
.end method

.method public getDayGold()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->dayGold:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDetail()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->detail:Ljava/util/List;

    return-object v0
.end method

.method public getEnvQuantity()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->envQuantity:F

    return v0
.end method

.method public getGdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->gdate:Ljava/lang/String;

    return-object v0
.end method

.method public getGtime()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->gtime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHeartRates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->heartRates:Ljava/util/List;

    return-object v0
.end method

.method public getQuantity()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->quantity:F

    return v0
.end method

.method public getSleepState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->sleepState:Ljava/util/List;

    return-object v0
.end method

.method public getSleepTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->sleepTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeup()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->wakeup:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWakeupDuration()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->wakeupDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWakeupTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->wakeupTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAvgHumi(Ljava/lang/String;)V
    .locals 0
    .param p1, "avgHumi"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->avgHumi:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setAvgTmep(Ljava/lang/String;)V
    .locals 0
    .param p1, "avgTmep"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->avgTmep:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setDayGold(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "dayGold"    # Ljava/lang/Integer;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->dayGold:Ljava/lang/Integer;

    .line 129
    return-void
.end method

.method public setDetail(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "detail":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/Golddetaildata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->detail:Ljava/util/List;

    .line 139
    return-void
.end method

.method public setEnvQuantity(F)V
    .locals 0
    .param p1, "envQuantity"    # F

    .prologue
    .line 74
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->envQuantity:F

    .line 75
    return-void
.end method

.method public setEnvQuantity(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "envQuantity"    # Ljava/lang/Integer;

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->envQuantity:F

    .line 149
    return-void
.end method

.method public setGdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "gdate"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->gdate:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setGtime(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "gtime"    # Ljava/lang/Integer;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->gtime:Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public setHeartRates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "heartRates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->heartRates:Ljava/util/List;

    .line 99
    return-void
.end method

.method public setQuantity(F)V
    .locals 0
    .param p1, "quantity"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->quantity:F

    .line 83
    return-void
.end method

.method public setSleepState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/SleepState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "sleepState":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepState;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->sleepState:Ljava/util/List;

    .line 91
    return-void
.end method

.method public setSleepTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "sleepTime"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->sleepTime:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setWakeup(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "wakeup"    # Ljava/lang/Integer;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->wakeup:Ljava/lang/Integer;

    .line 169
    return-void
.end method

.method public setWakeupDuration(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "wakeupDuration"    # Ljava/lang/Integer;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->wakeupDuration:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method public setWakeupTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "wakeupTime"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->wakeupTime:Ljava/lang/String;

    .line 60
    return-void
.end method
