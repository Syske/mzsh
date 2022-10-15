.class public Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;
.super Ljava/lang/Object;
.source "QqLoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserInfo"
.end annotation


# instance fields
.field private nickname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/QqLoginResponse$UserInfo;->nickname:Ljava/lang/String;

    .line 127
    return-void
.end method
