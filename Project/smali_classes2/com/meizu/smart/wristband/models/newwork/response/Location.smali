.class public Lcom/meizu/smart/wristband/models/newwork/response/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field private direct:I

.field private latitude:D

.field private longitude:D

.field private speed:F

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirect()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->direct:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->longitude:D

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->speed:F

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setDirect(I)V
    .locals 0
    .param p1, "direct"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->direct:I

    .line 37
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->latitude:D

    .line 29
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->longitude:D

    .line 21
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->speed:F

    .line 52
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/Location;->time:Ljava/lang/String;

    .line 45
    return-void
.end method
