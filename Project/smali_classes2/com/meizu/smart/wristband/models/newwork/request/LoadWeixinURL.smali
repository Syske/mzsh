.class public Lcom/meizu/smart/wristband/models/newwork/request/LoadWeixinURL;
.super Ljava/lang/Object;
.source "LoadWeixinURL.java"


# instance fields
.field private mac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadWeixinURL;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/LoadWeixinURL;->mac:Ljava/lang/String;

    .line 17
    return-void
.end method
