.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;
.super Ljava/lang/Object;
.source "CommitAim.java"


# instance fields
.field private sleepAim:Ljava/lang/String;

.field private sportAim:Ljava/lang/String;

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
.method public getSleepAim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->sleepAim:Ljava/lang/String;

    return-object v0
.end method

.method public getSportAim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->sportAim:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setSleepAim(Ljava/lang/String;)V
    .locals 0
    .param p1, "sleepAim"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->sleepAim:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setSportAim(Ljava/lang/String;)V
    .locals 0
    .param p1, "sportAim"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->sportAim:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitAim;->username:Ljava/lang/String;

    .line 17
    return-void
.end method
