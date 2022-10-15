.class public Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialBind;
.super Ljava/lang/Object;
.source "CommitSocialBind.java"


# instance fields
.field private socialID:Ljava/lang/String;

.field private socialType:Ljava/lang/String;

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
.method public getSocialID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialBind;->socialID:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialBind;->socialType:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialBind;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setSocialID(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialID"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialBind;->socialID:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSocialType(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialType"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialBind;->socialType:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSocialBind;->username:Ljava/lang/String;

    .line 17
    return-void
.end method
