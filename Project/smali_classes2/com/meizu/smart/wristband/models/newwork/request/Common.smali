.class public Lcom/meizu/smart/wristband/models/newwork/request/Common;
.super Ljava/lang/Object;
.source "Common.java"


# instance fields
.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/Common;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/Common;->username:Ljava/lang/String;

    .line 15
    return-void
.end method
