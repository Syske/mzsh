.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialShare;
.super Ljava/lang/Object;
.source "CommitSocialShare.java"


# instance fields
.field private gevent:Ljava/lang/String;

.field private socialID:Ljava/lang/String;

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
.method public getGevent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialShare;->gevent:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialShare;->socialID:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialShare;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setGevent(Ljava/lang/String;)V
    .locals 0
    .param p1, "gevent"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialShare;->gevent:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSocialID(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialID"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialShare;->socialID:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialShare;->username:Ljava/lang/String;

    .line 17
    return-void
.end method
