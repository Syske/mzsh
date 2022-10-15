.class public Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;
.super Ljava/lang/Object;
.source "HeartEntity.java"


# instance fields
.field private gt:Ljava/lang/String;

.field private gv:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->gt:Ljava/lang/String;

    return-object v0
.end method

.method public getGv()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->gv:I

    return v0
.end method

.method public setGt(Ljava/lang/String;)V
    .locals 0
    .param p1, "gt"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->gt:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setGv(I)V
    .locals 0
    .param p1, "gv"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->gv:I

    .line 16
    return-void
.end method
