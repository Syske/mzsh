.class public Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;
.super Ljava/lang/Object;
.source "GoldRuledata.java"


# instance fields
.field private CHmsg:Ljava/lang/String;

.field private ENmsg:Ljava/lang/String;

.field private gevent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCHmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;->CHmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getENmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;->ENmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getGevent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;->gevent:Ljava/lang/String;

    return-object v0
.end method

.method public setCHmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "cHmsg"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;->CHmsg:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setENmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "eNmsg"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;->ENmsg:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setGevent(Ljava/lang/String;)V
    .locals 0
    .param p1, "gevent"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/newwork/response/GoldRuledata;->gevent:Ljava/lang/String;

    .line 17
    return-void
.end method
