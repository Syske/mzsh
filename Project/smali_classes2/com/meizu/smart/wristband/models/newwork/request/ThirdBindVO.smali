.class public Lcom/meizu/smart/wristband/models/newwork/request/ThirdBindVO;
.super Ljava/lang/Object;
.source "ThirdBindVO.java"


# instance fields
.field private bind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBind()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBindVO;->bind:Ljava/util/List;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBindVO;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setBind(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "bind":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/request/ThirdBinddata;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBindVO;->bind:Ljava/util/List;

    .line 26
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/ThirdBindVO;->username:Ljava/lang/String;

    .line 20
    return-void
.end method
