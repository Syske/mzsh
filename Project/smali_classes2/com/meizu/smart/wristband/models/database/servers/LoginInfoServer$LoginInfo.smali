.class public Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
.super Ljava/lang/Object;
.source "LoginInfoServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginInfo"
.end annotation


# static fields
.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_ISAUTO:Ljava/lang/String; = "isAuto"

.field public static final KEY_ISFIRST:Ljava/lang/String; = "isFirst"

.field public static final KEY_PWD:Ljava/lang/String; = "pwd"


# instance fields
.field private account:Ljava/lang/String;

.field private pwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->account:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->pwd:Ljava/lang/String;

    .line 83
    return-void
.end method
