.class public Lcom/meizu/smart/wristband/models/newwork/response/UsageData;
.super Ljava/lang/Object;
.source "UsageData.java"


# instance fields
.field daystep:Ljava/lang/String;

.field mileage:Ljava/lang/String;

.field usedays:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDaystep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/UsageData;->daystep:Ljava/lang/String;

    return-object v0
.end method

.method public getMileage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/UsageData;->mileage:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/UsageData;->usedays:Ljava/lang/String;

    return-object v0
.end method

.method public setDaystep(Ljava/lang/String;)V
    .locals 0
    .param p1, "daystep"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/UsageData;->daystep:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setMileage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mileage"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/UsageData;->mileage:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setUsedays(Ljava/lang/String;)V
    .locals 0
    .param p1, "usedays"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/UsageData;->usedays:Ljava/lang/String;

    .line 26
    return-void
.end method
